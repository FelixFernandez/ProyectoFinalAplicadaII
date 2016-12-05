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

        public void Limpiar()
        {
            TextBoxCompraID.Text = string.Empty;
            TextBoxFecha.Text = string.Empty;
            TextBoxTotalCompra.Text = string.Empty;
            TextBoxCantidad.Text = string.Empty;
        }


        protected void Guardar_Click(object sender, EventArgs e)
        {
            Compra compra = new Compra();

            compra.Fecha = TextBoxFecha.Text;
            compra.TotalCompra = double.Parse(TextBoxTotalCompra.Text);


            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (TextBoxCompraID.Text == "")
                {
                    if (compra.Insertar())
                    {
                        Limpiar();
                        Response.Write("La Compra Se Guardo Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("La Compra no Se Guardo Correctamente");
                    }
                }
                else
                {
                    compra.IdCompra = Convert.ToInt32(TextBoxCompraID.Text);
                    if (compra.Modificar())
                    {
                        Limpiar();
                        Response.Write("La Compra Se Modifico Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("La Compra no Se modifico Correctamente");
                    }
                }
            }
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
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

        private void Buscar(Compra compra)
        {
            TextBoxCompraID.Text = compra.IdCompra.ToString();
            TextBoxFecha.Text = compra.Fecha.ToString();
            DropDownListProducto.Text = compra.IdCompra.ToString();
            DropDownListSuplidor.Text = compra.IdSuplidor.ToString();
            TextBoxTotalCompra.Text = compra.TotalCompra.ToString();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {

            Compra compra = new Compra();
            compra.IdCompra = int.Parse(TextBoxCompraID.Text);

            if (Page.IsValid)
            {
                if (compra.Buscar(compra.IdCompra))
                {
                    Buscar(compra);
                }
                else
                {
                    Response.Write("El Id No Existe");
                }
            }
        }
    }
}