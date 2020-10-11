using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database.Models;
using Database.DAO.Login;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Database.Models.Login user = new Database.Models.Login();

            user.NmUsuario = TextBox1.Text.ToString();
            user.DsSenha = TextBox2.Text.ToString();
            user.DtUltimoLogin = DateTime.Now;

            LoginDAO FucaoDatabase = new LoginDAO();
            FucaoDatabase.InserirLoginDAO(user);
        }
    }
}