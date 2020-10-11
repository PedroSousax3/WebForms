//Importações nescessarias para realizar a conexão com banco de dados
using System;
using System.Data.SqlClient;

namespace Database
{
    public class ConnectionDatabase
    {
        private string conection { get; set; }
        
        private SqlConnection GenerateConnection()
        {
            this.conection = "server=DESKTOP-HRD8TS1\\SQLEXPRESS; Database=db_teste;Integrated Security=SSPI";
            SqlConnection SqlConn = new SqlConnection(this.conection);

            return SqlConn;
        }

        public SqlConnection SqlConectar()
        {
            try 
            { 
                SqlConnection conn = this.GenerateConnection();
                conn.Open();
                return conn;
            }
            catch(System.Exception ex)
            {
                throw new ArgumentException("Não foi possivel abrir a conexão. Erro:" + ex.Message);
            }
        }        

        public void SqlDesconectar()
        {
            SqlConnection conn = this.GenerateConnection();
            conn.Close();
        }
    }
}