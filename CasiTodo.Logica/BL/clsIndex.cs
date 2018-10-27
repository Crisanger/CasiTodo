using System;
using System.Data;
using System.Data.SqlClient;

namespace CasiTodo.Logica.BL
{
    public class clsIndex
    {
        SqlConnection _SqlConnection = null;//Me permite establecer comunicacion con la BDDT
        SqlCommand _SqlCommand = null;//Me permite ejecutar comandos SQL
        SqlDataAdapter _SqlDataAdapter = null;//Me permite adaptar un conjunto de datos SQL

        string stConexion = string.Empty;//Cadena de conexion

        public clsIndex()
        {
            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.getConexion();
        }

        /// <summary>
        /// Consulta Estadisticas
        /// </summary>
        /// <param name="obclsUsuarios">Registros de Operador</param>
        /// <returns>una confirmacion</returns>
        public DataSet getEstadisticas()
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spConsultarEstadisticas", _SqlConnection);
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

        public DataSet getEstadisticas2()
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spEstadisticas2", _SqlConnection);
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
