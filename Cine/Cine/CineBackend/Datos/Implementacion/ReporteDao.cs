using CineBackend.Datos.Interfaz;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Implementacion
{
    public class ReporteDao : IReporteDao
    {
        public DataTable Report(List<Parametro> lst)
        {
            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("sp_funciones_por_peli", lst);
            return tabla;
        }
    }
}
