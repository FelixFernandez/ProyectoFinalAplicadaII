using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebVentas.Consultas
{
    public partial class ConsultaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Mostrar()
        {
            Usuario usuario = new Usuario();

            string filtro = "";

            if (string.IsNullOrWhiteSpace(TextBoxBuscar.Text))
            {


                filtro = "1=1";

            }
            else { 

                filtro = DropDownListFiltro.SelectedValue + "like '%" + TextBoxBuscar.Text + "%'";

             //   filtro = " Fecha Between '" + DesdeTextBox.Text + "'and '" + hastaTextBox.Text + "'";

            GridViewUsuario.DataSource = usuario.Listado("usuario.IdUsuario as Id, Nombre, Apellido, Correo, Contraseña, NombreUsuario", "IdUsuario = " + TextBoxBuscar.Text, "");
            GridViewUsuario.DataBind();

            
        }
            return filtro;
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {

            Mostrar();
        }
    }
}