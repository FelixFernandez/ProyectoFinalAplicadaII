using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;


namespace WebVentas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ButtonIniciarSesion_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            if (usuario.Login() == true)
            {
                 Response.Redirect("../Default.aspx");
              
            }
            else
            {
                Response.Write("Verifique Su Contraseña y Usuario");
            }


        }
    }
}
