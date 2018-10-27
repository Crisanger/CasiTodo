<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CasiTodo.Web.Views.Index.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <br>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-2">
                    <img src="../../Assets/img/Estadisticas.png" style="width: auto; height: 130px;" />
                </div>
                <div class="col-md-10">
                    <h1 class="display-4"><b>Bienvenido!</b></h1>
                    <p class="lead">Estadisticas generales de la empresa</p>
                </div>
            </div>
        </div>
        <!--<hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>-->
    </div>

    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                <h5><i class="fas fa-table"></i>Operadoras por dispositivo</h5>
            </div>
            <%-- Tabla GridView --%>
            <div class="card-body">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6" style="overflow: auto">
                            <asp:GridView runat="server" ID="gvwDatos" Width="100%" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                                <Columns>
                                    <asp:TemplateField HeaderText="Operadores">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblOperador" Text='<%# Bind("Operador") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cantidad">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblCantidad" Text='<%# Bind("Cantidad") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                            <asp:Button runat="server"  ID="btnExportar2" Text="Exportar Excel" CssClass="btn btn-success btn-block" OnClick="btnExportar2_Click"/>
                        </div>
                        <br />
                        <div class="col-md-6" style="overflow: auto">
                            <asp:GridView runat="server" ID="gvwDatos2" Width="100%" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                                <Columns>
                                    <asp:TemplateField HeaderText="Ejecutivo">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblEjecutivo" Text='<%# Bind("Ejecutivo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cantidad de puestos">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblCantidad2" Text='<%# Bind("Cantidad2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                            <asp:Button runat="server"  ID="btnExportar" Text="Exportar Excel" CssClass="btn btn-success btn-block" OnClick="btnExportar_Click"/>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
