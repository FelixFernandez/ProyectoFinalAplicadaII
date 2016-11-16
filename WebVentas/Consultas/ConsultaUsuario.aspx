<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="WebVentas.Consultas.ConsultaUsuario" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div>
        <label > Buscar Por:</label>
        <asp:DropDownList ID="DropDownListFiltro" runat="server">
            <asp:ListItem>Id</asp:ListItem>
            <asp:ListItem>Nombre</asp:ListItem>
        </asp:DropDownList>
            <asp:TextBox ID="TextBoxBuscar" runat="server"></asp:TextBox>
            <asp:Button runat="server" class="btn btn-primay" Text="Buscar" OnClick="Buscar_Click"/>      
    </div>

    <div>
        <label > Desde:</label>
        <asp:TextBox ID="DesdeTextBox" TextMode="date" runat="server"></asp:TextBox> 
   
        <label > Hasta:</label>
        <asp:TextBox ID="hastaTextBox" TextMode="date" runat="server"></asp:TextBox>
    </div>


    <div class="container">
        <asp:GridView ID="GridViewUsuario" runat="server" Width="694px">           
             </asp:GridView>
        </div>

</asp:Content>