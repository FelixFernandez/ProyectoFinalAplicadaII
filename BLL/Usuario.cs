using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace WebVentas
{
    public class Usuario : ClaseMaestra
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Correo { get; set; }
        public string Contraseña { get; set; }
        public string NombreUsuario { get; set; }

        public Usuario()
        {
            this.IdUsuario = 0;
            this.Nombre = "";
            this.Apellido = "";
            this.Correo = "";
            this.Contraseña = "";
            this.NombreUsuario = "";
        }

        public bool Login()
        {
            ConexionDb conexion = new ConexionDb();
            bool Resultado = false;
            DataTable dt = new DataTable();

            dt =conexion.ObtenerDatos("select IdUsuario from Usuario where IdUsuario = '" + this.NombreUsuario + "' and Contraseña = '" + this.Contraseña + "'");

            if (dt.Rows.Count > 0)
                Resultado = true;

            return Resultado;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("insert into Usuario(Nombre, Apellido, Correo, NombreUsuario, Contraseña) Values('" + this.Nombre + "','" + this.Apellido + "','" + this.Correo + "','" + this.NombreUsuario + "','" + this.Contraseña +  "')"));
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;

            retorno = conexion.Ejecutar(string.Format("update Usuario set Nombre='"+this.Nombre+"',Apellido='"+this.Apellido+"',Correo='"+this.Correo+"', Contraseña='"+this.Contraseña+"', NombreUsuario='"+this.NombreUsuario+ "'where IdUsuario ="+ this.IdUsuario));

            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("delete from Usuario where IdUsuario = " + this.IdUsuario));
            return retorno;
        }

        public override bool Buscar(int IdBuscar)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {
                dt = conexion.ObtenerDatos("select * from Usuario where IdUsuario = " + this.IdUsuario);
                if (dt.Rows.Count > 0)
                {
                    IdUsuario = (int)dt.Rows[0]["IdUsuario"];
                    Nombre = dt.Rows[0]["Nombre"].ToString();
                    Apellido = dt.Rows[0]["Apellido"].ToString();
                    Correo = dt.Rows[0]["Correo"].ToString();
                    Contraseña = dt.Rows[0]["Contraseña"].ToString();
                    NombreUsuario = dt.Rows[0]["NombreUsuario"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt.Rows.Count > 0;

        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();

            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " Orden by  " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Usuario Where " + Condicion + Orden);

        }
    }
}
