<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="ActiveGuard.aspx.cs" Inherits="CasiTodo.Web.Views.ActiveGuard.ActiveGuard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- SwettAlert -->
    <link href="../../Assets/sweetalert/sweetalert.css" rel="stylesheet" />
    <script src="../../Assets/sweetalert/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- Abrir Ventana modal-->
    <script>
        function abrir() {
            $('#exampleModal').modal('show');
        }
    </script>

    <!-- Seccion 1 -->
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-2">
                <img src="../../Assets/img/Activeguard.png" style="width: auto; height: 200px;" />
            </div>
            <div class="col-md-10">
                <h1 class="display-4"><b>ACTIVEGUARD</b></h1>
                <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                <p>
                    Control de rondas GPRS/SMS que facilita el control y monitoreo en tiempo real de las actividades de personal.
                </p>
                <hr class="my-4">
                <p class="lead">
                    Un sistema de control de rondas GPRS/SMS que facilita el control y monitoreo en tiempo real de las 
            actividades de personal de seguridad, equipos de reacción y supervisión y aplicaciones en general que requieran la 
            toma de decisiones inmediatas.
                </p>
            </div>
        </div>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
            <b>+</b> Añadir
        </button>
    </div>

    <!-- Seccion 2 Ventana Modal -->
    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Añadir ActiveGuard</h5>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblSerial" Text="Serial"></asp:Label>
                                <asp:TextBox runat="server" ID="txtSerial" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvSerial" runat="server" ErrorMessage="Numero requerido" ForeColor="Red" ControlToValidate="txtSerial" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmSerial" runat="server" TargetControlID="txtSerial" WatermarkText="Serial del baston" />
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblCuenta" Text="Numero de Cuenta"></asp:Label>
                                <asp:TextBox runat="server" ID="txtCuenta" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCuenta" runat="server" ErrorMessage="Numero requerido" ForeColor="Red" ControlToValidate="txtCuenta" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmCuenta" runat="server" TargetControlID="txtCuenta" WatermarkText="Numero de cuenta de Kronos" />
                            </div>
                            <!-- DropDownList Puesto-->
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblPuesto" Text="Puesto"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlPuesto" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblNumero" Text="Número"></asp:Label>
                                <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNumero" runat="server" ErrorMessage="Numero requerido" ForeColor="Red" ControlToValidate="txtNumero" ValidationGroup="ValidarRegistro"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmNumero" runat="server" TargetControlID="txtNumero" WatermarkText="Numero del baston" />
                            </div>
                            <!-- DropDownList Operador-->
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblOperador" Text="Operador"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlOperador" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="lblBateria" Text="Bateria"></asp:Label>
                                <asp:TextBox runat="server" ID="txtBateria" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmBateria" runat="server" TargetControlID="txtBateria" WatermarkText="Fecha en que se cambio" />
                                <ajaxToolkit:CalendarExtender runat="server" ID="ceBateria" TargetControlID="txtBateria" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <asp:Label runat="server" ID="lblDescripcion" Text="Descripción"></asp:Label>
                                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="twmDescripcion" runat="server" TargetControlID="txtDescripcion" WatermarkText="Información general, no es obligatorio rellenar este campo" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <asp:Button runat="server" ID="btnGuardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" ValidationGroup="ValidarRegistro" />
                </div>
            </div>
        </div>
    </div>


    <!-- Seccion 3 -->
    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                <div class="float-left">
                    <h5><i class="fas fa-table"></i>Dispositivos</h5>
                </div>
                <div class="float-right">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Buscar" aria-label="Search"
                            aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12" style="overflow: auto;width: 100%">
                            <asp:GridView runat="server" ID="gvwDatos"
                                With="100%"
                                AutoGenerateColumns="false"
                                EmptyDataText="No se encontraron registros" OnRowCommand="gvwDatos_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Serial">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblIdentificacion" Text='<%# Bind("Serial") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cuenta">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblCuenta" Text='<%# Bind("Cuenta") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%-- <asp:BoundField HeaderText="Cuenta" DataField="Cuenta" /> --%>
                                    <asp:TemplateField HeaderText="Puesto">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblPuesto" Text='<%# Bind("Puesto") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%-- <asp:BoundField HeaderText="Puesto" DataField="Puesto" /> --%>
                                    <asp:BoundField HeaderText="Numero" DataField="Numero" />
                                    <asp:TemplateField HeaderText="Operador">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblOperador" Text='<%# Bind("Operador") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%-- <asp:BoundField HeaderText="Operador" DataField="Operador" /> --%>
                                    <asp:BoundField HeaderText="Bateria" DataField="Bateria" />
                                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />

                                    <asp:TemplateField HeaderText="Opciones">
                                        <ItemTemplate>
                                            <asp:Button runat="server" ID="btnModificar" Text="Modificar" CssClass="btn btn-warning"
                                                CommandName="Editar" CommandArgument="<%# ((GridViewRow)Container).RowIndex  %>" />
                                            <asp:Button runat="server" ID="btnEliminar" Text="Eliminar" CssClass="btn btn-danger"
                                                CommandName="Eliminar" CommandArgument="<%# ((GridViewRow)Container).RowIndex  %>" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblCodigoPuesto" Text='<%# Bind("CodigoPuesto") %>'></asp:Label>
                                            <asp:Label runat="server" ID="lblCodigoOperador" Text='<%# Bind("CodigoOperador") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
