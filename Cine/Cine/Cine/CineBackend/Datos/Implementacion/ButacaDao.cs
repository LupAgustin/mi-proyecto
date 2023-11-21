using CineBackend.Datos.Interfaz;
using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Implementacion
{
    internal class ButacaDao : IButacaDao
    {
        public List<Butaca> ObtenerButaca(List<Parametro> lst)
        {
            

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_Butacas", lst);
            List<Butaca> lButaca = new List<Butaca>();
            foreach (DataRow fila in tabla.Rows)
            {
                int id = int.Parse(fila["id_butaca"].ToString());
                string linea = fila["fila"].ToString();
                int numero = int.Parse(fila["nro_butaca"].ToString());
                Butaca b = new Butaca(id, linea, numero);
                lButaca.Add(b);
            }
            return lButaca;
        }
    }
}
