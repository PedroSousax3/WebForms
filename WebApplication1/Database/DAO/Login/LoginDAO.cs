using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Database.DAO.Login
{
    public class LoginDAO : ConnectionDatabase
    {
        public void CadastarUsuarioDAO(Models.Login login) 
        {
            try
            {
                SqlConnection conn = SqlConectar();

                SqlCommand cmd = new SqlCommand("sp_inserir_login_cliente", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@nome", login.NmCompleto);
                cmd.Parameters.AddWithValue("@email", login.DsEmail);
                cmd.Parameters.AddWithValue("@cpf", login.DsCpf);
                cmd.Parameters.AddWithValue("@nascimento", login.DtNascimento);
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

        public DataTable Listar()
        {
            try
            {
                SqlConnection conn = SqlConectar();

                SqlCommand cmd = new SqlCommand("sp_listar_login", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                
                dt.Load(dr);
                return dt;
            }
            catch (System.Exception ex)
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