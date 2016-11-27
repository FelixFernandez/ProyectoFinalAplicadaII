<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="WebVentas.Consultas.ConsultaUsuario" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="container">
        <h1><strong>Consulta De Usuario </strong></h1>
        <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>
   
        <div class="form-group">
            <div class="row 50%">
                <div class="col-lg-2">
                    <h4>Buscar Por</h4>
                </div>
                <div class="col-md-2">
                        <asp:DropDownList ID="DropDownListFiltro" class="form-control" runat="server">
                        <asp:ListItem>Id</asp:ListItem>
                        <asp:ListItem>Nombre</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                <div class="col-md-7">
                    <asp:TextBox ID="TextBoxBuscar" class="form-control" runat="server"></asp:TextBox> 
                </div>
                <div >
                    <asp:Button runat="server" class="btn btn-primay" Text="Buscar" OnClick="Buscar_Click"/> 
                </div>
            </div>
        </div>

       <center>
        <div class="alert alert-dismissible alert-success"/>   
     <div class="row 50%">
    <div>
        <asp:GridView ID="GridViewUsuario" runat="server" class="bg-primary" CellPadding="4" ForeColor="#333333" GridLines="None" Width="961px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
        </div>
                 
         </div>
     </center>
                
          </fieldset>
  
</asp:Content>