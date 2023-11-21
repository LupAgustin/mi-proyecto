using CineBackend.Datos.Interfaz;
using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;

namespace CineBackend.Datos.Implementacion 
{

    public class ClienteDao : IClienteDao
    {
        public bool Borrar(int numero)
        {
            bool resultado = true;
            SqlConnection conexion = HelperDao.ObtenerInstancia().ObtenerConexion();

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "SP_ELIMINAR_CLIENTE";
                comando.Parameters.AddWithValue("@cliente_nro", numero);

                comando.ExecuteNonQuery();


            }
            catch (global::System.Exception)
            {

                resultado = false;
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                    conexion.Close();
            }

            return resultado;

        }

        public bool Crear(Cliente oCliente)
        {
            bool resultado = true;
            SqlConnection conexion = HelperDao.ObtenerInstancia().ObtenerConexion();
            SqlTransaction tc = null;

            try
            {
                conexion.Open();
                tc = conexion.BeginTransaction();
                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                comando.Transaction = tc;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "SP_INSERTAR_PERSONA";
                comando.Parameters.AddWithValue("@nombre", oCliente.Nombre);
                comando.Parameters.AddWithValue("@apellido", oCliente.Apellido);
                comando.Parameters.AddWithValue("@sexo", oCliente.Sexo);
                comando.Parameters.AddWithValue("@nro_doc", oCliente.Nro_doc);
                comando.Parameters.AddWithValue("@fecha_nac", oCliente.Fecha_nac);
                comando.Parameters.AddWithValue("@direc", oCliente.Direccion);
                comando.Parameters.AddWithValue("@id_barrio", oCliente.Id_Barrio);



                SqlParameter parametro = new SqlParameter();
                parametro.ParameterName = "@persona_nro";
                parametro.SqlDbType = SqlDbType.Int;
                parametro.Direction = ParameterDirection.Output;
                comando.Parameters.Add(parametro);

                comando.ExecuteNonQuery();

                int personaNro = (int)parametro.Value;

                SqlCommand cmdCliente;
                cmdCliente = new SqlCommand("SP_INSERTAR_CLIENTE", conexion, tc);
                cmdCliente.CommandType = CommandType.StoredProcedure;

                cmdCliente.Parameters.AddWithValue("@id_persona", personaNro);
                cmdCliente.Parameters.AddWithValue("@act", oCliente.Activo);

                cmdCliente.ExecuteNonQuery();
                tc.Commit();
            }
            catch
            {
                if (tc != null)
                {
                    tc.Rollback();
                }

                resultado = false;
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                    conexion.Close();
            }

            return resultado;

        }



        public List<Cliente> ObtenerClientes()
        {
            List<Cliente> lClientes = new List<Cliente>();
            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("SP_CONSULTAR_CLIENTES");



            foreach (DataRow fila in tabla.Rows)
            {
                int numeroC = int.Parse(fila["id_cliente"].ToString());
                string act = "";
                int numeroP = int.Parse(fila["id_persona"].ToString());
                string nombre = fila["nombre"].ToString();
                string apellido = fila["apellido"].ToString();
                string sexo = fila["sexo"].ToString();
                string documento = fila["nro_doc"].ToString();
                DateTime fecha_nac = Convert.ToDateTime(fila["fecha_nac"].ToString());
                string direccion = fila["direccion"].ToString();
                int barrio = int.Parse(fila["id_barrio"].ToString());

                Cliente c = new Cliente(numeroC, act, numeroP, nombre, apellido, sexo, documento, fecha_nac, direccion, barrio);
                c.Activo = "s";
                lClientes.Add(c);
            }
            return lClientes;
        }





        public bool Actualizar(Cliente oCliente)
        {
            bool resultado = true;
            SqlConnection conexion = HelperDao.ObtenerInstancia().ObtenerConexion();
            SqlTransaction t = null;

            try
            {
                conexion.Open();
                t = conexion.BeginTransaction();
                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                comando.Transaction = t;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "pa_Actualizar_Persona";
                comando.Parameters.AddWithValue("@id_persona", oCliente.Id_Persona);
                comando.Parameters.AddWithValue("@nombre", oCliente.Nombre);
                comando.Parameters.AddWithValue("@apellido", oCliente.Apellido);
                comando.Parameters.AddWithValue("@sexo", oCliente.Sexo);
                comando.Parameters.AddWithValue("@nro_doc", oCliente.Nro_doc);
                comando.Parameters.AddWithValue("@fecha_nac", oCliente.Fecha_nac);
                comando.Parameters.AddWithValue("@direc", oCliente.Direccion);
                comando.Parameters.AddWithValue("@id_barrio", oCliente.Id_Barrio);

                comando.ExecuteNonQuery();


                t.Commit();
            }
            catch
            {
                if (t != null)
                    t.Rollback();
                resultado = false;
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                    conexion.Close();
            }

            return resultado;
        }


        public List<Cliente> ObtenerClientePorFiltro(List<Parametro> lst)
        {
            List<Cliente> lClientes = new List<Cliente>();

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("PA_CONSUL_CLIENTES_PARAMETROS", lst);



            foreach (DataRow fila in tabla.Rows)
            {
                int numeroC = int.Parse(fila["id_cliente"].ToString());
                string act = "";
                int numeroP = int.Parse(fila["id_persona"].ToString());
                string nombre = fila["nombre"].ToString();
                string apellido = fila["apellido"].ToString();
                string sexo = fila["sexo"].ToString();
                string documento = fila["nro_doc"].ToString();
                DateTime fecha_nac = Convert.ToDateTime(fila["fecha_nac"].ToString());
                string direccion = fila["direccion"].ToString();
                int barrio = int.Parse(fila["id_barrio"].ToString());

                Cliente c = new Cliente(numeroC,act, numeroP, nombre, apellido, sexo, documento, fecha_nac, direccion, barrio);
                c.Activo = "s";
                lClientes.Add(c);
            }
            return lClientes;
        }
    }
}
