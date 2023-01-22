using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.Models
{
    public class UsuarioModel
    {

        public int _IdUsuario { get; set; }
        public string _Usuario { get; set; }
        public string _Clave { get; set; }
        public int _Status { get; set; }
        public int _Rol { get; set; }

    }
}