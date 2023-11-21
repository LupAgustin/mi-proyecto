using CineBackend.Datos;
using CineBackend.Fachada;
using CineBackend.Fachada.Interfaz;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CineWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        private IAplicacion app;

        public UsuarioController()
        {
            app = new FabricaServicioImp().CrearServicio();
        }

        [HttpPost("/Usuario/Entrar")]
        public IActionResult GetUsuario(List<Parametro> lst)
        {
            if (lst == null || lst.Count() == 0)
                return BadRequest("Se requieren parametros");
            return Ok(app.Usuario(lst));
        }
    }
}
