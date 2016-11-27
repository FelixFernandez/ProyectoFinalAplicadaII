<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="WebVentas.Registros.RegistroUsuario" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="container">
        <h1><strong>Registro De Usuario</strong></h1>
            
            <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>

            <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-5">
                        <asp:TextBox runat="server" TextMode="number" class="form-control" id="TextBoxUsuarioID" placeholder="UsuarioID" ValidationGroup="mismoGrupo"></asp:TextBox> 
                         <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>       -->                         
                        <asp:RequiredFieldValidator id="RequiredFieldValidator1" ControlToValidate="TextBoxUsuarioID" Text="*Campo Obligatorio"  runat="server"></asp:RequiredFieldValidator>               
                    </div>
                    
                    <div>
                        <asp:Button ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                    </div>
                </div>      
            </div>
                     
                     <div class="form-group">
                         <div class="row 50%">
                             <div class="col-md-6">
                                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre"></asp:TextBox>
                            <!--     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*Ingrese solo letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> -->
                                  <asp:RequiredFieldValidator id="RequiredFieldValidator6" ControlToValidate="TextBoxNombre" Text="*Campo Obligatorio"  runat="server"/>
                             </div>  
                              <div class="col-md-6">
                                <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido"></asp:TextBox>
                               <!--   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*Ingrese solo letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> -->
                                  <asp:RequiredFieldValidator id="RequiredFieldValidator5" ControlToValidate="TextBoxApellido" Text="*Campo Obligatorio"  runat="server"/>
                             </div>                          
                         </div>  
                     </div>
                         
 
                    <div class="form-group">
                        <div class="row 50%" />
                         <div class="col-md-12">
                            <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo"></asp:TextBox>
                             <asp:RequiredFieldValidator id="RequiredFieldValidator2" ControlToValidate="TextBoxCorreo" Text="*Campo Obligatorio"  runat="server"/> 
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row 50%" />
                         <div class="col-md-12">
                            <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxNombreUsuario" placeholder="Nombre Usuario"></asp:TextBox>
                             <asp:RequiredFieldValidator id="RequiredFieldValidator3" ControlToValidate="TextBoxNombreUsuario" Text="*Campo Obligatorio"  runat="server"/> 
                        </div>
                    </div>

        

                    <div class="form-group">
                        <div class="row 50%" />
                         <div class="col-md-12">
                            <asp:TextBox  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña"></asp:TextBox>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator4" ControlToValidate="TextBoxContraseña" Text="*Campo Obligatorio"  runat="server"/> 
                        </div>
                    </div>
      
         

               <!--     <div class="form-group">
                        <div class="row 50%" />       
                        <div class="12u">
                            <label>Imagen</label>
                            <asp:FileUpload  runat="server" type="text" class="form-control" id="TextBoxImagen" placeholder="Imagen"></asp:FileUpload>
                        </div>
                    </div> -->
                <div class="form-group">
                    <div class="row 50%">
                        <div class="col-md-4">
                            <asp:Button Id="ButtoEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="ButtoEliminar_Click"></asp:Button>
                            &nbsp;<asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-success" OnClick="ButtonNuevo_Click"></asp:Button>
                            &nbsp;<asp:Button ID="ButtonGurdar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="ButtonGuardar_Click"></asp:Button>    
                       </div>
                   </div>
               </div>

        <div class="row 50%"></div>
        </fieldset>
       
</asp:Content>