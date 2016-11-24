<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroCompra.aspx.cs" Inherits="WebVentas.Registros.RegistroCompra" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <fieldset class="container">
        <legend>Registro De Compra</legend>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:TextBox runat="server" TextMode="number" class="form-control" id="TextBoxCompraID" placeholder="CompraID"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="ButtonBuscar" class="btn btn-primary" runat="server" Text="Buscar" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-12">
                    <asp:TextBox type="date" class="form-control" TextMode="Date" runat="server" id="TextBoxFecha" placeholder="Fecha"></asp:TextBox>
                </div>
            </div>
        </div>

         <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:DropDownList  runat="server" class="form-control" id="DropDownListSuplidor">
                        <asp:ListItem>hola como estas</asp:ListItem>
                        <asp:ListItem>hola como estas</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList runat="server" class="form-control"  id="DropDownListProducto" DataTextField="Producto">
                        <asp:ListItem>hola como estas</asp:ListItem>
                        <asp:ListItem>hola como estas</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

         <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:TextBox runat="server" TextMode="number" class="form-control"   id="TextBoxPrecio" placeholder="Precio"></asp:TextBox>
                </div>
                <div class="col-md-5">
                     <asp:TextBox runat="server" TextMode="number" class="form-control" id="TextBoxCantidad" placeholder="Cantidad"></asp:TextBox>
                </div>
                <div>
                        <asp:Button ID="ButtonAgregar" class="btn btn-primary" runat="server" Text="agregar" />
                    </div>
            </div>
        </div>

         

      
    <div class="form-group">
            <div class="row 50%">
                <div class="col-md-4">
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-default" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-primary" OnClick="Nuevo_Click"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
        </div>
        
                        
  </fieldset>
</asp:Content>
