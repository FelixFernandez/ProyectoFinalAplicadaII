using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

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

            usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);
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
                        Response.Write("El Usuario Se Guardo Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("El Usuario no Se Guardo Correctamente");
                    }
                }
                else
                {
                    if (usuario.Modificar())
                    {
                        Limpiar();
                        Response.Write("El Usuario Se Modifico Correctamente");
                    }
                    else
                    {
                        Limpiar();
                        Response.Write("El Usuario no Se modifico Correctamente");
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
                    Response.Write("El Usuario Se Elimino Correctamente");
                }
                else
                {
                    Response.Write("El Usuario No Se Elimino");
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
                    Response.Write("El Id No Existe");

                } 
            }

        }
    }
}