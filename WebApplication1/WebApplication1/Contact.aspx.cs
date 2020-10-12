using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database.DAO.Login;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void preencherGrid()
        {
            LoginDAO FunctionLogin = new LoginDAO();
            DataTable tabela = FunctionLogin.Listar();

            GridView1.DataSource = tabela;
            GridView1.DataBind();
        }
    }
}