<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="WebVentas.Consultas.ConsultaUsuario" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <div id="page-wrapper">
    <section id="banner">
        <header class="special container">
            <span class="icon fa-user"></span>
            <h2>Registro de Usuario</h2>
        </header>
        <div class="inner"/>
    <form runat="server">
        <div class="form-group">
            <div class="row 50%">
                <div class="3u">
                    <label> Buscar Por:</label> <asp:DropDownList ID="DropDownListFiltro" runat="server">
                        <asp:ListItem>Id</asp:ListItem>
                        <asp:ListItem>Nombre</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                <div class="6u 12u(mobile)">
                    <asp:TextBox ID="TextBoxBuscar" runat="server"></asp:TextBox> 
                </div>
                <div class="1u 3u(mobile)">
                    <asp:Button runat="server" class="btn btn-primay" Text="Buscar" OnClick="Buscar_Click"/> 
                </div>
            </div>
        </div>

    <!--    <div class="6u 12u(mobile)">
        <label > Desde:</label>
        <asp:TextBox ID="DesdeTextBox" TextMode="date" runat="server"></asp:TextBox> 
   </div>
        <div class="6u 12u(mobile)">
        <label > Hasta:</label>
        <asp:TextBox ID="hastaTextBox" TextMode="date" runat="server"></asp:TextBox>
            </div>
        -->

        <center>
           
        <div class="row 50%">
                             <div class="12u 12u(mobile)">
    <div class="container">
        <asp:GridView ID="GridViewUsuario" runat="server" Width="694px">
             </asp:GridView>
        </div>
                 </div>
            </div>
                
            </center>
        </form>
        </section>
         </div>
</asp:Content>