<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="CasiTodo.Web.Views.Clientes.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="jumbotron">
        <br>
        <div class="row">
            <div class="col-md-2">
                <img src="../../Assets/img/clientes.png" style="width: auto; height: 130px;" />
            </div>
            <div class="col-md-10">
                <h1 class="display-4"><b>Bienvenido!</b></h1>
                <p class="lead">Clientes de seguridad física y seguridad electronica</p>
            </div>
        </div>
        <div class="row" style="margin-top: 0px;">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
                <b>+</b> Añadir
            </button>
        </div>
    </div>

    <!-- Seccion 2 Ventana Modal -->
    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Añadir Cliente</h5>
                </div>
                <div class="modal-body">
                    <%-- Seccion numero UNO --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <asp:Label runat="server" ID="lblNombre" Text="Nombre"></asp:Label>
                                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvSerial" runat="server" ErrorMessage="Nombre requerido" ForeColor="Red" ControlToValidate="txtNombre" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <%-- Seccion numero DOS --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblTipoDeIdentificacion" Text="Tipo de Identificacion"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlTipoDeIdentificacion" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblNumeroDeIdentificacion" Text="Número de Identificación"></asp:Label>
                                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNumeroDeIdentificacion" runat="server" ErrorMessage="Nombre requerido" ForeColor="Red" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblTipoDeCliente" Text="Tipo de Cliente"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlTipoDeCliente" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <%-- Seccion numero TRES --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblDireccion" Text="Direccion"></asp:Label>
                                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCuenta" runat="server" ErrorMessage="Campo requerido" ForeColor="Red" ControlToValidate="txtDireccion" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                            </div>
                            <!-- DropDownList Ciudad-->
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblPuesto" Text="Ciudad"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlCiudad" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblTelefono" Text="Telefono"></asp:Label>
                                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNumero" runat="server" ErrorMessage="Campo requerido" ForeColor="Red" ControlToValidate="txtTelefono" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmNumero" runat="server" TargetControlID="txtTelefono" WatermarkText="Telefono" />
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblExtension" Text="Extension"></asp:Label>
                                <asp:TextBox runat="server" ID="txtExtension" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%-- Seccion numero CUATRO --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblCorreo" Text="Correo"></asp:Label>
                                <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblRepresentanteLegal" Text="Representante Legal"></asp:Label>
                                <asp:TextBox runat="server" ID="txtRepresentanteLegal" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%-- Seccion numero CINCO --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblEjecutivoAsignado" Text="Ejecutivo Asignado"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlEjecutivoAsignado" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblServicio" Text="Servicio"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlServicio" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblPlataforma" Text="Plataforma"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlPlataforma" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblVideoVerificacion" Text="Video Verificacion"></asp:Label>
                                <div style="margin-top: 11px;">
                                    <asp:CheckBox runat="server" ID="chkVideoVerificacion" Text=" Si" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- Seccion numero SEIS --%>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblFechaDeInicio" Text="Fecha de Inicio"></asp:Label>
                                <asp:TextBox runat="server" ID="txtFechaDeInicio" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmFechaDeInicio" runat="server" TargetControlID="txtFechaDeInicio" WatermarkText="Fecha en que inicia el servicio" />
                                <ajaxToolkit:CalendarExtender runat="server" ID="ceFechaDeInicio" TargetControlID="txtFechaDeInicio" />
                            </div>
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblFechaDeFin" Text="Fecha de Fin"></asp:Label>
                                <asp:TextBox runat="server" ID="txtFechaDeFin" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmFechaDeFin" runat="server" TargetControlID="txtFechaDeFin" WatermarkText="Fecha en que finaliza el servicio" />
                                <ajaxToolkit:CalendarExtender runat="server" ID="ceFechaDeFin" TargetControlID="txtFechaDeFin" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button runat="server" ID="btnCancelar" CssClass="btn btn-secondary" Text="Cancelar" />
                    <asp:Button runat="server" ID="btnGuardar" CssClass="btn btn-primary" Text="Guardar" />
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                <h5><i class="fas fa-table"></i>Seguridad Fisica y Monitoreo de Alarma</h5>
            </div>
            <%-- Tabla GridView --%>
            <div class="card-body">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12" style="overflow: auto">
                            <asp:GridView runat="server" ID="gvwDatos" Width="100%" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                                <Columns>
                                    <asp:TemplateField HeaderText="Operadores">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblOperador" Text='<%# Bind("Operador") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
