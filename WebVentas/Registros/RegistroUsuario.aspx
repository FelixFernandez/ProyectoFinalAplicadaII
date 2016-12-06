<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="WebVentas.Registros.RegistroUsuario" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>


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
                        <asp:TextBox runat="server" Type="text" ValidationExpression="^[0-9]*" class="form-control" id="TextBoxUsuarioID" placeholder="UsuarioID" MaxLength="10"></asp:TextBox>
                   </div>
                    
                    <div>
                        <asp:Button validationgroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />     
                        <asp:requiredfieldvalidator  validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*" ForeColor="red" CssClass="auto-style1"></asp:requiredfieldvalidator>
                        <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" 
                            runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*" ValidationExpression="^[0-9]*" ForeColor="red" CssClass="auto-style1"></asp:RegularExpressionValidator>                                      
                    </div>
                </div>      
            </div>
                     
                     <div class="form-group">
                         <div class="row 50%">
                             <div class="col-md-6">
                                 <asp:TextBox  validationgroup="ValidarGuardar"  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre" MaxLength="30"></asp:TextBox>
                            </div>  
                              <div class="col-md-6">
                                <asp:TextBox  validationgroup="ValidarGuardar"  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido" MaxLength="30"></asp:TextBox>
                             </div>                          
                         </div>  
                     </div>
                         
 
                    <div class="form-group">
                        <div class="row 50%">
                         <div class="col-md-12">
                            <asp:TextBox validationgroup="ValidarGuardar"  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo" MaxLength="50"></asp:TextBox>
                        </div>
                            </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row 50%">
                         <div class="col-md-12">
                            <asp:TextBox validationgroup="ValidarGuardar" runat="server"  type="text" class="form-control" id="TextBoxNombreUsuario" placeholder="Nombre Usuario" MaxLength="25"></asp:TextBox>
                        </div>
                        </div>
                    </div>

        

                    <div class="form-group">
                        <div class="row 50%">
                         <div class="col-md-12">
                            <asp:TextBox validationgroup="ValidarGuardar"  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña" MaxLength="17"></asp:TextBox>
                       </div>
                        </div>
                    </div>
      

                <div class="form-group">
                    <div class="row 50%">
                        <div class="col-md-4">
                            <asp:Button Id="ButtoEliminar" ValidationGroup="ValidarEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="ButtoEliminar_Click"></asp:Button>
                             <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                             <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="" ></asp:requiredfieldvalidator>
                    
                            &nbsp;<asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-success" OnClick="ButtonNuevo_Click"></asp:Button>
                            &nbsp;<asp:Button validationgroup="ValidarGuardar" ID="ButtonGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="ButtonGuardar_Click"></asp:Button>  
                       </div>
                   </div>
               </div>

        <div class="row 50%">
            <div class="well">
                <div class="text-danger">
                   
                    
                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*NOMBRE NO VALIDO!!... por favor revise el nombre"></asp:requiredfieldvalidator> 
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*NOMBRE NO VALIDO!!... por favor revise el nombre" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>            
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*APELLIDO NO VALIDO!!... por favor revise el apellido"></asp:requiredfieldvalidator>  
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*APELLIDO NO VALIDO!!... por favor revise el apellido" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>           
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCorreo" ErrorMessage="*CORREO NO VALIDO!!... por favor revise el correo"></asp:requiredfieldvalidator>             
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxNombreUsuario" ErrorMessage="*NOMBRE DE USUARIO NO VALIDO!!... por favor revise el nombre de usuario"></asp:requiredfieldvalidator>             
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxContraseña" ErrorMessage="*CONTRASEÑA NO VALIDO!!... por favor revise el contraseña"></asp:requiredfieldvalidator>             
                    </div>
                    <div>
                         <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>     
                    </div>


                </div> 
            </div>
        </div>

        </fieldset>

    
</asp:Content>