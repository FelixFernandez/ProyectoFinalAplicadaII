<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProducto.aspx.cs" Inherits="WebVentas.Registros.RegistroProducto" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset class="container">
        <h1> <strong>Registro De Producto</strong></h1>
         <div class="progress">
                <div class="progress-bar" style="width: 100%;"></div>
            </div>

               <div class="form-group">
                   <div class="row 50%">
                        <div class="col-md-5">
                            <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxProductoID" placeholder="ProductoID"></asp:TextBox>
                            </div>
                       <div>
                            <asp:Button ID="ButtonBuscar" class="btn btn-warning" runat="server" Text="Buscar" />
                       </div>
                   </div>
               </div>

        

             <div class="form-group">
                 <div class="row 50%">
                     <div class="col-md-12">
                         <asp:TextBox runat="server"  type="text" class="form-control" id="TextBoxDescripcion" placeholder="Descripcion"></asp:TextBox>
                     </div>
                 </div>
             </div>

   
            <div class="form-group">
                <div class="row 50%">
                    <div class="col-md-6">
                        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxCosto" placeholder="Costo"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxPrecio" placeholder="Precio"></asp:TextBox>
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
  </fieldset>
</asp:Content>
