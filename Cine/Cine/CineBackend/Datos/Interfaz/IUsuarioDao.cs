using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IUsuarioDao
    {
        int consultarUsuario(List<Parametro> lst);
    }
}
