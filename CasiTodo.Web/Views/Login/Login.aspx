<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CasiTodo.Web.Views.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />


    <!-- Bootstrap core CSS-->
    <link href="../../Assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <!-- Custom fonts for this template-->
    <link href="../../Assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template-->
    <link href="../../Assets/css/sb-admin.css" rel="stylesheet" />
    <link href="../../Assets/css/login.css" rel="stylesheet" />

    <!-- Bootstrap core JavaScript-->
    <script src="../../Assets/vendor/jquery/jquery.min.js"></script>
    <script src="../../Assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../../Assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- SwettAlert -->
    <link href="../../Assets/sweetalert/sweetalert.css" rel="stylesheet" />
    <script src="../../Assets/sweetalert/sweetalert.min.js"></script>

    <title>Iniciar Sesión</title>
</head>
<body>
    <div class="container">
        <div class="modal-dialog">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 img-login">
                        <img src="../../Assets/img/bootstrap-solid.svg" />
                    </div>
                    <form class="col-12" id="form1" runat="server">
                        <div class="form-group">
                            <div class="form-label-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Usuario"></asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <asp:CheckBox ID="chkRecordar" runat="server" Text="Recordar" />
                            </div>
                        </div>
                        <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary btn-block" Text="Ingresar" OnClick="btnAceptar_Click"/>
                    </form>
                    <br />
                </div>
            </div>
        </div>
    </div>
</body>
</html>
