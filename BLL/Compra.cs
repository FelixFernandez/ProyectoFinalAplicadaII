using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Compra : ClaseMaestra
    {
        public int IdCompra { get; set; }
        public int IdSuplidor { get; set; }
        public string Fecha { get; set; }
        public float TotalCompra { get; set; }

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
            retorno = conexion.Ejecutar(string.Format("insert into Compra (IdCompra, IdSuplidor, Fecha, TotalCompra) values('"+this.IdCompra+ "','" + this.IdSuplidor + "','" + this.Fecha + "','" + this.TotalCompra + "') Select @@Identity"));
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("update Compra set IdSuplidor, Fecha, TotalCompra) values('" + this.IdSuplidor + "','" + this.Fecha + "','" + this.TotalCompra + "where IdCompra = " + this.IdCompra));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("delete from Compra where idCompra ="+this.IdCompra));
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
                    TotalCompra = (float)dt.Rows[0]["TotaCompra"];
                    
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
