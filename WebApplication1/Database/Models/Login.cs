using System;
using System.Text;
using System.Linq;
using System.Collections.Generic;

namespace Database.Models
{
    public class Login
    {
        public int IdLogin { get; set; }
        public string NmUsuario { get; set; }
        public string DsSenha { get; set; }
        public DateTime DtUltimoLogin { get; set; }
    }
}