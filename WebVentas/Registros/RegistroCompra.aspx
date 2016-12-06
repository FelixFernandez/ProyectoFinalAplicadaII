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
                    <asp:TextBox runat="server" TextMode="number" class="form-control" id="TextBoxCompraID" placeholder="CompraID"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="row 50%">
                <div class="col-md-12">
                    <asp:TextBox type="date" class="form-control" TextMode="Date" runat="server" id="TextBoxFecha" placeholder="Fecha"></asp:TextBox>
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

         <div class="form-group">
            <div class="row 50%">
                <div class="col-md-6">
                    <asp:TextBox runat="server" Type="text" class="form-control"   id="TextBoxTotalCompra" placeholder="Precio"></asp:TextBox>
                </div>
                <div class="col-md-5">
                     <asp:TextBox runat="server" Type="text" class="form-control" id="TextBoxCantidad" placeholder="Cantidad"></asp:TextBox>
                </div>
                <div>
                        <asp:Button ID="ButtonAgregar" class="btn btn-primary" runat="server" Text="agregar" />
                    </div>
            </div>
        </div>

         

      
    <div class="form-group">
            <div class="row 50%">
                <div class="col-md-4">
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-danger" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-success" OnClick="Nuevo_Click"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
        </div>

        <div class="row 50%"></div>                     
  </fieldset>
</asp:Content>
