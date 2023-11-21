using CineBackend.Datos.Interfaz;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Implementacion
{
    public class UsuarioDao : IUsuarioDao
    {
        public int consultarUsuario(List<Parametro> lst)
        {
            int resultado = 0;

            DataTable tabla = HelperDao.ObtenerInstancia().Consultar("sp_consultar_usuarios", lst);
            resultado = tabla.Rows.Count;
            return resultado;
        }
    }
}
