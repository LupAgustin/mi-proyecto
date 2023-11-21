using CineBackend.Datos;
using CineBackend.Entidades;
using CineBackend.Fachada;
using CineBackend.Fachada.Implementacion;
using CineBackend.Fachada.Interfaz;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CineWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReservaController : ControllerBase
    {
        private IAplicacion app;

        public ReservaController()
        {
            app = new FabricaServicioImp().CrearServicio();
        }


        // GET: api/<ClienteController>
        [HttpGet("/Reserva/Traer_Clientes")]
        public IActionResult GetClientes()
        {
            List<Cliente> lst = null;
            try
            {
                lst = app.GetClientes();
                return Ok(lst);
            }
            catch (Exception)
            {
                return StatusCode(500, "Error interno");
            }
        }

        [HttpGet("/Reservas/Traer_Peliculas")]
        public IActionResult GetPeliculas()
        {
            List<Pelicula> lst = null;
            try
            {
                lst = app.TraerPeliculas();
                return Ok(lst);
            }
            catch (Exception)
            {
                return StatusCode(500, "Error interno");
            }
        }

        [HttpPost("/Reserva/Traer_Peliculas_Filtradas")]
        public IActionResult GetPeliculasFiltro(string peli)
        {
            if (peli == null || peli == string.Empty)
                return BadRequest("Se requieren parametros");
            return Ok(app.ObtenerPeliXFiltro(peli));
        }


        [HttpPost("/Reserva/Traer_Funciones")]
        public IActionResult GetFunciones(List<Parametro> lst)
        {
            
            if (lst == null || lst.Count() == 0)
                return BadRequest("Se requieren parametros");
            return Ok(app.TraerFunciones(lst));
        }


        [HttpPost("/Reserva/Traer_Butacas")]
        public IActionResult GetButacas(List<Parametro> lst)
        {

            if (lst == null || lst.Count() == 0)
                return BadRequest("Se requieren parametros");
            return Ok(app.TraerButaca(lst));
        }

        [HttpPost("/Reserva/Traer_FunBut")]
        public IActionResult GetFuncionbut(List<Parametro> lst)
        {

            if (lst == null || lst.Count() == 0)
                return BadRequest("Se requieren parametros");
            return Ok(app.ObternerCod(lst));
        }



        // POST api/<ReservaController>
        [HttpPost("/Reserva/Cargar_Reserva")]
        public IActionResult PostReserva(Reserva oReserva)
        {
            try
            {
                if (oReserva != null)
                {
                    bool result = app.SaveReserva(oReserva);
                    return Ok(result);
                }                    
                return BadRequest("Reserva invalida");
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno");
            }
        }

        //// PUT api/<ReservaController>/5
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody] string value)
        //{
        //}

        //// DELETE api/<ReservaController>/5
        //[HttpDelete("{id}")]
        //public void Delete(int id)
        //{
        //}
    }
}
