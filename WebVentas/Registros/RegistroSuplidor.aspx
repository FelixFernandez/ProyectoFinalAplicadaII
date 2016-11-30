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
        <div class="row 50%">
            <div class="col-md-5">
                <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxSuplidorID" placeholder="SuplidorID" MaxLength="10"></asp:TextBox> 
            </div>     
             <div>
                <asp:Button ValidationGroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                 <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese un dato valido" ForeColor="red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                  <asp:requiredfieldvalidator validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="*Ingrese un dato valido" ForeColor="red" ></asp:requiredfieldvalidator>
                         
             </div>
        </div>
    </div>
 

     <div class="form-group">
         <div class="row 50%">
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre" MaxLength="30"></asp:TextBox>
             </div>
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido" MaxLength="30"></asp:TextBox>
             </div>
         </div>
    </div>

        
   
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxDireccion" placeholder="Direccion" MaxLength="30"></asp:TextBox>
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="number" class="form-control" id="TextBoxTelefono" placeholder="Telefono" MaxLength="10"></asp:TextBox>
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo" MaxLength="30"></asp:TextBox>
            </div>
        </div>
     </div>
      
          
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="text" class="form-control" id="TextBoxEmpresa" placeholder="Empresa" MaxLength="30"></asp:TextBox>
            </div>
        </div>
     </div>
     
           
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-4">
                <asp:button ValidationGroup="ValidarEliminar" runat="server" type="reset" class="btn btn-danger" Text="Eliminar" OnClick="Eliminar_Click"></asp:button>
                 <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                 <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxSuplidorID" ErrorMessage="" ></asp:requiredfieldvalidator>
                    
                <asp:button runat="server" type="submit" class="btn btn-success" Text="Nuevo" OnClick="Nuevo_Click"></asp:button>
                <asp:button ValidationGroup="ValidarGuardar" runat="server" type="submit" class="btn btn-primary" Text="Guardar" OnClick="Guardar_Click"></asp:button>
            </div>
        </div>
     </div>

         <div class="row 50%">
            <div class="well">
                <div class="text-danger">
                  
                    
                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*NOMBRE NO VALIDO!!... Ingrese un dato valido"></asp:requiredfieldvalidator> 
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="*NOMBRE NO VALIDO!!... Ingrese un dato valido" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>            
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*APELLIDO NO VALIDO!!... Ingrese un dato valido"></asp:requiredfieldvalidator>  
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxApellido" ErrorMessage="*APELLIDO NO VALIDO!!... Ingrese un dato valido" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>           
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="*DIRECCION NO VALIDO!!... Ingrese un dato valido"></asp:requiredfieldvalidator>             
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxTelefono" ErrorMessage="*TELEFONO DE USUARIO NO VALIDO!!... Ingrese un dato valido"></asp:requiredfieldvalidator>             
                    </div>

                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxCorreo" ErrorMessage="*CORREO NO VALIDO!!... Ingrese un dato valido"></asp:requiredfieldvalidator>             
                    </div>
                    <div>
                         <asp:RequiredFieldValidator ValidationGroup="ValidarGuardar" ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxEmpresa" ErrorMessage="*EMPRESA NO VALIDO!!... Ingrese un dato valido"></asp:RequiredFieldValidator>     
                    </div>
                </div> 
            </div>
        </div>
  </fieldset>

</asp:Content>
