using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

namespace WebVentas.Consultas
{
    public partial class ConsultaCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public string Mostrar()
        {
            Compra compra = new Compra();

            string filtro = "";

            if (string.IsNullOrWhiteSpace(TextBoxBuscar.Text))
            {


                filtro = "1=1";

            }
            else
            {

                filtro = DropDownListFiltro.SelectedValue + "like '%" + TextBoxBuscar.Text + "%'";

                filtro = " Fecha Between '" + DesdeTextBox.Text + "'and '" + hastaTextBox.Text + "'";

                GridViewCompra.DataSource = compra.Listado("compra.IdCompra as Id, IdSuplidor, Fecha, TotalCompr", "IdCompra = " + TextBoxBuscar.Text, "");
                GridViewCompra.DataBind();


            }
            return filtro;
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            Mostrar();
        }
    }
}