using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WebVentas.Registros
{
    public partial class RegistroSuplidor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            TextBoxSuplidorID.Text = string.Empty;
            TextBoxNombre.Text = string.Empty;
            TextBoxApellido.Text = string.Empty;
            TextBoxDireccion.Text = string.Empty;
            TextBoxTelefono.Text = string.Empty;
            TextBoxCorreo.Text = string.Empty;
            TextBoxEmpresa.Text = string.Empty;
        }


        protected void Guardar_Click(object sender, EventArgs e)
        {
            Suplidor suplidor = new Suplidor();

            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
            suplidor.Nombre = TextBoxNombre.Text;
            suplidor.Apellido = TextBoxApellido.Text;
            suplidor.Direccion = TextBoxDireccion.Text;
            suplidor.Telefono = TextBoxTelefono.Text;
            suplidor.Correo = TextBoxCorreo.Text;
            suplidor.Empresa = TextBoxEmpresa.Text;

            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (suplidor.IdSuplidor > 0)
                {
                    if (suplidor.Insertar())
                    {

                        Limpiar();
                        Response.Write("El Suplidor Se Guardo Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("El Suplidor no Se Guardo Correctamente");
                    }


                }

                else
                {
                    if (suplidor.Modificar())
                    {
                        Limpiar();
                        Response.Write("El Suplidor Se Modifico Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("El Suplidor no Se modifico Correctamente");
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
            Suplidor suplidor = new Suplidor();

            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
           

            if (suplidor.IdSuplidor > 0)
            {
                suplidor.Eliminar();
                Response.Write("El Suplidor Se Elimino Correctamente");
            }
            else
            {
                Response.Write("El Suplidor No Se Elimino");
            }
        }

        private void Buscar(Suplidor suplidor)
        {
            TextBoxSuplidorID.Text = suplidor.IdSuplidor.ToString();
            TextBoxNombre.Text = suplidor.Nombre.ToString();
            TextBoxApellido.Text = suplidor.Apellido.ToString();
            TextBoxDireccion.Text = suplidor.Direccion.ToString();
            TextBoxTelefono.Text = suplidor.Telefono.ToString();
            TextBoxCorreo.Text = suplidor.Correo.ToString();
            TextBoxEmpresa.Text = suplidor.Empresa.ToString();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Suplidor suplidor = new Suplidor();
            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);

            if (Page.IsValid)
            {
                if (suplidor.Buscar(suplidor.IdSuplidor))
                {
                    Buscar(suplidor);
                }
                else
                {
                    Response.Write("El Id No Existe");

                }
            }
        }
    }
}