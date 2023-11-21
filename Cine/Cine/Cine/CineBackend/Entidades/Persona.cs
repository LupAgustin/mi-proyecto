using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public abstract class Persona
    {
        public int Id_Persona { get; set; }

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Sexo { get; set; }
              
        public string Nro_doc { get; set; }
              
        public DateTime Fecha_nac { get; set; } 
                                        
        public string Direccion { get; set; } 
        public int Id_Barrio { get; set; }

        public Persona()
        {
            Id_Persona= 0;
            Nombre = String.Empty;
            Apellido = String.Empty;
            Sexo = String.Empty;
            Nro_doc = String.Empty;
            Fecha_nac = DateTime.Today;
            Direccion = String.Empty;
            Id_Barrio=0;

        }

        public Persona (int Id_Persona, string Nombre,string Apellido, string Sexo,string Nro_doc, DateTime Fecha_nac, string Direccion, int Id_Barrio)
        {   this.Id_Persona= Id_Persona;
            this.Nombre = Nombre; 
            this.Apellido = Apellido;
            this.Sexo = Sexo;
            this.Nro_doc = Nro_doc;
            this.Fecha_nac = Fecha_nac;
            this.Direccion = Direccion;
            this.Id_Barrio=Id_Barrio;

        }


        public override string ToString()
        {
            return Nombre + ", " + Apellido;
        }




    }
}
