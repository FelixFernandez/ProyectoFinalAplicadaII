<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegistroSuplidor.aspx.cs" Inherits="WebVentas.Registros.RegistroSuplidor" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>   
     <fieldset class="container">
        <legend>Registro De Suplidor</legend>

    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-6">
                <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxSuplidorID" placeholder="SuplidorID"></asp:TextBox> 
            </div>     
             <div>
                <asp:Button ID="ButtonBuscar" class="btn btn-default" runat="server" Text="Buscar" />
             </div>
        </div>
    </div>
 

     <div class="form-group">
         <div class="row 50%">
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxNombre" placeholder="Nombre"></asp:TextBox>
             </div>
             <div class="col-md-6">
                 <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxApellido" placeholder="Apellido"></asp:TextBox>
             </div>
         </div>
    </div>

        
   
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxDireccion" placeholder="Direccion"></asp:TextBox>
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="number" class="form-control" id="TextBoxTelefono" placeholder="Telefono"></asp:TextBox>
            </div>
        </div>
    </div>

        
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server"  type="Email" class="form-control" id="TextBoxCorreo" placeholder="Correo"></asp:TextBox>
            </div>
        </div>
     </div>
      
          
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-12">
                <asp:TextBox  runat="server" type="text" class="form-control" id="TextBoxEmpresa" placeholder="Empresa"></asp:TextBox>
            </div>
        </div>
     </div>
     
           
    <div class="form-group">
        <div class="row 50%">
            <div class="col-md-4">
                <asp:button runat="server" type="reset" class="btn btn-default" Text="Eliminar" OnClick="Eliminar_Click"></asp:button>
                <asp:button runat="server" type="submit" class="btn btn-primary" Text="Nuevo" OnClick="Nuevo_Click"></asp:button>
                <asp:button runat="server" type="submit" class="btn btn-primary" Text="Guardar" OnClick="Guardar_Click"></asp:button>
            </div>
        </div>
     </div>
  </fieldset>
 </form>

</asp:Content>
