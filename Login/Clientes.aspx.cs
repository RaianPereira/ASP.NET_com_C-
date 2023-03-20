using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel5.Visible = false;
                Label18.Visible = false;
                Label19.Visible = false;
                Label21.Visible = false;
            }
        }

        protected void rbMensagens (object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                
            }
            else if (RadioButton2.Checked) 
            {
                
            }
        }
        protected void rbopcao(object sender, EventArgs e)
        {
            if (RadioButton3.Checked)
            {

            }
            else if (RadioButton4.Checked)
            {

            }

        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Label9.Text = "Formulário Enviado Com Sucesso!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label16.Text = "Cadastro de Vendedor Enviado Com Sucesso!";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel5.Visible = false;
            Label17.Visible = false;
            Label19.Visible = false;
            Label21.Visible = false;
            Label18.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;
            Button5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel5.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label21.Visible = false;
            Label19.Visible = true;
            Button4.Visible = true;
            Button3.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                var caminho = @"C:\Users\Raian Almeida\Desktop\Final\Login 1.0\Login\Login\Upload\";
                var nomeArquivo = FileUpload1.FileName;
                var caminhoCompleto = caminho + nomeArquivo;

                try
                {
                    var extensao = System.IO.Path.GetExtension(nomeArquivo).ToLower();
                    if ((extensao.Equals(".docx") || extensao.Equals(".png")))
                    {

                        FileUpload1.PostedFile.SaveAs(caminhoCompleto);
                        Label20.Text = nomeArquivo + " Enviado com Sucesso";
                    }
                    else
                    {
                        Label20.Text = "Formato não Suportado";
                    }
                }

                catch (Exception erro)
                {
                    Label20.Text = nomeArquivo + " Arquivo não Enviado";
                }
            }
            else
            {
                Label20.Text = " Selecione um Arquivo";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            Label21.Visible = true;
            Button5.Visible = true;
            
        }
    }
}