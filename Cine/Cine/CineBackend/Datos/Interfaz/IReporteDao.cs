using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IReporteDao
    {
        DataTable Report(List<Parametro> lst);
    }
}
