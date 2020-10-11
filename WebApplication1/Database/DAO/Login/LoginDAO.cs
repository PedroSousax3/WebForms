using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using Database;

namespace Database.DAO.Login
{
    public class LoginDAO : ConnectionDatabase
    {
        public void InserirLoginDAO(Models.Login login) 
        {
            try
            {
                SqlConnection conn = SqlConectar();

                SqlCommand cmd = new SqlCommand("sp_inserir_login", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@usuario", login.NmUsuario);
                cmd.Parameters.AddWithValue("@senha", login.DsSenha);
                cmd.Parameters.AddWithValue("@ultimologin", login.DtUltimoLogin);

                cmd.ExecuteNonQuery();
            }
            catch(System.Exception ex)
            {
                throw new ArgumentException("Não foi possivel realizar o cadastro. Erro:" + ex.Message);
            }
            finally 
            {
                SqlDesconectar();
            }
        }
    }
}