<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReporteCompra.aspx.cs" Inherits="WebVentas.Reportes.ReporteCompra" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="container">
        <h1><strong>Reporte De Compra </strong></h1>
        <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>
   <div class="alert alert-dismissible alert-success" style="background-color: #FFFFFF"/>   
    <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true" />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Reportes\ReportCompra.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetCompra" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasDbConnectionString %>" SelectCommand="SELECT * FROM [Compra]"></asp:SqlDataSource>
</fieldset>
</asp:Content>