using System;
using System.Text;
using System.Linq;
using System.Collections.Generic;

namespace Database.Models
{
    public class Login
    {
        //------------------tb_login----------------------
        public int IdLogin { get; set; }
        public string NmUsuario { get; set; }
        public string DsSenha { get; set; }
        public DateTime DtNascimento { get; set; }
        //------------------tb_cliente--------------------
        public string NmCompleto { get; set; }
        public string DsCpf { get; set; }
        public string DsEmail { get; set; }
        public DateTime DtUltimoLogin { get; set; }
    }
}