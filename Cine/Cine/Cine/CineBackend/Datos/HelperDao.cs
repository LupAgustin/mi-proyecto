using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos
{
    public class HelperDao
    {
        private static HelperDao instancia;
        private SqlConnection conexion;

        private HelperDao()
        {
            //conexion = new SqlConnection(Properties.Resources.CadenaConexion);
            conexion = new SqlConnection(@"Data Source = AGUSTINLUPARIA\SQLEXPRESS; Initial Catalog = CinePolis2; Integrated Security = True");

        }
        public static HelperDao ObtenerInstancia()
        {
            if (instancia == null)
            {
                instancia = new HelperDao();
            }
            return instancia;
        }
        public SqlConnection ObtenerConexion()
        {
            return conexion;
        }

        //Traer Consulta sin nada

        public DataTable Consultar(string nombreSP)
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = nombreSP;
            DataTable tabla = new DataTable();
            tabla.Load(comando.ExecuteReader());
            conexion.Close();
            return tabla;
        }



        public DataTable Consultar(string nombreSP, List<Parametro> lParametros)
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = nombreSP;

            foreach (Parametro p in lParametros)
            {
                if (p.Valor != "" && p.Valor != null)
                    comando.Parameters.AddWithValue(p.Nombre, p.Valor.ToString());
                else
                    comando.Parameters.AddWithValue(p.Nombre, DBNull.Value);
            }



            DataTable tabla = new DataTable();
            tabla.Load(comando.ExecuteReader());
            conexion.Close();
            return tabla;
        }


        //Consultar Proximo Numero de reserva 
        public int ConsultarEscalar(string nombreSP, string nombreParamOut)
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = nombreSP;
            SqlParameter parametro = new SqlParameter();
            parametro.ParameterName = nombreParamOut;
            parametro.SqlDbType = SqlDbType.Int;
            parametro.Direction = ParameterDirection.Output;

            comando.Parameters.Add(parametro);
            comando.ExecuteNonQuery();

            conexion.Close();

            return (int)parametro.Value;
        }

        
    }



















}