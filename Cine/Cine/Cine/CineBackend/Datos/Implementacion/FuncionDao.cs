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
    internal class FuncionDao : IFuncionDao
    {
        public List<Funcion> ObtenerFunciones(List<Parametro> lst)
        {
            

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_Funciones", lst);


            List<Funcion> lFunciones = new List<Funcion>();
            foreach (DataRow fila in tabla.Rows)
            {
                int id = int.Parse(fila["id_funcion"].ToString());
                DateTime horario = Convert.ToDateTime(fila["Horario"].ToString());
                Funcion f = new Funcion(id, horario);
                lFunciones.Add(f);
            }
            return lFunciones;
        }

        public Funcion ObtenerFuncionXFiltro(DateTime h)
        {
            List<Parametro> lParametros = new List<Parametro>();
            lParametros.Add(new Parametro("@hora", h));

            Funcion fuci = new Funcion();

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_FuncionsxFiltro", lParametros);
            List<Funcion> lFunciones = new List<Funcion>();

            foreach (DataRow fila in tabla.Rows)
            {
                Funcion f = new Funcion();
                f.Id_Funcion= int.Parse(fila["id_funcion"].ToString());
                f.Horario = Convert.ToDateTime(fila["Horario"].ToString());
                lFunciones.Add(f);
            }

            fuci = lFunciones[0];
            return fuci;
        }

        public string ObtenerSuPelicula(int id_funcion)
        {
            throw new NotImplementedException();
        }
    }
}
