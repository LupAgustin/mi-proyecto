using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IFuncionDao
    {
        List<Funcion> ObtenerFunciones(List<Parametro> lst);

        string ObtenerSuPelicula(int id_funcion);

        Funcion ObtenerFuncionXFiltro(DateTime h);
    }
}
