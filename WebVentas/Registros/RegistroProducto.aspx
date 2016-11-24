<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProducto.aspx.cs" Inherits="WebVentas.Registros.RegistroProducto" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset class="container">
         <legend>Registro De Producto</legend>

               <div class="form-group">
                   <div class="row 50%">
                        <div class="col-md-6">
                            <asp:TextBox runat="server"  type="number" class="form-control" id="TextBoxProductoID" placeholder="ProductoID"></asp:TextBox>
                            </div>
                       <div>
                            <asp:Button ID="ButtonBuscar" class="btn btn-primary" runat="server" Text="Buscar" />
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
        <asp:button runat="server" Text="Eliminar" type="reset" class="btn btn-default" OnClick="Eliminar_Click"></asp:button>
        <asp:button runat="server" Text="Nuevo" type="submit" class="btn btn-primary" OnClick="Nuevo_Click"></asp:button>
        <asp:button runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Guardar_Click"></asp:button>
      </div>
    </div>
        </div>
  </fieldset>
</asp:Content>
