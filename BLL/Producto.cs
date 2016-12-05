using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Producto: ClaseMaestra
    {
        public int IdProducto { get; set; }
        public string Descripcion { get; set; }
        public double Costo { get; set; }
        public double Precio { get; set; }


        public Producto()
        {
            this.IdProducto = 0;
            this.Descripcion = "";
            this.Costo = 0f;
            this.Precio = 0f;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("insert into Producto(Descripcion, Costo, Precio) values('" + this.Descripcion + "','" + this.Costo +"','"+ this.Precio+ "')"));
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
           
            retorno = conexion.Ejecutar(string.Format("update Producto set Descripcion='"+this.Descripcion+"', Costo='"+this.Costo+"', Precio='"+this.Precio+"' where IdProducto=" + this.IdProducto));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("delete from Producto where IdProducto = " + this.IdProducto));
            return retorno;
        }

        public override bool Buscar(int IdBuscar)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {
                dt = conexion.ObtenerDatos("select * from Producto where IdProducto = " + this.IdProducto);
                if (dt.Rows.Count > 0)
                {
                    IdProducto = (int)dt.Rows[0]["IdProducto"];
                    Descripcion = dt.Rows[0]["Descripcion"].ToString();
                    Costo = (double)dt.Rows[0]["Costo"];
                    Precio = (double)dt.Rows[0]["Precio"];
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
            return conexion.ObtenerDatos("Select " + Campos + " From Producto Where " + Condicion + Orden);
        }
    }
}
