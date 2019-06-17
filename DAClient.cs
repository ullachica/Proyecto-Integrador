using BE;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitario;

namespace DA
{
    public class DAClient : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Client oBEClient = (BEAdmin.Client)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Client", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Nombre", oBEClient.Nombre);
                cmd.Parameters.AddWithValue("@Pais", oBEClient.Pais);
                cmd.Parameters.AddWithValue("@Telefono", oBEClient.Telefono);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Client oBEClient = (BEAdmin.Client)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Client", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBEClient.ID);
                cmd.Parameters.AddWithValue("@Nombre", oBEClient.Nombre);
                cmd.Parameters.AddWithValue("@Pais", oBEClient.Pais);
                cmd.Parameters.AddWithValue("@Telefono", oBEClient.Telefono);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Client> RetrieveClient(SqlConnection con)
        {
            List<BEAdmin.Client> oBElstClient = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Client", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstClient = new List<BEAdmin.Client>();
                        BEAdmin.Client oBEClient = null;
                        while (drd.Read())
                        {
                            oBEClient = new BEAdmin.Client();
                            oBEClient = UtilitarioConvert<BEAdmin.Client>.ToLoadDataFromReader(drd, oBEClient);
                            oBElstClient.Add(oBEClient);
                        }
                    }
                }
            }
            return oBElstClient;
        }

        public override BEAdmin.Client RetrieveClientById(SqlConnection con, int id)
        {
            BEAdmin.Client oBEClient = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Client_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEClient = new BEAdmin.Client();
                            oBEClient = UtilitarioConvert<BEAdmin.Client>.ToLoadDataFromReader(drd, oBEClient);
                        }
                    }
                }
            }
            return oBEClient;
        }

        public override BEAdmin.Client RetrieveClientFirst(SqlConnection con)
        {
            BEAdmin.Client oBEClient = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Client_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEClient = new BEAdmin.Client();
                            oBEClient = UtilitarioConvert<BEAdmin.Client>.ToLoadDataFromReader(drd, oBEClient);
                        }
                    }
                }
            }
            return oBEClient;
        }
    }
}
