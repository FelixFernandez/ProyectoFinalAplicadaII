using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

namespace WebVentas.Registros
{
    public partial class RegistroVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            TextBoxVentaID.Text = string.Empty;
            TextBoxFecha.Text = string.Empty;
            TextBoxTotalVenta.Text = string.Empty;
            
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Venta venta = new Venta();
           
            venta.Fecha = TextBoxFecha.Text;
            venta.TotalVenta = double.Parse(TextBoxTotalVenta.Text);
            

            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (TextBoxVentaID.Text == "")
                {
                    if (venta.Insertar())
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
                    venta.IdVenta = Convert.ToInt32(TextBoxVentaID.Text);
                    if (venta.Modificar())
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

        private void Buscar(Venta venta)
        {
            TextBoxVentaID.Text = venta.IdVenta.ToString();
            TextBoxFecha.Text = venta.Fecha.ToString();
            TextBoxTotalVenta.Text = venta.TotalVenta.ToString();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Venta venta = new Venta();
            venta.IdVenta = Convert.ToInt32(TextBoxVentaID.Text);
            if (Page.IsValid)
            {
                if (venta.Buscar(venta.IdVenta))
                {
                    Buscar(venta);
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");

                }
            }
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Venta venta = new Venta();
            venta.IdVenta = Convert.ToInt32(TextBoxVentaID.Text);

            if (venta.IdVenta > 0)
            {
                venta.Eliminar();
                Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
            }
            else
            {
                Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
            }
        }

        protected void ButtonAgregar_Click(object sender, EventArgs e)
        {
            Venta venta;

            if (Session["Venta"] == null)
                Session["Venta"] = new Venta();
            venta = (Venta)Session["Venta"];

            VentaProducto ventaproducto = new VentaProducto();

            ventaproducto.Cantida = int.Parse(TextBoxCantidad.Text);

            venta.AgregarVentaProducto(ventaproducto.Cantida);

            Session["Venta"] = venta;

            VentaProductoGridView.DataSource = venta.Tipo;
            VentaProductoGridView.DataBind();
        }
    }
}