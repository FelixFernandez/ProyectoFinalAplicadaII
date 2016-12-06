using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebVentas;

namespace WebVentas.Registros
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Limpiar()
        {
            TextBoxUsuarioID.Text = string.Empty;
            TextBoxNombre.Text = string.Empty;
            TextBoxApellido.Text = string.Empty;
            TextBoxCorreo.Text = string.Empty;
            TextBoxNombreUsuario.Text = string.Empty;
            TextBoxContraseña.Text = string.Empty;
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            usuario.Nombre = TextBoxNombre.Text;
            usuario.Apellido = TextBoxApellido.Text;
            usuario.Correo = TextBoxCorreo.Text;
            usuario.NombreUsuario = TextBoxNombreUsuario.Text;
            usuario.Contraseña = TextBoxContraseña.Text;

            if (Page.IsValid)// eso es para que me valide los campos
            {
                if (TextBoxUsuarioID.Text == "")
                {
                    if (usuario.Insertar())
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
                    usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);
                    if (usuario.Modificar())
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
           
            
            
          
        

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtoEliminar_Click(object sender, EventArgs e)
        {
           
                Usuario usuario = new Usuario();

                usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);

                if (usuario.IdUsuario > 0)
                {
                    usuario.Eliminar();
                    Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
                }
                else
                {
                    Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
                 }
            }
            
            
        

        private void Buscar(Usuario usuario)
        {
            TextBoxUsuarioID.Text = usuario.IdUsuario.ToString();
            TextBoxNombre.Text = usuario.Nombre.ToString();
            TextBoxApellido.Text = usuario.Apellido.ToString();
            TextBoxCorreo.Text = usuario.Correo.ToString();
            TextBoxNombreUsuario.Text = usuario.NombreUsuario.ToString();
            TextBoxContraseña.Text = usuario.Contraseña.ToString();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);

           if (Page.IsValid)
                    {
                if (usuario.Buscar(usuario.IdUsuario))
                {
                    Buscar(usuario);
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");

                } 
            }

        }
    }
}