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
    public class DAOrders : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Orders oBEOrders = (BEAdmin.Orders)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Orders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Client", oBEOrders.ID_Client);
                cmd.Parameters.AddWithValue("@ID_Employee", oBEOrders.ID_Employee);
                cmd.Parameters.AddWithValue("@FechaPedido", oBEOrders.FechaPedido);
                cmd.Parameters.AddWithValue("@Destinatario", oBEOrders.Destinatario);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Orders oBEOrders = (BEAdmin.Orders)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Orders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Client", oBEOrders.ID_Client);
                cmd.Parameters.AddWithValue("@ID_Employee", oBEOrders.ID_Employee);
                cmd.Parameters.AddWithValue("@FechaPedido", oBEOrders.FechaPedido);
                cmd.Parameters.AddWithValue("@Destinatario", oBEOrders.Destinatario);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Orders> RetrieveOrders(SqlConnection con)
        {
            List<BEAdmin.Orders> oBElstOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Orders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstOrders = new List<BEAdmin.Orders>();
                        BEAdmin.Orders oBEOrders = null;
                        while (drd.Read())
                        {
                            oBEOrders = new BEAdmin.Orders();
                            oBEOrders = UtilitarioConvert<BEAdmin.Orders>.ToLoadDataFromReader(drd, oBEOrders);
                            oBElstOrders.Add(oBEOrders);
                        }
                    }
                }
            }
            return oBElstOrders;
        }

        public override BEAdmin.Orders RetrieveOrdersById(SqlConnection con, int id)
        {
            BEAdmin.Orders oBEOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Orders_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEOrders = new BEAdmin.Orders();
                            oBEOrders = UtilitarioConvert<BEAdmin.Orders>.ToLoadDataFromReader(drd, oBEOrders);
                        }
                    }
                }
            }
            return oBEOrders;
        }

        public override BEAdmin.Orders RetrieveOrdersFirst(SqlConnection con)
        {
            BEAdmin.Orders oBEOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Orders_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEOrders = new BEAdmin.Orders();
                            oBEOrders = UtilitarioConvert<BEAdmin.Orders>.ToLoadDataFromReader(drd, oBEOrders);
                        }
                    }
                }
            }
            return oBEOrders;
        }
    }
}
