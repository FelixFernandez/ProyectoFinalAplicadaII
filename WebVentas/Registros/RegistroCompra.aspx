<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroCompra.aspx.cs" Inherits="WebVentas.Registros.RegistroCompra" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <fieldset class="container">
        <h1><strong>Registro De Compra</strong></h1>
            <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-5">
                    <asp:TextBox runat="server" Type="tex" class="form-control" id="TextBoxCompraID" placeholder="CompraID"></asp:TextBox>
                    <asp:requiredfieldvalidator  validationgroup="ValidarBuscar" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCompraID" ErrorMessage="*Ingrese un id para buscar" ForeColor="red" CssClass="auto-style1"></asp:requiredfieldvalidator>
                    <asp:RegularExpressionValidator ValidationGroup="ValidarBuscar" ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxCompraID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="red" CssClass="auto-style1"></asp:RegularExpressionValidator>                                      
                </div>
                <div>
                    <asp:Button ValidationGroup="ValidarBuscar" ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-12">
                    <asp:TextBox type="date" class="form-control" TextMode="Date" runat="server" id="TextBoxFecha" placeholder="Fecha"></asp:TextBox>
                    <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFecha" ErrorMessage="*Debe ingresar una fecha" ForeColor="Red"></asp:requiredfieldvalidator> 
                </div>
            </div>
        </div>

         <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:DropDownList  runat="server" class="form-control" id="DropDownListSuplidor" DataSourceID="SqlDataSourceSuplidor" DataTextField="Nombre" DataValueField="Nombre">
                        <asp:ListItem>Suplidor</asp:ListItem>
                        <asp:ListItem>hola como estas</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceSuplidor" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [Nombre] FROM [Suplidor]"></asp:SqlDataSource>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList runat="server" class="form-control"  id="DropDownListProducto" DataTextField="Descripcion" DataSourceID="SqlDataSourceProducto" DataValueField="Descripcion">
                        <asp:ListItem>Producto</asp:ListItem>
                        <asp:ListItem>hola como estas</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [Descripcion] FROM [Producto]"></asp:SqlDataSource>
                </div>
            </div>
        </div>

        <label></label>

         <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:TextBox runat="server" Type="text" class="form-control"   id="TextBoxTotalCompra" placeholder="Precio"></asp:TextBox>
                    <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxTotalCompra" ErrorMessage="*Debe ingresar un precio" ForeColor="Red"></asp:requiredfieldvalidator>             
                    <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxTotalCompra" ErrorMessage="*Ingrese dolo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="col-md-5">
                     <asp:TextBox runat="server" Type="text" class="form-control" id="TextBoxCantidad" placeholder="Cantidad"></asp:TextBox>
                    <asp:requiredfieldvalidator  validationgroup="ValidarGuardar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCantidad" ErrorMessage="*Debe ingresar un cantidad" ForeColor="Red"></asp:requiredfieldvalidator>             
                        <asp:RegularExpressionValidator ValidationGroup="ValidarGuardar" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxCantidad" ErrorMessage="*Ingrese dolo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <div>
                        <asp:requiredfieldvalidator  validationgroup="ValidarAgregar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxCantidad" ErrorMessage="*Debe ingresar un cantidad" ForeColor="Red"></asp:requiredfieldvalidator>             
                        <asp:RegularExpressionValidator ValidationGroup="ValidarAgregar" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxCantidad" ErrorMessage="*Ingrese dolo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div>
                        <asp:Button ValidationGroup="ValidarAgregar" ID="ButtonAgregar" class="btn btn-primary" runat="server" Text="agregar" />
                    </div>
            </div>
        </div>

         

      
    <div class="form-group">
            <div class="row">
                <div class="col-md-6">
        <asp:button ValidationGroup="ValidarEliminar" runat="server" Text="Eliminar" type="reset" class="btn btn-danger" OnClick="Eliminar_Click"></asp:button>
        &nbsp;&nbsp;
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-success" OnClick="Nuevo_Click"></asp:button>
        &nbsp;&nbsp;
        <asp:button ValidationGroup="ValidarGuardar" runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      
                <div>
                        <asp:requiredfieldvalidator validationgroup="ValidarEliminar" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCompraID" ErrorMessage="*Ingrese un id para eliminar" ForeColor="Red" ></asp:requiredfieldvalidator>
                      </div>
                    <div>
                          <asp:RegularExpressionValidator ValidationGroup="ValidarEliminar" ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxCompraID" ErrorMessage="*Ingrese solo numeros" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    </div>
                  <div class="col-md-6">
                    <div class="alert alert-dismissible alert-success" style="background-color: #FFFFFF"/>  
                         <asp:GridView ID="CompraGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="519px">
                             <AlternatingRowStyle BackColor="White" />
                             <EditRowStyle BackColor="#2461BF" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#EFF3FB" />
                             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                             <SortedDescendingHeaderStyle BackColor="#4870BE" />
                         </asp:GridView>
                    </div>
                  
                </div>
          </div>
  
        

      
           

            

             <div class="row 50%">
                <div class="well">
                    <div class="text-danger">
                    <div>
                        
                    </div> 
                 </div>
                </div>
             </div>                    
  </fieldset>
</asp:Content>
