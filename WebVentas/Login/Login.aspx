<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebVentas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <link href="/Content/StyleSheet1.css" rel="stylesheet" />
   
    <link href="css/style.css" rel="stylesheet" />
    <script src="/Scripts/bootstrap.js"></script>
    <script src="/Scripts/jquery-3.1.1.js"></script>
    
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/jquery-3.1.1.min.js"></script>
    
     <title>WebVentas</title>
   
     <style type="text/css">
         .auto-style1 {
             color: #FFFFFF;
         }
     </style>
   
     <nav class="navbar navbar-default">
        <div class="container-fluid">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="#"><h4>WebVenta</h4></a></li>

            </ul>
            

        

        <ul class="nav navbar-nav navbar-right">
        <li><a href="../Registros/RegistroUsuario.aspx"><h4>Registrar</h4></a></li>
      </ul>

        <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><h4>Contacto</h4></a></li>
      </ul>

    </div>
  
</nav>
</head>
<body>

  
    <br />
    <br />
    <br />
    <br />

        <form runat="server">
            <div class="login alert alert-dismissible alert-success">
		        <div>
			        <div class="app-title">
				        <h1><strong>Login</strong></h1>
			        </div>

			<div class="login-form">
				<div class="form-group">
                        <div class="row 50%">
                         <div class="col-md-12">
				<asp:TextBox runat="server"  type="text" class="form-control"  id="TextBoxNombreUsuario" placeholder="Nombre Usuario" Width="265px"></asp:TextBox>
				
				</div>
                            </div>
                </div>
                    </div>

				<div class="form-group">
                        <div class="row 50%">
                         <div class="col-md-12">
				 <asp:TextBox  runat="server" type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña" Width="265px"></asp:TextBox>
				</div>
				</div>
                    </div>

				<asp:Button  Id="ButtonIniciarSesion" runat="server" Text="Iniciar Sesion" class="btn btn-primary" Width="265px" OnClick="ButtonIniciarSesion_Click">  </asp:Button>
                    <div class="app-title">
				        <a href="../Registros/RegistroUsuario.aspx"><span class="auto-style1">Registrate AQUI</span></a>
                     </div>
			</div>
		
	</div>
            </form>

        <script src="/Scripts/jquery-3.1.1.intellisense.js"></script>
        <script src="/Scripts/jquery-3.1.1.slim.js"></script>
    
   
        <script src="/Scripts/jquery-3.1.1.slim.min.js"></script>
     
    </body>
</html>
