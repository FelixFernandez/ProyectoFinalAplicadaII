using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace WebVentas
{
    public class Compra : ClaseMaestra
    {
        public int IdCompra { get; set; }
        public int IdSuplidor { get; set; }
        public string Fecha { get; set; }
        public double TotalCompra { get; set; }

        public Compra()
        {
            this.IdCompra = 0;
            this.IdSuplidor = 0;
            this.Fecha = "";
            this.TotalCompra = 0f;

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("insert into Compra (Fecha, TotalCompra) values('"+ this.Fecha + "','" + this.TotalCompra + "')"));
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("update Compra set Fecha='" + this.Fecha + "', TotalCompra='" + this.TotalCompra + "'where IdCompra=" + this.IdCompra));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("delete from Compra where IdCompra ="+this.IdCompra));
            return retorno;
        }

        public override bool Buscar(int IdBuscar)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {
                dt = conexion.ObtenerDatos("select * from Compra where IdCompra = " + this.IdCompra);
                if (dt.Rows.Count > 0)
                {
                    IdCompra = (int)dt.Rows[0]["IdCompra"];
                    IdSuplidor = (int)dt.Rows[0]["IdSuplidor"];
                    Fecha = dt.Rows[0]["Fecha"].ToString();
                    TotalCompra = (double)dt.Rows[0]["TotalCompra"];
                    
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
            return conexion.ObtenerDatos("Select " + Campos + " From Compra Where " + Condicion + Orden);
        }

       
    }
}
