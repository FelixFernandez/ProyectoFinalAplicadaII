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

        public void LlenarCampos()
        {
            Suplidor suplidor = new Suplidor();

            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
            suplidor.Nombre = TextBoxNombre.Text;
            suplidor.Apellido = TextBoxApellido.Text;
            suplidor.Direccion = TextBoxDireccion.Text;
            suplidor.Telefono = TextBoxTelefono.Text;
            suplidor.Correo = TextBoxCorreo.Text;
            suplidor.Empresa = TextBoxEmpresa.Text;
            
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Suplidor suplidor = new Suplidor();

            suplidor.IdSuplidor = Convert.ToInt32(TextBoxSuplidorID.Text);
            LlenarCampos();

            if(suplidor.IdSuplidor > 0)
            {
                suplidor.Insertar();
                Response.Write("guardo");
            }
            else
            {
                Response.Write("no guardo");
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
            LlenarCampos();

            if (suplidor.IdSuplidor > 0)
            {
                suplidor.Eliminar();
                Response.Write("se elimino");
            }
            else
            {
                Response.Write("no se elimino");
            }
        }
    }
}