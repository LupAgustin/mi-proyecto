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
    internal class PeliculaDao : IPeliculaDao
    {
        public List<Pelicula> ObtenerPeliculas()
        {
            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_Peliculas");
            List<Pelicula> lPeliculas = new List<Pelicula>();
            foreach (DataRow fila in tabla.Rows)
            {
                int id = int.Parse(fila["id_pelicula"].ToString());
                string nombre = fila["nom_pelicula"].ToString();
                Pelicula p = new Pelicula(nombre, id);
                lPeliculas.Add(p);
            }
            return lPeliculas;
        }

        public Pelicula ObtenerPeliculasXNombre(string nombre)
        {
            List<Parametro> lParametros = new List<Parametro>();
            lParametros.Add(new Parametro("@nombre", nombre));

            Pelicula peli = new Pelicula();

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("pa_consultar_PeliculasxFiltro", lParametros);
            List<Pelicula> lPelicula = new List<Pelicula>();

            foreach (DataRow fila in tabla.Rows)
            {
                Pelicula p = new Pelicula();
                p.Id_Pelicula = int.Parse(fila["id_pelicula"].ToString());
                p.Nombre = fila["nom_pelicula"].ToString();
                lPelicula.Add(p);
            }
            peli = lPelicula[0];
            return peli;
        }
    }
}
