using CineBackend.Fachada.Interfaz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Fachada
{
    public abstract class FabricaServicio
    {
        public abstract IAplicacion CrearServicio();
    }
}
