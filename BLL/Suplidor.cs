using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Suplidor : ClaseMaestra
    {
        public int IdSuplidor { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Empresa { get; set; }

        public Suplidor()
        {
            this.IdSuplidor = 0;
            this.Nombre = "";
            this.Apellido = "";
            this.Direccion = "";
            this.Telefono = "";
            this.Correo = "";
            this.Empresa = "";

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("insert into Suplidor(Nombre, Apellido, Direccion, Telefono, correo, Empresa) values('" + this.Nombre + "','" + this.Apellido + "','" + this.Direccion + "','" + this.Telefono + "','" + this.Correo + "','" + this.Empresa + "')"));
            return retorno;
        }


        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("Delete From Suplidor where IdSuplidor =" +this.IdSuplidor));
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("update Suplidor set Nombre='"+this.Nombre+"', Apellido='"+this.Apellido+"', Direccion='"+this.Direccion+"', Telefono='"+this.Telefono+"', correo='"+this.Correo+"', Empresa='"+this.Empresa+ "'where IdSuplidor = " + this.IdSuplidor));
            return retorno;
        }
    

        public override bool Buscar(int IdBuscar)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {
                dt = conexion.ObtenerDatos("select * from Suplidor where IdSuplidor = " + this.IdSuplidor);
                if (dt.Rows.Count > 0)
                {
                    IdSuplidor = (int)dt.Rows[0]["IdSuplidor"];
                    Nombre = dt.Rows[0]["Nombre"].ToString();
                    Apellido = dt.Rows[0]["Apellido"].ToString();
                    Direccion = dt.Rows[0]["Direccion"].ToString();
                    Telefono = dt.Rows[0]["Telefono"].ToString();
                    Correo = dt.Rows[0]["Correo"].ToString();
                    Empresa = dt.Rows[0]["Empresa"].ToString();
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
            return conexion.ObtenerDatos("Select " + Campos + " From Suplidor Where " + Condicion + Orden);

        }


    }
}
