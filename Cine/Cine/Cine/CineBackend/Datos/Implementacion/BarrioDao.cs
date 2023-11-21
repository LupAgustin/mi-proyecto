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
    internal class BarrioDao : IBarrioDao
    {
        public List<Barrio> ObtenerBarrios()
        {
            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_Barrios");
            List<Barrio> lBarrio = new List<Barrio>();
            foreach (DataRow fila in tabla.Rows)
            {
                int id = int.Parse(fila["id_barrios"].ToString());
                string nombre = fila["barrio"].ToString();
                Barrio b = new Barrio(id, nombre);
                lBarrio.Add(b);
            }
            return lBarrio;
        }
    }
}
