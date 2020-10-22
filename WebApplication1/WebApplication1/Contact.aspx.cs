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

        protected void Button_Click4(object sender, EventArgs e)
        {
            string YrStr = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    YrStr += CheckBoxList1.Items[i].Value + ";";
                }
            }

            Label2.Text = YrStr;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.preencherGrid();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Text = RadioButtonList1.SelectedValue;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = DropDownList1.SelectedItem.Value;
        }
    }
}