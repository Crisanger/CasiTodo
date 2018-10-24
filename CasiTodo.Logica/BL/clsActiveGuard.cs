using System;
using System.Data;
using System.Data.SqlClient;

namespace CasiTodo.Logica.BL
{
    public class clsActiveGuard
    {
        SqlConnection _SqlConnection = null;//Me permite establecer comunicacion con la BDDT
        SqlCommand _SqlCommand = null;//Me permite ejecutar comandos SQL
        SqlDataAdapter _SqlDataAdapter = null;//Me permite adaptar un conjunto de datos SQL

        string stConexion = string.Empty;//Cadena de conexion

        SqlParameter _sqlParameter = null;

        public clsActiveGuard()
        {
            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.getConexion();
        }

        /// <summary>
        /// Consultar ActiveGuard
        /// </summary>
        /// <returns>Registros de ActiveGuard</returns>
        public DataSet getConsultarActiveGuard()
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spConsultarActiveGuard", _SqlConnection);
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

        /// <summary>
        /// Administrar ActiveGuard
        /// </summary>
        /// <param name="obclsActiveGuard">Objeto</param>
        /// <param name="inOpcion">Opcion de ejecucion</param>
        /// <returns>Mensaje de Operacion</returns>
        public string setAdministrarActiveGuard(Models.clsActiveGuard obclsActiveGuard, int inOpcion)
        {
            try
            {

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spAdministrarActiveGuard", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@cSerial", obclsActiveGuard.stSerial));
                _SqlCommand.Parameters.Add(new SqlParameter("@cCuenta", obclsActiveGuard.stCuenta));
                _SqlCommand.Parameters.Add(new SqlParameter("@nPuesCodigo", obclsActiveGuard.obclsPuesto));
                _SqlCommand.Parameters.Add(new SqlParameter("@cNumero", obclsActiveGuard.stNumero));
                _SqlCommand.Parameters.Add(new SqlParameter("@nOperCodigo", obclsActiveGuard.obclsOperador));
                _SqlCommand.Parameters.Add(new SqlParameter("@cBateria", obclsActiveGuard.stBateria));
                _SqlCommand.Parameters.Add(new SqlParameter("@cDescripcion", obclsActiveGuard.stDescripcion));
                _SqlCommand.Parameters.Add(new SqlParameter("@nOpcion", inOpcion));

                _sqlParameter = new SqlParameter();
                _sqlParameter.ParameterName = "@cMensaje";
                _sqlParameter.Direction = ParameterDirection.Output;
                _sqlParameter.SqlDbType = SqlDbType.VarChar;
                _sqlParameter.Size = 50;

                _SqlCommand.Parameters.Add(_sqlParameter);
                _SqlCommand.ExecuteNonQuery();


                return _sqlParameter.Value.ToString();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { _SqlConnection.Close(); }

        }

        public DataSet getEstadoActiveGuard()
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("", _SqlConnection);
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
