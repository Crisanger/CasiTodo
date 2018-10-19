using System.Configuration;
namespace CasiTodo.Logica.BL
{
    public class clsConexion
    {
        public string getConexion()
        {
            return ConfigurationManager.ConnectionStrings["Cnx"].ToString();
        }
    }
}
