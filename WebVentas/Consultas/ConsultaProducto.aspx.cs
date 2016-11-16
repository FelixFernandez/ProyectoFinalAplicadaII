using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebVentas.Consultas
{
    public partial class ConsultaProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Mostrar()
        {
            Producto producto = new Producto();

            string filtro = "";

            if (string.IsNullOrWhiteSpace(TextBoxBuscar.Text))
            {


                filtro = "1=1";

            }
            else
            {

                filtro = DropDownListFiltro.SelectedValue + "like '%" + TextBoxBuscar.Text + "%'";

                filtro = " Fecha Between '" + DesdeTextBox.Text + "'and '" + hastaTextBox.Text + "'";

                GridViewUsuario.DataSource = producto.Listado("compra.IdProducto as Id, Descripcion, Costo, Precio", "IdProducto = " + TextBoxBuscar.Text, "");
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