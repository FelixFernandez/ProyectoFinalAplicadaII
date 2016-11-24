<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="WebVentas.Reportes.ReporteUsuario" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="page-wrapper">
        <section id="banner">
            <header class="special container">
                <span class="icon fa-user"></span>
                <h2>Registro de Compra</h2>
            </header>
            </section>
            <article id="main">
           
    <form runat="server">
    <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true" />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reportes\ReportUsuario.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetUsuario" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasDbConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
</form>
              

            </article>
            </div>
    
</asp:Content>
