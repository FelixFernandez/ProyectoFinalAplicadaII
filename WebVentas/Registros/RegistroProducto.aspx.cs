using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

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
            producto.Costo = double.Parse(TextBoxCosto.Text);
            producto.Precio = double.Parse(TextBoxPrecio.Text);

            if (Page.IsValid)
            {
                if (TextBoxProductoID.Text == "")
                {
                    if (producto.Insertar())
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
                    producto.IdProducto = Convert.ToInt32(TextBoxProductoID.Text);
                    if (producto.Modificar())
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
            Producto producto = new Producto();

                 if (producto.IdProducto > 0)
                {
                    producto.Eliminar();
                Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
            }
            else
            {
                Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
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
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");

                }
            }
        }
    }
}
