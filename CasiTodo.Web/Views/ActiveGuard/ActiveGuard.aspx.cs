using System;
using System.Data;

namespace CasiTodo.Web.Views.ActiveGuard
{
    public partial class ActiveGuard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    Controllers.ActiveGuardController obactiveGuardController = new Controllers.ActiveGuardController();
                    DataSet dsConsulta = obactiveGuardController.getConsultarActiveGuardController();

                    if (dsConsulta.Tables[0].Rows.Count > 0) gvwDatos.DataSource = dsConsulta;
                    else gvwDatos.DataSource = null;

                    gvwDatos.DataBind();
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + ex.Message + "', 'error') </script>");
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> onClick </script>");
                string stMensaje = String.Empty;
                if (string.IsNullOrEmpty(txtSerial.Text)) stMensaje += "Ingrese Serial";

                Logica.Models.clsActiveGuard obclsActiveGuard = new Logica.Models.clsActiveGuard{
                    stSerial = txtSerial.Text,
                    stCuenta = txtCuenta.Text,
                    /*obclsPuesto = ddlPuesto.SelectedValue,*/
                    stNumero = txtNumero.Text,
                    /*obclsOperador = ddlOperador.SelectedItem,*/
                    stBateria = txtBateria.Text,
                    stDescripcion = txtDescripcion.Text

                };

                Controllers.ActiveGuardController obActiveGuardController = new Controllers.ActiveGuardController();

                if (string.IsNullOrEmpty(lblOpcion.Text)) lblOpcion.Text = "1";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + obActiveGuardController.setAdministrarActiveGuardController(obclsActiveGuard, Convert.ToInt32(lblOpcion.Text)) + "', 'success') </script>");


            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '" + ex.Message + "', 'error') </script>");
            }
        }
    }
}