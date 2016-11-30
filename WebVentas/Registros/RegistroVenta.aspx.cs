using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

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
            venta.TotalVenta = Convert.ToInt32(TextBoxTotalVenta.Text);
            

            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (TextBoxVentaID.Text == "")
                {
                    if (venta.Insertar())
                    {
                        Limpiar();
                        Response.Write("La venta Se Guardo Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("La venta no Se Guardo Correctamente");
                    }
                }
                else
                {
                    venta.IdVenta = Convert.ToInt32(TextBoxVentaID.Text);
                    if (venta.Modificar())
                    {
                        Limpiar();
                        Response.Write("La venta Se Modifico Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("La venta no Se modifico Correctamente");
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
                    Response.Write("El Id No Existe");

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
                Response.Write("El Usuario Se Elimino Correctamente");
            }
            else
            {
                Response.Write("El Usuario No Se Elimino");
            }
        }
    }
}