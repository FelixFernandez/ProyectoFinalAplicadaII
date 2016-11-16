<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProducto.aspx.cs" Inherits="WebVentas.Registros.RegistroProducto" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
    <legend>Registro De Producto</legend>

    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">ProductoID</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxProductoID" placeholder="ProductoID"></asp:TextBox>
          <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" />
      </div>
    </div>

        <label></label>

     <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Descripcion</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxDescripcion" placeholder="Descripcion" TextMode="MultiLine"></asp:TextBox>
      </div>
    </div>

        <label></label>
   
    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">Costo</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxCosto" placeholder="Costo"></asp:TextBox>
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
      <div class="col-lg-10 col-lg-offset-2">
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-default" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-primary" OnClick="Nuevo_Click"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
  </fieldset>
</asp:Content>
