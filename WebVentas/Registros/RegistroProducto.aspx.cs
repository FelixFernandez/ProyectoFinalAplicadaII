using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebVentas.Registros
{
    public partial class RegistroProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LimpiarTextBox()
        {
            TextBoxProductoID.Text = string.Empty;
            TextBoxDescripcion.Text = string.Empty;
            TextBoxCosto.Text = string.Empty;
            TextBoxPrecio.Text = string.Empty;
        }

        public void LLenarTextBox()
        {
            Producto producto = new Producto();
            producto.Descripcion = TextBoxDescripcion.Text;
            producto.Costo = float.Parse(TextBoxCosto.Text);
            producto.Precio = float.Parse(TextBoxPrecio.Text);
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Producto producto = new Producto();
            producto.IdProducto = int.Parse(TextBoxProductoID.Text);
            LLenarTextBox();


            if (producto.IdProducto > 0)
            {
                producto.Insertar();
                Response.Write("producto guardado");
                LimpiarTextBox();
            }
            else
            {
                Response.Write("error al guardar");
            }
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            LimpiarTextBox();
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Producto producto = new Producto();

                 if (producto.IdProducto > 0)
                {
                    producto.Eliminar();
                    Response.Write("producto eliminado");
                    LimpiarTextBox();
                }
                else
                {
                    Response.Write("error al eliminar");
                }
               
            }
        
    }
}
