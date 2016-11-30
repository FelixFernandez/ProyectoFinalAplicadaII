using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class VentaProducto
    {
        public int IdVentaProducto { get; set; }
        public int IdVenta { get; set; }
        public int IdCompra { get; set; }
        public int Cantida { get; set; }

        public VentaProducto()
        {
            this.IdVentaProducto = 0;
            this.IdVenta = 0;
            this.IdCompra = 0;
            this.Cantida = 0;
        }

        public VentaProducto( int cantidad)
        {
           
            Cantida = cantidad;

        }

    }
}
