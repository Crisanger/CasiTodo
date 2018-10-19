using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CasiTodo.Web.Controllers
{
    public class LoginController
    {
        /// <summary>
        /// Validar Usuario
        /// </summary>
        /// <param name="obclsUsuarios">OBJETO USUARIO</param>
        /// <returns>CONFIRMACION</returns>
        public bool getValidarUsuarioController(Logica.Models.clsUsuario obclsUsuario)
        {
            try
            {
                Logica.BL.clsUsuario obclsUsuarios = new Logica.BL.clsUsuario();
                return obclsUsuarios.getValidarUsuario(obclsUsuario);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}