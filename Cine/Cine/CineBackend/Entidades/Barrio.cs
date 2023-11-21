using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Barrio
    {
        public int Id_Barrio { get; set; }


        public string Nombre { get; set; }

        public Barrio(int num, string barrio)
        {
            Id_Barrio = num;
            Nombre = barrio;
        }


        public override string ToString()
        {
            return Id_Barrio + ", " + Nombre;
        }
    }
}
