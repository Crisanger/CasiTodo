using System;
using System.Data;
using System.Web.UI.WebControls;

namespace CasiTodo.Web.Views.ActiveGuard
{
    public partial class ActiveGuard : System.Web.UI.Page
    {
        /// <summary>
        /// Consulta ActiveGuard
        /// </summary>
        void getActiveGuard()
        {
            try
            {
                Controllers.ActiveGuardController obactiveGuardController = new Controllers.ActiveGuardController();
                DataSet dsConsulta = obactiveGuardController.getConsultarActiveGuardController();
                DataSet dsConsultaPuesto = obactiveGuardController.getConsultarPuestoController();
                DataSet dsConsultarOperador = obactiveGuardController.getConsultarOperadorController();

                //Origen de datos
                ddlPuesto.DataSource = dsConsultaPuesto;
                ddlPuesto.DataTextField = "puesNombre"; // Lo que se muestra
                ddlPuesto.DataValueField = "puesCodigo"; // Lo que equivale
                ddlPuesto.DataBind();

                ddlOperador.DataSource = dsConsultarOperador;
                ddlOperador.DataTextField = "operNombre";
                ddlOperador.DataValueField = "operCodigo";
                ddlOperador.DataBind();

                if (dsConsulta.Tables[0].Rows.Count > 0) gvwDatos.DataSource = dsConsulta;
                else gvwDatos.DataSource = null;

                gvwDatos.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + ex.Message + "', 'error') </script>");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getActiveGuard();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = String.Empty;
                if (string.IsNullOrEmpty(txtSerial.Text)) stMensaje += "Ingrese Serial";

                Logica.Models.clsActiveGuard obclsActiveGuard = new Logica.Models.clsActiveGuard
                {
                    stSerial = txtSerial.Text,
                    stCuenta = txtCuenta.Text,
                    obclsPuesto = new Logica.Models.clsPuesto
                    {
                        inCodigo = Convert.ToInt32(ddlPuesto.SelectedValue)
                    },
                    stNumero = txtNumero.Text,
                    obclsOperador = new Logica.Models.clsOperador
                    {
                        inCodigo = Convert.ToInt32(ddlOperador.SelectedValue)
                    },
                    stBateria = txtBateria.Text,
                    stDescripcion = txtDescripcion.Text

                };

                Controllers.ActiveGuardController obActiveGuardController = new Controllers.ActiveGuardController();

                if (string.IsNullOrEmpty(lblOpcion.Text)) lblOpcion.Text = "1";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Mensaje', '" + obActiveGuardController.setAdministrarActiveGuardController(obclsActiveGuard, Convert.ToInt32(lblOpcion.Text)) + "', 'success') </script>");

                lblOpcion.Text = txtCuenta.Text = txtSerial.Text = txtNumero.Text = txtBateria.Text = txtDescripcion.Text = string.Empty;
                getActiveGuard();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + ex.Message + "', 'error') </script>");
            }
        }

        protected void gvwDatos_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            try
            {
                int inIndice = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName.Equals("Editar"))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "abrir();", true);

                    lblOpcion.Text = "2";

                    txtSerial.Text = ((Label)gvwDatos.Rows[inIndice].FindControl("lblIdentificacion")).Text;
                    txtCuenta.Text = ((Label)gvwDatos.Rows[inIndice].FindControl("lblCuenta")).Text;
                    txtNumero.Text = gvwDatos.Rows[inIndice].Cells[3].Text.Equals("&nbsp;") ? string.Empty : gvwDatos.Rows[inIndice].Cells[3].Text;
                    txtBateria.Text = gvwDatos.Rows[inIndice].Cells[5].Text.Equals("&nbsp;") ? string.Empty : gvwDatos.Rows[inIndice].Cells[5].Text;
                    txtDescripcion.Text = gvwDatos.Rows[inIndice].Cells[6].Text.Equals("&nbsp;") ? string.Empty : gvwDatos.Rows[inIndice].Cells[6].Text;
                    ddlPuesto.Text = ((Label)gvwDatos.Rows[inIndice].FindControl("lblCodigoPuesto")).Text;
                    ddlOperador.Text = ((Label)gvwDatos.Rows[inIndice].FindControl("lblCodigoOperador")).Text;
                }
                else if (e.CommandName.Equals("Eliminar"))
                {
                    lblOpcion.Text = "3";

                    Logica.Models.clsActiveGuard obclsActiveGuard = new Logica.Models.clsActiveGuard
                    {
                        stSerial = ((Label)gvwDatos.Rows[inIndice].FindControl("lblIdentificacion")).Text,
                        stCuenta = string.Empty,
                        obclsPuesto = new Logica.Models.clsPuesto
                        {
                           
                        },
                        stNumero = string.Empty,
                        obclsOperador = new Logica.Models.clsOperador
                        {
                           
                        },
                        stBateria = string.Empty,
                        stDescripcion = string.Empty
                    };

                    Controllers.ActiveGuardController obActiveGuardController = new Controllers.ActiveGuardController();

                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Mensaje', '" + obActiveGuardController.setAdministrarActiveGuardController(obclsActiveGuard, Convert.ToInt32(lblOpcion.Text)) + "', 'success') </script>");

                    lblOpcion.Text = txtCuenta.Text = txtSerial.Text = txtNumero.Text = txtBateria.Text = txtDescripcion.Text = string.Empty;
                    getActiveGuard();
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + ex.Message + "', 'error') </script>");
            }
        }
    }
}