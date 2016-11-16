<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="WebVentas.Registros.RegistroUsuario" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal">   
     <fieldset>
    <legend>Registro De Usuario</legend>

    <div class="form-group">
      <label for="number" class="col-lg-2 control-label">UsuarioID</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxUsuarioID" placeholder="UsuarioID"></asp:TextBox>      
          <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
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
      <label for="inputEmail" class="col-lg-2 control-label">Correo</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo"></asp:TextBox>
      </div>
    </div>

         <div class="form-group">
      <label for="text" class="col-lg-2 control-label">Nombre Usuario</label>
      <div class="col-lg-10">
        <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxNombreUsuario" placeholder="Nombre Usuario"></asp:TextBox>      
     </div>
    </div>

         <label></label>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Contraseña</label>
      <div class="col-lg-10">
        <asp:TextBox  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña"></asp:TextBox>
      </div>
    </div>
      
         <label></label>

         <div class="form-group">
      <label class="col-lg-2 control-label">Imagen</label>
      <div class="col-lg-10">
        <asp:FileUpload  runat="server" type="text" class="form-control" id="TextBoxImagen" placeholder="Imagen"></asp:FileUpload>
      </div>
    </div>
                  <label></label>

    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <asp:Button Id="ButtoEliminar" runat="server" Text="Eliminar" class="btn btn-default" BackColor="Red" OnClick="ButtoEliminar_Click"></asp:Button>
        &nbsp;
        <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-default" BackColor="Gray" OnClick="ButtonNuevo_Click"></asp:Button>
          &nbsp;&nbsp;
          <asp:Button ID="ButtonGurdar" runat="server" Text="Guardar" class="btn btn-default" BackColor="blue" OnClick="ButtonGuardar_Click"></asp:Button>    
      </div>
    </div>
  </fieldset>
    </form>
</asp:Content>
