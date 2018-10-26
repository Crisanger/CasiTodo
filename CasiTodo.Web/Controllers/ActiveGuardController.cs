using System;
using System.Data;

namespace CasiTodo.Web.Controllers
{
    public class ActiveGuardController
    {
        /// <summary>
        /// Obtiene registro de Puesto
        /// </summary>
        /// <returns>Data Puesto</returns>
        public DataSet getConsultarPuestoController()
        {
            try
            {
                Logica.BL.clsPuesto obclsPuesto = new Logica.BL.clsPuesto();
                return obclsPuesto.getConsultarPuesto();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Obtiene registro de Operador
        /// </summary>
        /// <returns>Data Operador</returns>
        public DataSet getConsultarOperadorController()
        {
            try
            {
                Logica.BL.clsOperador obclsOperador = new Logica.BL.clsOperador();
                return obclsOperador.getConsultarOperador();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

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