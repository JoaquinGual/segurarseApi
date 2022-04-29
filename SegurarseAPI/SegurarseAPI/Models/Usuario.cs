using System;
using System.Collections.Generic;

#nullable disable

namespace SegurarseAPI.Models
{
    public partial class Usuario
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public bool Estado { get; set; }
    }
}
