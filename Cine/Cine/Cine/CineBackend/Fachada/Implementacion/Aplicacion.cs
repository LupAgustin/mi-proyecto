using CineBackend.Datos;
using CineBackend.Datos.Implementacion;
using CineBackend.Datos.Interfaz;
using CineBackend.Entidades;
using CineBackend.Fachada.Interfaz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Fachada.Implementacion
{
    public class Aplicacion : IAplicacion
    {
        private IClienteDao cdao;
        private IReservaDao rdao;

        private IBarrioDao badao;

        private IButacaDao budao;

        private IFuncionDao fudao;

        private IPeliculaDao pdao;

        public Aplicacion()
        {
            cdao = new Datos.Implementacion.ClienteDao();
            rdao = new Datos.Implementacion.ReservaDao();
            badao = new Datos.Implementacion.BarrioDao();
            budao = new Datos.Implementacion.ButacaDao();
            fudao = new Datos.Implementacion.FuncionDao();
            pdao = new Datos.Implementacion.PeliculaDao();
        }

        public bool SaveReserva(Reserva oReserva)
        {
            return rdao.Crear(oReserva);
        }

        public bool EditarCliente(Cliente oCLiente)
        {
            return cdao.Actualizar(oCLiente);
        }

        public bool EliminarCliente(int numero)
        {
            return cdao.Borrar(numero);
        }

        public bool InsertarCliente(Cliente oCliente)
        {
            return cdao.Crear(oCliente);
        }

        public List<Cliente> TraerClientePorFiltro(List<Parametro> lst)
        {
            return cdao.ObtenerClientePorFiltro(lst);
        }

        public List<Cliente> GetClientes()
        {
            return cdao.ObtenerClientes();
        }

        public List<Barrio> TraerBarrios()
        {
            return badao.ObtenerBarrios();
        }

        public List<Butaca> TraerButaca(List<Parametro> lst)
        {
            return budao.ObtenerButaca(lst);
        }

        public List<Funcion> TraerFunciones(List<Parametro> lst)
        {
            return fudao.ObtenerFunciones(lst);
        }


        public List<Pelicula> TraerPeliculas()
        {
            return pdao.ObtenerPeliculas();
        }

        public string TraerUnaPelicula(int id_Funcion)
        {
            return fudao.ObtenerSuPelicula(id_Funcion);
        }

        public Pelicula ObtenerPeliXFiltro(string text)
        {
            return pdao.ObtenerPeliculasXNombre(text);
        }

        public Funcion ObtenerFuncionXFiltro(DateTime hora)
        {
            return fudao.ObtenerFuncionXFiltro(hora);
        }

        public int ObternerCod(List<Parametro> lst)
        {
            return rdao.ObtenerCod(lst);
        }

        
    }
}
