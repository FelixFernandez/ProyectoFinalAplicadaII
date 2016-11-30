using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Venta : ClaseMaestra
    {
        public int IdVenta { get; set; }
        public string Fecha { get; set; }
        public int TotalVenta { get; set; }
	    public List<VentaProducto>Tipo {get; set;}

        public Venta()
        {
            this.IdVenta = 0;
            this.Fecha = "";
            this.TotalVenta =0;
	    Tipo = new List<VentaProducto>();

        }
	
	public void AgregarVentaProducto(int cantidad)
        {
            this.Tipo.Add(new VentaProducto(cantidad));
        }

        public override bool Insertar()
        {

            ConexionDb conexion = new ConexionDb();
		    VentaProducto ventaproducto = new VentaProducto();
            bool retorno;
            try
            {
                retorno = conexion.Ejecutar(string.Format("insert into Venta (Fecha, TotalVenta) values('" + this.IdVenta + "','" + this.Fecha + "','" + this.TotalVenta + "')"));
                foreach (VentaProducto item in Tipo)
                {
                    conexion.Ejecutar(string.Format("insert into VentaProducto(Cantidad) Values({1})", retorno, (int)item.Cantida));
                }
            }catch(Exception e)
            {
                throw e;
            }
		return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;

            try
            {
                retorno = conexion.Ejecutar(string.Format("update Venta set Fecha='" + this.Fecha + "', TotalVenta='" + this.TotalVenta + "'where IdVenta=" + this.IdVenta));
                if (retorno)
                {
                    conexion.Ejecutar(string.Format("Delete from VentaProducto where VentaId =" + this.IdVenta.ToString()));

                    foreach (VentaProducto item in Tipo)
                    {
                        conexion.Ejecutar(string.Format("insert into VentaProducto(Cantidad) Values({1})", retorno, (int)item.Cantida));
                    }
                }
            } catch(Exception e)
            {
                throw e;
            }
                return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            retorno = conexion.Ejecutar(string.Format("delete from Venta where IdVenta = " + this.IdVenta));
            if (retorno)
            {
                conexion.Ejecutar(string.Format("Delete from VentaProducto where VentaId =" + this.IdVenta.ToString()));
            }
            return retorno;
        }

        public override bool Buscar(int IdBuscar)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            try
            {
                dt = conexion.ObtenerDatos("select * from Venta where IdVenta = " + this.IdVenta);
                if (dt.Rows.Count > 0)
                {
                    IdVenta = (int)dt.Rows[0]["IdVenta"];
                    Fecha = dt.Rows[0]["Fecha"].ToString();
                    TotalVenta = (int)dt.Rows[0]["TotalVenta"];
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
            return conexion.ObtenerDatos("Select " + Campos + " From Venta Where " + Condicion + Orden);
        }

    }
}
