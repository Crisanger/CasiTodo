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

                if (string.IsNullOrEmpty(txtEmail.Text)) stMensaje += "Ingrese usuario,";
                if (string.IsNullOrEmpty(txtPassword.Text)) stMensaje += "Ingrese contraseña,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal('Error', '"+ex.Message+"', 'error') </script>");
            }
        }
    }
}