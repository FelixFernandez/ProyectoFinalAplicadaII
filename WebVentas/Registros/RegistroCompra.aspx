<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroCompra.aspx.cs" Inherits="WebVentas.Registros.RegistroCompra" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
    <legend>Registro De Compra</legend>

    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">CompraID</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxCompraID" placeholder="CompraID"></asp:TextBox>
          <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" />
      </div>
    </div>

        <label></label>

     <div class="form-group">
      <label for="date" class="col-lg-2 control-label">Fecha</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="date" class="form-control" id="TextBoxFecha" placeholder="Fecha" TextMode="date"></asp:TextBox>
      </div>
    </div>

        <label></label>
   
    <div class="form-group">
      <label class="col-lg-2 control-label">Suplidor</label>
      <div class="col-lg-10">
        <asp:DropDownList runat="server" class="form-control" id="DropDownListSuplidor" placeholder="Costo"></asp:DropDownList>
      </div>
    </div>

        <label></label>

    <div class="form-group">
      <label class="col-lg-2 control-label">Producto</label>
      <div class="col-lg-10">
      <asp:DropDownList runat="server" class="form-control" id="DropDownListProducto" placeholder="Producto"></asp:DropDownList>
      </div>
    </div>
      
        <label></label>
        <div class="form-group">
      <label for="number" class="col-lg-2 control-label">Precio</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxPrecio" placeholder="Precio"></asp:TextBox>
      </div>
    </div>

        <label></label>
        <div class="form-group">
      <label for="number" class="col-lg-2 control-label">Cantidad</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxCantidad" placeholder="Cantidad"></asp:TextBox>
      </div>
    </div>

        <label></label>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-default" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-primary" OnClick="Nuevo_Click"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
  </fieldset>
</asp:Content>
