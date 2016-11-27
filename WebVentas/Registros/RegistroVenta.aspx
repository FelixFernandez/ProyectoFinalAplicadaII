<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroVenta.aspx.cs" Inherits="WebVentas.Registros.Venta" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <fieldset class="container">
           <h1><strong>Registro De Compra</strong></h1>
            <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>
            
            <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-5">
                        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxVentaID" placeholder="VentaID"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" />
                    </div>
               </div>
            </div>

             <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-12">
                        <asp:TextBox runat="server"  type="date" class="form-control" id="TextBoxFecha" placeholder="Fecha" TextMode="date"></asp:TextBox>
                    </div>
                </div>
             </div>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-12">
                   <asp:TextBox runat="server" class="form-control" id="TextBoxListProducto" placeholder="Producto"></asp:TextBox>
                </div>
           </div>
        </div>
      
       <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                
                    <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxPrecio" placeholder="Precio"></asp:TextBox>
               
                    
                </div>
               
                <div class="col-md-5">
                <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxCantidad" placeholder="Cantidad"></asp:TextBox>
            </div>
                <div>
                        <asp:Button ID="ButtonAgregar" class="btn btn-primary" runat="server" Text="agregar" />
                    </div>
                </div>
    </div>

      <div class="form-group">
            <div class="row 50%">
      <div class="col-md-4">
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-danger"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-success"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary"></asp:button>
      </div>
    </div>
          </div>
  </fieldset>
</asp:Content>

