using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebVentas.Consultas
{
    public partial class ConsultaSuplidor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Mostrar()
        {
           Suplidor  suplidor = new Suplidor();

            string filtro = "";

            if (string.IsNullOrWhiteSpace(TextBoxBuscar.Text))
            {
                filtro = "1=1";
            }
            else
            {

                filtro = DropDownListFiltro.SelectedValue + "like '%" + TextBoxBuscar.Text + "%'";

                GridViewSuplidor.DataSource = suplidor.Listado("suplidor.IdSuplidor as Id, Nombre, Apellido, Direccion, Telefono, correo, Empresa", "IdSuplidor = " + TextBoxBuscar.Text, " ");
                GridViewSuplidor.DataBind();
                

            }
            return filtro;
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            Mostrar();
        }
    }
}