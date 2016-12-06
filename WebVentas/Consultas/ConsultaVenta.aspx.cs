using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

namespace WebVentas.Consultas
{
    public partial class ConsultaVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Mostrar()
        {
            Venta venta = new Venta();

            string filtro = "";

            if (string.IsNullOrWhiteSpace(TextBoxBuscar.Text))
            {


                filtro = "1=1";

            }
            else
            {
                filtro = DropDownListFiltro.SelectedValue + "like '%" + TextBoxBuscar.Text + "%'";
                GridViewVenta.DataSource = venta.Listado("venta.IdVenta as Id, Fecha, TotalVenta", "IdVenta = " + TextBoxBuscar.Text, "");
                GridViewVenta.DataBind();
            }
            return filtro;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Mostrar();
        }
    }
}