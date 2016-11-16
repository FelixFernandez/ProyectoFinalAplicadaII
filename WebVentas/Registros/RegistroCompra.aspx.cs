using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WebVentas.Registros
{
    public partial class RegistroCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LimpiarTextBox()
        {
            TextBoxCompraID.Text = string.Empty;
            TextBoxFecha.Text = string.Empty;
            TextBoxPrecio.Text = string.Empty;
            TextBoxCantidad.Text = string.Empty;
        }

        public void LLenarTextBox()
        {
            Compra compra = new Compra();

            compra.IdCompra = int.Parse(TextBoxCompraID.Text);
            compra.Fecha = TextBoxFecha.Text;
            compra.TotalCompra = float.Parse(TextBoxPrecio.Text);
            
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Compra compra = new Compra();
            LLenarTextBox();

            if(compra.IdCompra > 0)
            {
                compra.Insertar();
                Response.Write("guardo");
            }
            else
            {
                Response.Write("no guardo");
            }
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            LimpiarTextBox();
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Compra compra = new Compra();
            compra.IdCompra = int.Parse(TextBoxCompraID.Text);

            if (compra.IdCompra > 0)
            {
                compra.Eliminar();
                Response.Write("se elimino");
            }
            else
            {
                Response.Write("no se elimino");
            }
        }
    }
}