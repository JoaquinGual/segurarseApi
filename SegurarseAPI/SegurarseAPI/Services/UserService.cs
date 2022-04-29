using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using SegurarseAPI.Models;

namespace Services
{
    public class UserService : IUserInterface
    {
        public async Task<Usuario> AddUser(string nombre, string apellido)
        {
            await using (var context = new SegurarseContext())
            {
                Usuario u = new Usuario();
                u.Nombre = nombre;
                u.Apellido = apellido;
                u.Estado = true;

                context.Usuarios.Add(u);
                context.SaveChanges();
                return u;
            }
        }

        public async Task<List<Usuario>> GetActiveUsers()
        {
           await using (var context = new SegurarseContext())
           {
                List<Usuario> LU = context.Usuarios.Where(u => u.Estado == true).ToList();
                return LU;
           }
        }

        public async Task<string> GetBase64(string nombre, string apellido)
        {
            string baseConcat = "";
            try
            {
                var plainTextBytes = Encoding.UTF8.GetBytes(nombre + apellido);
                baseConcat = Convert.ToBase64String(plainTextBytes);
                return baseConcat;

            }
            catch (Exception)
            {
                baseConcat = "No se puedo convertir a Base64";
                return baseConcat;
            }
        }
       

        async public Task<List<Usuario>> GetInactiveUsers()
        {
            await using (var context = new SegurarseContext())
            {
                List<Usuario> LU = context.Usuarios.Where(u => u.Estado == false).ToList();
                return LU;
            }
        }

        

        public async  Task<string> SetState(int idUsuario)
        {
            await using (var context = new SegurarseContext())
            {
                string respuesta = "";
                try
                {
                    Usuario u = context.Usuarios.Where(u => u.IdUsuario == idUsuario).First();
                    if (u != null)
                    {
                        if (u.Estado == true)
                        {
                            u.Estado = false;
                            respuesta = "Usuario dado de baja correctamente";
                            context.SaveChanges();
                        }
                        else
                        {
                            u.Estado = true;
                            respuesta = "Usuario dado de alta Correctamente";
                            context.SaveChanges();
                        }
                        
                    }
                }
                catch (Exception)
                {

                    respuesta = "No se encontro el Usuario";
                }
                return respuesta;




            }
        }

        public async Task<string> PostBase64(Persona p , string Authorization)
        {
            var request = Authorization;

            string baseConcat = "";
            string respuesta = "";


            var plainTextBytes = Encoding.UTF8.GetBytes(p.Nombre + p.Apellido);
            baseConcat = Convert.ToBase64String(plainTextBytes);

            if (baseConcat == request)
            {
                respuesta = "El nombre y apellido coincide con el Base64";
            }
            else
            {
                respuesta = "El base nombre y apellido no coincide con el base64";
            }
            return respuesta;
        }

        
    }
}
