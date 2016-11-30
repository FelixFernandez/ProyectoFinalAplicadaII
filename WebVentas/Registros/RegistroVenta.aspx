<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroVenta.aspx.cs" Inherits="WebVentas.Registros.RegistroVenta" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <fieldset class="container">
           <h1><strong>Registro De Venta</strong></h1>
            <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>
            
            <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-5">
                        <asp:TextBox runat="server" MaxLength="10"  type="text" class="form-control" id="TextBoxVentaID" placeholder="VentaID"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ValidationGroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                             <asp:requiredfieldvalidator  validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxVentaID" ErrorMessage="*" ForeColor="red" CssClass="auto-style1"></asp:requiredfieldvalidator>
                        <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxVentaID" ErrorMessage="*" ValidationExpression="^[0-9]*" ForeColor="red" CssClass="auto-style1"></asp:RegularExpressionValidator>                                      
                   
                    </div>
               </div>
            </div>

             <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-12">
                        <asp:TextBox runat="server"  type="date" class="form-control" id="TextBoxFecha" placeholder="Fecha" TextMode="date"></asp:TextBox>
                    </div>
                </div>
             </div>
      
       <div class="form-group">
            <div class="row 50%">
                <div class="col-md-4">     
                     <asp:TextBox runat="server"  type="tex" class="form-control" id="TextBoxTotalVenta" placeholder="Precio" MaxLength="10"></asp:TextBox>
               </div>

       
                <div class="col-md-5">      
                    <asp:TextBox runat="server"  type="tex" class="form-control" id="TextBoxCantidad" placeholder="Cantidad" MaxLength="10"></asp:TextBox>
               </div>
                
               <div>
             <asp:Button ID="ButtonAgregar" class="btn btn-primary" runat="server" Text="agregar" OnClick="ButtonAgregar_Click" />
               </div>
                </div>

       </div>
                      
                
         
            
            

      <div class="form-group">
            <div class="row 50%">
      <div class="col-md-4">
        <asp:button ValidationGroup="ValidarEliminar" runat="server" Text="Eliminar" type="reset" class="btn btn-danger" OnClick="Unnamed3_Click"></asp:button>
           <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxVentaID" ErrorMessage="" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
          <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxVentaID" ErrorMessage="" ></asp:requiredfieldvalidator>
                    

        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-success" OnClick="Unnamed4_Click"></asp:button>
        <asp:button ValidationGroup="ValidarGuardar" runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
          </div>

            <div>
                 <asp:GridView ID="VentaProductoGridView" runat="server">
            </asp:GridView>
            </div>

             <div class="row 50%">
            <div class="well">
                <div class="text-danger">
                  
                    
                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFecha" ErrorMessage="*Fecha NO VALIDO!!... por favor revise el fecha"></asp:requiredfieldvalidator> 
                    </div>
                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxTotalVenta" ErrorMessage="*venta NO VALIDO!!... por favor revise el fecha"></asp:requiredfieldvalidator>             
                    <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxTotalVenta" ErrorMessage="*Ingrese un dato valido" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                    
                         </div>


                </div> 
            </div>
        </div>
  </fieldset>
</asp:Content>

