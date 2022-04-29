using SegurarseAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interfaces
{
    public interface IUserInterface
    {
        Task<Usuario> AddUser(string nombre, string apellido);

        Task<List<Usuario>> GetActiveUsers();

        Task<List<Usuario>> GetInactiveUsers();
        Task<string> SetState(int idUsuario);

        Task<string> GetBase64(string nombre, string apellido);

        Task<string> PostBase64(Persona p, string Authorization);
    }
}
