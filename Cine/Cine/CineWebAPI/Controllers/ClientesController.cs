using CineBackend.Datos;
using CineBackend.Entidades;
using CineBackend.Fachada;
using CineBackend.Fachada.Interfaz;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CineWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientesController : ControllerBase
    {
        private IAplicacion app;

        public ClientesController()
        {
            app = new FabricaServicioImp().CrearServicio();
        }

        [HttpPost("/Clientes/Consultar_Clientes")]
        public IActionResult GetClientesFiltro(List<Parametro> lst)
        {
            if (lst == null || lst.Count() == 0)
                return BadRequest("Se requieren parametros");
            return Ok(app.TraerClientePorFiltro(lst));
        }

        [HttpGet("/Clientes/Traer_Barrios")]
        public IActionResult GetBarrios()
        {
            List<Barrio> lst = null;
            try
            {
                lst = app.TraerBarrios();
                return Ok(lst);
            }
            catch (Exception)
            {
                return StatusCode(500, "Error interno");
            }
        }


        [HttpPost("/Clientes/Cargar_Cliente")]
        public IActionResult PostCliente(Cliente oCliente)
        {
            try
            {
                if (oCliente != null)
                {
                    bool result = app.InsertarCliente(oCliente);
                    return Ok(result);
                }
                return BadRequest("Cliente invalido");
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno");
            }
        }

        [HttpPost("/Clientes/Actualizar_Cliente")]
        public IActionResult PostActCliente(Cliente oCliente)
        {
            try
            {
                if (oCliente != null)
                {
                    bool result = app.EditarCliente(oCliente);
                    return Ok(result);
                }
                return BadRequest("Cliente invalido");
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno");
            }

        }



        [HttpPost("/Clientes/Eliminar_Cliente")]
        public IActionResult PostElimCliente(Cliente oCliente)
        {
            try
            {
                if (oCliente != null)
                {
                    bool result = app.EliminarCliente(oCliente.Id_Cliente);
                    return Ok(result);
                }
                return BadRequest("Cliente invalido");
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno");
            }

        }






    }
}
