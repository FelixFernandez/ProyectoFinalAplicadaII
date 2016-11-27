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

        public void LlenarCampos()
        {
            Usuario usuario = new Usuario();

            usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);
            usuario.Nombre = TextBoxNombre.Text;
            usuario.Apellido = TextBoxApellido.Text;
            usuario.Correo = TextBoxCorreo.Text;
            usuario.NombreUsuario = TextBoxNombreUsuario.Text;
            usuario.Contraseña = TextBoxContraseña.Text;

            // string srt = TextBoxImagen.FileName;
            // TextBoxImagen.PostedFile.SaveAs(Server.MapPath("Imagen") + str);
            //  string path = "Imagen" + str.ToString();
            //  usuario.Imagen = path;

         //   string nombre = "capture.jpg";
           // TextBoxImagen.SaveAs(Server.MapPath("~/imagen" + nombre));

        }


        public void MostrarCampos()
        {
            Usuario usuario = new Usuario();
            TextBoxUsuarioID.Text = usuario.IdUsuario.ToString();
            TextBoxNombre.Text = usuario.Nombre.ToString();
            TextBoxApellido.Text = usuario.Apellido.ToString();
            TextBoxCorreo.Text = usuario.Correo.ToString();
            TextBoxNombreUsuario.Text = usuario.NombreUsuario.ToString();
            TextBoxContraseña.Text = usuario.Contraseña.ToString();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {

           Usuario usuario = new Usuario();

            usuario.IdUsuario = Convert.ToInt32(TextBoxUsuarioID.Text);
            LlenarCampos();

            int cero = 0;
           
                if (usuario.IdUsuario > cero)
                {
                    usuario.Insertar();
                    Response.Write("El Usuario Se Guardo Correctamente");
                }
                else
                {
                    Response.Write("El Usuario No Se Guardo Correctamente");
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

            int cero = 0;

            if(usuario.IdUsuario > cero)
            {
                usuario.Eliminar();
                Response.Write("El Usuario Se Elimino Correctamente");
            }
            else
            {
                Response.Write("El Usuario No Se Elimino");
            }
            
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            
            usuario.IdUsuario=Convert.ToInt32(TextBoxUsuarioID.Text);
                usuario.Buscar(usuario.IdUsuario);
                MostrarCampos();       
            
        }
    }
}