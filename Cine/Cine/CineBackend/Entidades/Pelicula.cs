using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Pelicula
    {
        public string Nombre { get; set; }

        public int Id_Pelicula { get; set; }


        public Pelicula(string nom, int id)
        {
            Nombre = nom;
            Id_Pelicula = id;
        }

        public Pelicula()
        {
            Nombre = string.Empty;
            Id_Pelicula = 0;
        }

        public override string ToString()
        {
            return Id_Pelicula + ", " + Nombre;
        }
    }
}
