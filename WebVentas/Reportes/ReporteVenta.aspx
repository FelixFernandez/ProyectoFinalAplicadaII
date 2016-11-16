﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReporteVenta.aspx.cs" Inherits="WebVentas.Reportes.ReporteVenta" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true" />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reportes\ReportVenta.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetVenta" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasDbConnectionString %>" SelectCommand="SELECT * FROM [Compra]"></asp:SqlDataSource>

</asp:Content>