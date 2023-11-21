using CineBackend.Fachada.Implementacion;
using CineBackend.Fachada.Interfaz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Fachada
{
    public class FabricaServicioImp : FabricaServicio
    {
        public override IAplicacion CrearServicio()
        {
            return new Aplicacion();
        }
    }
}
