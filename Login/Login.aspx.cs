using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="Admin" && TextBox2.Text == "admin")
            {
                Button1.PostBackUrl = "Clientes.aspx";
            }
            else
            {
                Label3.Text = "Usuário ou senha incorretos";
            }
        }
    }
}