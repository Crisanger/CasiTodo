using System;
using System.Data;

namespace CasiTodo.Web.Controllers
{
    public class IndexController
    {
        /// <summary>
        /// Obtiene Estadisticas
        /// </summary>
        /// <returns>Data Estadisticas</returns>
        public DataSet getEstadisticasController()
        {
            try
            {
                /*Logica.BL.clsActiveGuard obclsActiveGuard = new Logica.BL.clsActiveGuard();
                return obclsActiveGuard.getConsultarEstadisticas();*/

                Logica.BL.clsIndex obclsIndex = new Logica.BL.clsIndex();
                return obclsIndex.getEstadisticas();
            }
            catch (Exception ex) { throw ex; }
        }

        public DataSet getEstadisticas2Controller()
        {
            try
            {
                /*Logica.BL.clsActiveGuard obclsActiveGuard = new Logica.BL.clsActiveGuard();
                return obclsActiveGuard.getConsultarEstadisticas();*/

                Logica.BL.clsIndex obclsIndex = new Logica.BL.clsIndex();
                return obclsIndex.getEstadisticas2();
            }
            catch (Exception ex) { throw ex; }
        }
    }
}