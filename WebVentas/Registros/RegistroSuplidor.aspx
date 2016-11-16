<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroSuplidor.aspx.cs" Inherits="WebVentas.Registros.RegistroSuplidor" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal">   
     <fieldset>
    <legend>Registro De Suplidor</legend>

    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">SuplidorID</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxSuplidorID" placeholder="SuplidorID"></asp:TextBox>      
          <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" />
     </div>
    </div>

         <label></label>

     <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Nombre</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre"></asp:TextBox>
      </div>
    </div>

         <label></label>

      <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Apellido</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido"></asp:TextBox>
      </div>
    </div>

         <label></label>
   
    <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Direccion</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxDireccion" placeholder="Direccion"></asp:TextBox>
      </div>
    </div>

         <label></label>
    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">Telefono</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server" type="number" class="form-control" id="TextBoxTelefono" placeholder="Telefono"></asp:TextBox>
      </div>
    </div>

          <label></label>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Correo</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo"></asp:TextBox>
      </div>
    </div>
      
          <label></label>
    <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Empresa</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server" type="text" class="form-control" id="TextBoxEmpresa" placeholder="Empresa"></asp:TextBox>
      </div>
    </div>
         <label></label>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <asp:button runat="server" type="reset" class="btn btn-default" Text="Eliminar" OnClick="Unnamed3_Click"></asp:button>
        <asp:button runat="server" type="submit" class="btn btn-primary" Text="Nuevo" OnClick="Unnamed4_Click"></asp:button>
        <asp:button runat="server" type="submit" class="btn btn-primary" Text="Guardar" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
  </fieldset>
    </form>

</asp:Content>
