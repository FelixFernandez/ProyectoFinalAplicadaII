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
                      <asp:requiredfieldvalidator  validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese un Id para buscar" ForeColor="red"></asp:requiredfieldvalidator>
                        <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="red"></asp:RegularExpressionValidator>                                      
                   
                    </div>
                    
                    <div>
                        <asp:Button validationgroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />     
                      </div>
                </div>      
            </div>
                     
                     <div class="form-group">
                         <div class="row">
                             <div class="col-md-6">
                                 <asp:TextBox  validationgroup="ValidarGuardar"  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre" MaxLength="30"></asp:TextBox>
                                 <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*Debe ingresar un nombre" ForeColor="Red"></asp:requiredfieldvalidator> 
                                 <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*Ingrese solo letras" ValidationExpression="^[A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>            
                             </div>  
                             <div class="col-md-6">
                                <asp:TextBox  validationgroup="ValidarGuardar"  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido" MaxLength="30"></asp:TextBox>
                                 <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*Debe ingresar un apellido" ForeColor="Red"></asp:requiredfieldvalidator>  
                                 <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*Ingrese solo letras" ValidationExpression="^[A-Za-z]*$" ForeColor="red"></asp:RegularExpressionValidator>           
                             </div>                          
                         </div>  
                     </div>
                         
 
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:TextBox validationgroup="ValidarGuardar"  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo" MaxLength="50"></asp:TextBox>
                                <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCorreo" ErrorMessage="*Debe ingresar un correo" ForeColor="Red"></asp:requiredfieldvalidator>             
                            </div>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:TextBox validationgroup="ValidarGuardar" runat="server"  type="text" class="form-control" id="TextBoxNombreUsuario" placeholder="Nombre Usuario" MaxLength="25"></asp:TextBox>
                                <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxNombreUsuario" ErrorMessage="*Debe ingresar un nombre de usuario" ForeColor="red"></asp:requiredfieldvalidator>             
                            </div>
                        </div>
                    </div>

        

                    <div class="form-group">
                        <div class="row">
                         <div class="col-md-12">
                            <asp:TextBox validationgroup="ValidarGuardar"  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña" MaxLength="17"></asp:TextBox>
                            <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxContraseña" ErrorMessage="*Debe ingresar una contraseña" ForeColor="red"></asp:requiredfieldvalidator>             
                    
                         </div>
                        </div>
                    </div>
      

                <div class="form-group">
                    <div class="row 50%">
                        <div class="col-md-4">
                            <asp:Button Id="ButtoEliminar" ValidationGroup="ValidarEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="ButtoEliminar_Click"></asp:Button>
                             &nbsp;<asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-success" OnClick="ButtonNuevo_Click"></asp:Button>
                            &nbsp;<asp:Button validationgroup="ValidarGuardar" ID="ButtonGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="ButtonGuardar_Click"></asp:Button>  
                       </div>
                         <div>
                     <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese un id para eliminar" ForeColor="Red" ></asp:requiredfieldvalidator>
                        </div>
           <div>
             <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxUsuarioID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
                   </div>
               </div>

        <div class="row 50%">
            <div class="well">
                <div class="text-danger">                  
                    
                </div> 
            </div>
        </div>

   </fieldset>   
</asp:Content>