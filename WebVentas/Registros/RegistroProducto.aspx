<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProducto.aspx.cs" Inherits="WebVentas.Registros.RegistroProducto" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset class="container">
        <h1> <strong>Registro De Producto</strong></h1>
         <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>

               <div class="form-group">
                   <div class="row 50%">
                        <div class="col-md-5">
                            <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxProductoID" placeholder="ProductoID" MaxLength="10"></asp:TextBox>
                             <asp:requiredfieldvalidator validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxProductoID" ErrorMessage="*Ingrese un id para buscar" ForeColor="red" ></asp:requiredfieldvalidator>
                             <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxProductoID" ErrorMessage="*Ingrese solo numero" ForeColor="red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                            
                            </div>
                       <div>
                            <asp:Button ValidationGroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                             </div>
                   </div>
               </div>

        

             <div class="form-group">
                 <div class="row 50%">
                     <div class="col-md-12">
                         <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxDescripcion" placeholder="Descripcion" MaxLength="50"></asp:TextBox>
                         <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" ForeColor="red" runat="server" ControlToValidate="TextBoxDescripcion" ErrorMessage="*Debe ingresar una descripcion"></asp:requiredfieldvalidator> 
                   </div>
                 </div>
             </div>

   
            <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-6">
                        <asp:TextBox runat="server"  type="tex" class="form-control" id="TextBoxCosto" placeholder="Costo" MaxLength="10"></asp:TextBox>
                            <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator3" ForeColor="red" runat="server" ControlToValidate="TextBoxCosto" ErrorMessage="*Debe ingresar un costo"></asp:requiredfieldvalidator>  
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator3" ForeColor="red" runat="server" ControlToValidate="TextBoxCosto" ErrorMessage="*Ingrese solo numero" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>           
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox runat="server"  type="tex" class="form-control" id="TextBoxPrecio" placeholder="Precio" MaxLength="10"></asp:TextBox>
                             <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" ForeColor="red" runat="server" ControlToValidate="TextBoxPrecio" ErrorMessage="**Debe ingresar un precio"></asp:requiredfieldvalidator>  
                            <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxPrecio" ErrorMessage="*Ingrese un dato valido" ForeColor="red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>

      

    <div class="form-group">
            <div class="row 50%">
      <div class="col-md-4">
        <asp:button  validationgroup="ValidarEliminar" runat="server" Text="Eliminar" type="reset" class="btn btn-danger" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-success" OnClick="Nuevo_Click"></asp:button>
        <asp:button validationgroup="ValidarGuardar" runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
          <div>
            <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxProductoID" ErrorMessage="*Ingrese un id para eliminar" ForeColor="Red" ></asp:requiredfieldvalidator>
           </div>
           <div>
             <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBoxProductoID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
      </div>
    </div>
        </div>


          <div class="row">
            <div class="well">
                <div class="text-danger">
                     
                 </div> 
            </div>
          </div>
  </fieldset>
</asp:Content>
