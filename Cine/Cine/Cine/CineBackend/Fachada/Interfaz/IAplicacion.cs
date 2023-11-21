using CineBackend.Datos;
using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Fachada.Interfaz
{
    public interface IAplicacion
    {
        //Insertar CLientes                 C   REATE
        bool InsertarCliente(Cliente oCliente);

        //Obtener Clientes                  R   EAD
        List<Cliente> GetClientes();

        //Obtener Clientes con filtro       R   EAD X2  
        List<Cliente> TraerClientePorFiltro(List<Parametro> lst);

        //Editar Clientes                   U   PDATE
        bool EditarCliente(Cliente oCLiente);
        //Eliminar Clientes                 D   ELETE
        bool EliminarCliente(int numero);
        //Insertar Transaccion          
        bool SaveReserva(Reserva oReserva);

        List<Barrio> TraerBarrios();

        List<Butaca> TraerButaca(List<Parametro> lst);

        List<Funcion> TraerFunciones(List<Parametro> lst);
        List<Pelicula> TraerPeliculas();
        string TraerUnaPelicula(int id_Funcion);
        int ObternerCod(List<Parametro> lst);
        Pelicula ObtenerPeliXFiltro(string text);
        Funcion ObtenerFuncionXFiltro(DateTime hora);
    }
}
