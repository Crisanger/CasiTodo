using System;
using System.Data;

namespace CasiTodo.Web.Controllers
{
    public class ActiveGuardController
    {
        /// <summary>
        /// Obtiene registro de ActiveGuard
        /// </summary>
        /// <returns>Data ActiveGuard</returns>
        public DataSet getConsultarActiveGuardController()
        {
            try
            {
                Logica.BL.clsActiveGuard obclsActiveGuard = new Logica.BL.clsActiveGuard();
                return obclsActiveGuard.getConsultarActiveGuard();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Administrar ActiveGuard
        /// </summary>
        /// <param name="obclsActiveGuardModels">Objeto</param>
        /// <param name="inOpcion">Opcion de ejecucion</param>
        /// <returns>Mensaje de proceso</returns>
        public string setAdministrarActiveGuardController(Logica.Models.clsActiveGuard obclsActiveGuardModels, int inOpcion)
        {
            try
            {
                Logica.BL.clsActiveGuard obclsActiveGuard = new Logica.BL.clsActiveGuard();
                return obclsActiveGuard.setAdministrarActiveGuard(obclsActiveGuardModels, inOpcion);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}