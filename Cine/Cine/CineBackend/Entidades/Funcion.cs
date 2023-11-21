using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Funcion
    {
        public int Id_Funcion { get; set; }

        public DateTime Horario { get; set; }

        //public Pelicula oPelicula { get; set; } No es necesario



        public Funcion(int id, DateTime hora)
        {
            Id_Funcion = id;
            Horario = hora;
            //oPelicula= peli;

        }

        public Funcion()
        {
            Id_Funcion = 0;
            Horario = DateTime.Today;
        }

        public override string ToString()
        {
            return Id_Funcion + " " + Horario.ToString();
        }
    }
}
