using Microsoft.AspNetCore.Mvc;

namespace InventoryApp.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EnvController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public EnvController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet("properties")]
        public ActionResult Index()
        {
            return Ok(_configuration.AsEnumerable().ToList());
        }
    }
}
