using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Models
{
    public class LoginResponse
    {
        public int IdLogin { get; set; }
        public string NmUsuario { get; set; }
        public string DsSenha { get; set; }
        public DateTime DtNascimento { get; set; }
    }
}