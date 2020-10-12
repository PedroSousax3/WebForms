using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database.DAO.Login;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            LoginDAO FunctionLoginDAO = new LoginDAO();
            Database.Models.Login user = new Database.Models.Login();

            user.NmCompleto = TextBox1.Text.ToString();
            user.DsEmail = TextBox2.Text.ToString();
            user.DsCpf = TextBox3.Text.ToString();
            user.DtNascimento = DateTime.Parse(Calendar1.SelectedDate.ToString());

            user.NmUsuario = TextBox4.Text.ToString();
            user.DsSenha = TextBox5.Text.ToString();
            user.DtUltimoLogin = DateTime.Now;

            FunctionLoginDAO.CadastarUsuarioDAO(user);            
        }
    }
}