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

        public void Limpiar()
        {
            TextBoxProductoID.Text = string.Empty;
            TextBoxDescripcion.Text = string.Empty;
            TextBoxCosto.Text = string.Empty;
            TextBoxPrecio.Text = string.Empty;
        }


        protected void Guardar_Click(object sender, EventArgs e)
        {
            Producto producto = new Producto();
          
            producto.Descripcion = TextBoxDescripcion.Text;
            producto.Costo = Convert.ToInt32(TextBoxCosto.Text);
            producto.Precio = Convert.ToInt32(TextBoxPrecio.Text);

            if (Page.IsValid)
            {
                if (TextBoxProductoID.Text == "")
                {
                    if (producto.Insertar())
                    {
                        Limpiar();
                        Response.Write("producto guardado");
                        
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("error al guardar");
                    }
                }
                else
                {
                    producto.IdProducto = Convert.ToInt32(TextBoxProductoID.Text);
                    if (producto.Modificar())
                    {
                        Limpiar();
                        Response.Write("El producto Se Modifico Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("El Usuproductoario no Se modifico Correctamente");
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
            Producto producto = new Producto();

                 if (producto.IdProducto > 0)
                {
                    producto.Eliminar();
                    Response.Write("producto eliminado");
                    Limpiar();
                }
                else
                {
                    Response.Write("error al eliminar");
                }
               
            }

        private void Buscar(Producto producto)
        {
            TextBoxProductoID.Text = producto.IdProducto.ToString();
            TextBoxDescripcion.Text = producto.Descripcion.ToString();
            TextBoxCosto.Text = producto.Costo.ToString();
            TextBoxPrecio.Text = producto.Precio.ToString();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Producto producto = new Producto();
            producto.IdProducto = Convert.ToInt32(TextBoxProductoID.Text);
            if (Page.IsValid)
            {
                if (producto.Buscar(producto.IdProducto))
                {
                    Buscar(producto);
                }
                else
                {
                    Response.Write("El Id No Existe");

                }
            }
        }
    }
}
