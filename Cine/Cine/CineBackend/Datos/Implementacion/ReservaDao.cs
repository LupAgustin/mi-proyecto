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
    public class ReservaDao : IReservaDao
    {
        public bool Crear(Reserva oReserva)
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

                comando.CommandText = "SP_INSERTAR_MAESTRO";
                comando.Parameters.AddWithValue("@cliente", oReserva.oCliente.Id_Cliente);
                comando.Parameters.AddWithValue("@vto", oReserva.HoraVto);


                SqlParameter parametro = new SqlParameter();
                parametro.ParameterName = "@id_reserva";
                parametro.SqlDbType = SqlDbType.Int;
                parametro.Direction = ParameterDirection.Output;
                comando.Parameters.Add(parametro);

                comando.ExecuteNonQuery();

                int reservaNro = (int)parametro.Value;
                int detalleNro = 1;
                SqlCommand cmdDetalle;
                SqlCommand cmdEstado;

                foreach (DetalleReservas dr in oReserva.ReservaList)
                {
                    cmdDetalle = new SqlCommand();
                    cmdDetalle.Connection = conexion;
                    cmdDetalle.Transaction = t;
                    cmdDetalle.CommandType = CommandType.StoredProcedure;
                    cmdDetalle.CommandText = "SP_INSERTAR_DETALLE";
                    cmdDetalle.Parameters.AddWithValue("@reserva_nro", reservaNro);
                    cmdDetalle.Parameters.AddWithValue("@detalle", detalleNro);
                    cmdDetalle.Parameters.AddWithValue("@id_funcionxButaca", dr.Id_FuncionxButaca);


                    cmdEstado = new SqlCommand();
                    cmdEstado.Connection = conexion;
                    cmdEstado.Transaction = t;
                    cmdEstado.CommandType = CommandType.StoredProcedure;
                    cmdEstado.CommandText = "pa_cambiar_Estado";
                    cmdEstado.Parameters.AddWithValue("@id_FxB", dr.Id_FuncionxButaca);

                    cmdDetalle.ExecuteNonQuery();
                    cmdEstado.ExecuteNonQuery();
                    detalleNro++;
                }
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

        public int ObtenerCod(List<Parametro> lParametro)
        {
            
            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_id_FxB", lParametro);

            List<int> lCodigos = new List<int>();
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["id_funcionxbutaca"].ToString());
                lCodigos.Add(codigo);
            }

            int id_fxb = lCodigos[0];

            return id_fxb;

        }
    }
}
