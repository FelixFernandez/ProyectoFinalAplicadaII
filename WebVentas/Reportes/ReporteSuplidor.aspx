﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReporteSuplidor.aspx.cs" Inherits="WebVentas.Reportes.ReporteSuplidor" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <fieldset class="container">
        <h1><strong>Reporte De Suplidor </strong></h1>
        <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>
   
      <div class="alert alert-dismissible alert-success" style="background-color: #FFFFFF"/>   

    <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true" />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reportes\ReportSuplido.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetSuplidor" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasDbConnectionString %>" SelectCommand="SELECT * FROM [Suplidor]"></asp:SqlDataSource>
          </fieldset>
</asp:Content>