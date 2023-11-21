using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IReservaDao
    {
        //List<Cliente> ObtenerClientes();

        bool Crear(Reserva oReserva);
        int ObtenerCod(List<Parametro> lst);

        //bool Actualizar(Reserva oReserva);

        //bool Borrar(int numero);


        //List<Reserva> ObtenerResrvaPorFiltros(DateTime desde, DateTime hasta, Cliente cliente);

        //Reserva ObtenerReservaPorNro(int nro);









        //List<Cliente> ObtenerClientes();

        //bool Crear(Reserva oReserva);

        //bool Actualizar(Reserva oReserva);

        //bool Borrar(int numero);


        //List<Reserva> ObtenerResrvaPorFiltros(DateTime desde, DateTime hasta, Cliente cliente);

        //Reserva ObtenerReservaPorNro(int nro);







    }
}
