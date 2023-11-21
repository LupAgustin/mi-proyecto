using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Cliente: Persona
    {        
        public int Id_Cliente { get; set; }
        public string Activo { get; set; }
       
        

        public Cliente(int id, string act, int id_Persona, string Nombre, string Apellido, string Sexo, string Nro_doc,
            DateTime Fecha_nac, string Direccion, int Id_Barrio) :
            base(id_Persona, Nombre, Apellido, Sexo, Nro_doc,Fecha_nac, Direccion, Id_Barrio)
                    
        {   
            this.Id_Cliente = id;
            this.Activo = act;
            
        }
    public Cliente():base()
        {
            Id_Cliente= 0;
            Activo = "S";
           
        }

        public override string ToString()
        {
            return Id_Cliente + ", " + base.ToString();
        }

    }
}
