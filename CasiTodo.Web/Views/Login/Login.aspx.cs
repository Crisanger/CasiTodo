using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasiTodo.Web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', 'asdasdasdasd', 'error') </script>");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;

                if (string.IsNullOrEmpty(txtNombre.Text)) stMensaje += "Ingrese usuario,";
                if (string.IsNullOrEmpty(txtPassword.Text)) stMensaje += "Ingrese contraseña,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                Logica.Models.clsUsuario obclsUsuario = new Logica.Models.clsUsuario
                {
                    stNombre = txtNombre.Text,
                    stPassword = txtPassword.Text
                };

                Controllers.LoginController obLoginController = new Controllers.LoginController();
                bool blBandera = obLoginController.getValidarUsuarioController(obclsUsuario);

                if (blBandera) Response.Redirect("../Index/Index.aspx");
                else throw new Exception("Usuario o contraseña incorrecto");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '"+ex.Message+"', 'error') </script>");
            }
        }
    }
}