<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="ActiveGuard.aspx.cs" Inherits="CasiTodo.Web.Views.ActiveGuard.ActiveGuard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-2">
                <img src="../../Assets/img/Activeguard.png" style="width: auto; height: 200px;" />
            </div>
            <div class="col-md-10">
                <h1 class="display-4"><b>ACTIVEGUARD</b></h1>
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
    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                <div class="float-left">
                    <i class="fas fa-table"></i>Dispositivos
                </div>
                <div class="float-right">
                    <form runat="server" class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Buscar" aria-label="Search"
                                aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Opciones</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>
                                    <button class="btn btn-warning">Editar</button>
                                    <button class="btn btn-danger">Editar</button></td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>
                                    <button class="btn btn-warning">Editar</button>
                                    <button class="btn btn-danger">Editar</button></td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>Junior Technical Author</td>
                                <td>San Francisco</td>
                                <td>66</td>
                                <td>2009/01/12</td>
                                <td>
                                    <button class="btn btn-warning">Editar</button>
                                    <button class="btn btn-danger">Editar</button></td>
                            </tr>
                            <tr>
                                <td>Cedric Kelly</td>
                                <td>Senior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2012/03/29</td>
                                <td>
                                    <button class="btn btn-warning">Editar</button>
                                    <button class="btn btn-danger">Editar</button></td>
                            </tr>
                            <tr>
                                <td>Airi Satou</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>33</td>
                                <td>2008/11/28</td>
                                <td>
                                    <button class="btn btn-warning">Editar</button>
                                    <button class="btn btn-danger">Editar</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Añadir ActiveGuard</h5>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                        <div class="col-md-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control" placeholder="Ingrese nombre">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
