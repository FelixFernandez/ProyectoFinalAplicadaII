using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

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

          
            suplidor.Nombre = TextBoxNombre.Text;
            suplidor.Apellido = TextBoxApellido.Text;
            suplidor.Direccion = TextBoxDireccion.Text;
            suplidor.Telefono = TextBoxTelefono.Text;
            suplidor.Correo = TextBoxCorreo.Text;
            suplidor.Empresa = TextBoxEmpresa.Text;

            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (TextBoxSuplidorID.Text == "")
                {
                    if (suplidor.Insertar())
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
                    suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
                    if (suplidor.Modificar())
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
            Suplidor suplidor = new Suplidor();

            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
           

            if (suplidor.IdSuplidor > 0)
            {
                suplidor.Eliminar();
                Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
            }
            else
            {
                Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
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
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");


                }
            }
        }
    }
}