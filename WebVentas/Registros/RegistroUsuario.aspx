<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="WebVentas.Registros.RegistroUsuario" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner -->
    <section id="banner">
        <header class="special container">
            <span class="icon fa-user"></span>
            <h2>Registro de Usuario</h2>
        </header>
        
        <div class="inner">
             <form  runat="server">
                 <fieldset>                 

                     <div class="form-group">
                         <div class="row 50%">
                             <div class="6u 12u(mobile)">
                                  <asp:TextBox runat="server" class="form-control" id="TextBoxUsuarioID" placeholder="UsuarioID"></asp:TextBox>                          
                             </div>
                             <div class="2u 12u(mobile)">
                                  <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                             </div>
                         </div>      
                     </div>
                     
                     <div class="form-group">
                         <div class="row 50%">
                             <div class="6u 12u(mobile)">
                                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre"></asp:TextBox>
                             </div>  
                             <div class="6u 12u(mobile)">
                                <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido"></asp:TextBox>
                             </div>                          
                         </div>  
                     </div>
 
                    <div class="form-group">
                        <div class="row 50%" />
                        <div class="12u">
                            <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo"></asp:TextBox>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row 50%" />
                        <div class="12u">
                            <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxNombreUsuario" placeholder="Nombre Usuario"></asp:TextBox>
                        </div>
                    </div>

        

                    <div class="form-group">
                        <div class="row 50%" />
                        <div class="12u">
                            <asp:TextBox  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña"></asp:TextBox>
                        </div>
                    </div>
      
         

                    <div class="form-group">
                        <div class="row 50%" />       
                        <div class="12u">
                            <label>Imagen</label>
                            <asp:FileUpload  runat="server" type="text" class="form-control" id="TextBoxImagen" placeholder="Imagen"></asp:FileUpload>
                        </div>
                    </div>
                 

    <div class="form-group">
        <div class="row 50%" />
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
                        </div>
                    </section>
   

</asp:Content>