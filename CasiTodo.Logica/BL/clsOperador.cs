using System;
using System.Data;
using System.Data.SqlClient;

namespace CasiTodo.Logica.BL
{
    public class clsOperador
    {
        SqlConnection _SqlConnection = null;//Me permite establecer comunicacion con la BDDT
        SqlCommand _SqlCommand = null;//Me permite ejecutar comandos SQL
        SqlDataAdapter _SqlDataAdapter = null;//Me permite adaptar un conjunto de datos SQL

        string stConexion = string.Empty;//Cadena de conexion

        SqlParameter _sqlParameter = null;

        public clsOperador()
        {
            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.getConexion();
        }

        /// <summary>
        /// Consultar Puesto
        /// </summary>
        /// <returns>Registros de Puesto</returns>
        public DataSet getConsultarOperador()
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spConsultarOperador", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_SqlCommand);
                _SqlDataAdapter.Fill(dsConsulta);

                return dsConsulta;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { _SqlConnection.Close(); }

        }
    }
}
