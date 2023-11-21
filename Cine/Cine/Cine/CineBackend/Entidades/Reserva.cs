using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Reserva
    {
        public int NroReserva { get; set; }
        public DateTime FechaAlta { get; set; }
        public Cliente oCliente { get; set; }
        public DateTime HoraVto { get; set; }
        public DateTime FechaBaja { get; set; }
        public List<DetalleReservas> ReservaList { get; set; }

        public Reserva()
        {
            ReservaList = new List<DetalleReservas>();
        }

        public DateTime ObtenerVto(DateTime fecha_funcion)
        {
            //La reserva vence 2 horas antes del horario de la funcion
            DateTime fecha_vto = fecha_funcion.AddHours(-2);

            return fecha_vto;
        }


        public void AgregarDetalle(DetalleReservas detalle)
        {
            ReservaList.Add(detalle);
        }
        public void QuitarDetalle(int posicion)
        {
            ReservaList.RemoveAt(posicion);
        }



    }
}
