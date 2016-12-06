using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;
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
                        Validaciones.ShowToastr(this, "Exito", "Insertado correctamente!", "success");
                    }
                    else
                    {
                        Limpiar();
                        Validaciones.ShowToastr(this, "Error", "Error al insertar", "error");
                    }
                }
                else
                {
                    compra.IdCompra = Convert.ToInt32(TextBoxCompraID.Text);
                    if (compra.Modificar())
                    {
                        Limpiar();
                        Validaciones.ShowToastr(this, "Exito", "Modificado correctamente!", "success");
                    }
                    else
                    {
                        Limpiar();
                        Validaciones.ShowToastr(this, "Error", "Error al modificar", "error");
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
                Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
            }
            else
            {
                Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
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
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");
                }
            }
        }
    }
}