using Interfaces;
using Microsoft.AspNetCore.Mvc;
using SegurarseAPI.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SegurarseAPI.Controllers
{
    [Route("Segurarse")]
    public class UserController : Controller
    {


        private readonly IUserInterface _userInterface;
        public UserController(IUserInterface userInterface)
        {
            _userInterface = userInterface;
        }

        [Route("[controller]/AddUser")]
        [HttpPost]
        public async Task<IActionResult> AddUser(string nombre, string apellido)
        {

            try
            {
                Usuario u = await _userInterface.AddUser(nombre, apellido);
                return Ok(u);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }
        }
        [Route("[controller]/GetInactiveUsers")]
        [HttpGet]
        public async Task<IActionResult> GetInactiveUsers()
        {

            try
            {
                List<Usuario> LU = await _userInterface.GetInactiveUsers();
                return Ok(LU);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }
        }
        [Route("[controller]/GetActiveUsers")]
        [HttpGet]
        public async Task<IActionResult> GetActiveUsers()
        {

            try
            {
                List<Usuario> LU = await _userInterface.GetActiveUsers();
                return Ok(LU);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }
        }
        [Route("[controller]/SetState")]
        [HttpPut]
        public async Task<IActionResult> SetState(int idUsuario)
        {

            try
            {
                string respuesta = await _userInterface.SetState(idUsuario);

                return Ok(respuesta);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }
        }
        [Route("[controller]/GetBase64")]
        [HttpGet]
        public async Task<IActionResult> GetBase64(string nombre, string apellido)
        {

            try
            {
                string respuesta = await _userInterface.GetBase64(nombre, apellido);

                return Ok(respuesta);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }
        }

        [Route("[controller]/PostBase64")]
        [HttpPost]
        public async Task<IActionResult> PostBase64([FromBody] Persona p, [FromHeader] string Authorization)
        {

            try
            {
                string respuesta = await _userInterface.PostBase64(p, Authorization);

                return Ok(respuesta);
            }
            catch (Exception)
            {
                return NotFound("No responde el Servidor");
            }


        }

    }
}
