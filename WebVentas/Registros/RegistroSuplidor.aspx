<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroSuplidor.aspx.cs" Inherits="WebVentas.Registros.RegistroSuplidor" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
     <fieldset class="container">
        <h1><strong>Registro De Suplidor</strong></h1>

         <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-5">
                <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxSuplidorID" placeholder="SuplidorID" MaxLength="10"></asp:TextBox> 
                  <asp:requiredfieldvalidator validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese un Id para buscar"  ForeColor="red" ></asp:requiredfieldvalidator>
                  <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese solo numeros"  ForeColor="red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            </div>     
             <div>
                <asp:Button ValidationGroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                         
             </div>
        </div>
    </div>
 

     <div class="form-group">
         <div class="row">
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre" MaxLength="30"></asp:TextBox>
                      <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*Debe ingresar un nombre" ForeColor="Red"></asp:requiredfieldvalidator> 
                      <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*Ingrese solo letras" ValidationExpression="^[A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>            
             </div>
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido" MaxLength="30"></asp:TextBox>
                      <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*Debe de ingresar un apellido" ForeColor="Red"></asp:requiredfieldvalidator>  
                      <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*Ingrese solo letras" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>                
             </div>
         </div>
    </div>

        
   
    <div class="form-group">
        <div class="row">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxDireccion" placeholder="Direccion" MaxLength="30"></asp:TextBox>
                <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="*Debe ingresar una direccion" ForeColor="Red"></asp:requiredfieldvalidator>             
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="number" class="form-control" id="TextBoxTelefono" placeholder="Telefono" MaxLength="10"></asp:TextBox>
                <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxTelefono" ErrorMessage="*Debe ingresar un numero de telefono " ForeColor="Red"></asp:requiredfieldvalidator>             
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo" MaxLength="30"></asp:TextBox>
                <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxCorreo" ErrorMessage="*Debe ingresar un correo" ForeColor="Red"></asp:requiredfieldvalidator>             
             </div>
        </div>
     </div>
      
          
    <div class="form-group">
        <div class="row">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="text" class="form-control" id="TextBoxEmpresa" placeholder="Empresa" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="ValidarGuardar" ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxEmpresa" ErrorMessage="*Debe de ingresar una empresa" ForeColor="Red"></asp:RequiredFieldValidator>     
            </div>
        </div>
     </div>
     
           
    <div class="form-group">
        <div class="row">
            <div class="col-md-4">
                <asp:button ValidationGroup="ValidarEliminar" runat="server" type="reset" class="btn btn-danger" Text="Eliminar" OnClick="Eliminar_Click"></asp:button>
                &nbsp;
                <asp:button runat="server" type="submit" class="btn btn-success" Text="Nuevo" OnClick="Nuevo_Click"></asp:button>
                &nbsp;
                <asp:button ValidationGroup="ValidarGuardar" runat="server" type="submit" class="btn btn-primary" Text="Guardar" OnClick="Guardar_Click"></asp:button>
                </div>        
        </div>

     </div>
         <div>
            <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese un id para eliminar" ForeColor="Red" ></asp:requiredfieldvalidator>
           </div>
           <div>
             <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>

         <div class="row">
            <div class="well">
                <div class="text-danger">
                     
                 </div> 
            </div>
          </div>
  </fieldset>

</asp:Content>
