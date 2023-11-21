using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IClienteDao
    {
        List<Cliente> ObtenerClientes(); //Read

        bool Crear(Cliente oCliente);   //CREATE-ALTA

        bool Actualizar(Cliente oCliente); //UPDATE-MODIFICACION

        bool Borrar(int numero);        //DELETE-BAJA


        List<Cliente> ObtenerClientePorFiltro(List<Parametro> lst);

        //List<Cliente> ObtenerClienteporID(int nro);
    }
}
