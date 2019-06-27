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
    public class DASubscription : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Subscription oBESubscription = (BEAdmin.Subscription)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Subscription", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Description", oBESubscription.Description);
                cmd.Parameters.AddWithValue("@DescSubscription", oBESubscription.DescSubscription);
                cmd.Parameters.AddWithValue("@IsEnabled", oBESubscription.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Subscription oBESubscription = (BEAdmin.Subscription)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Subscription", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBESubscription.ID);
                cmd.Parameters.AddWithValue("@Description", oBESubscription.Description);
                cmd.Parameters.AddWithValue("@DescSubscription", oBESubscription.DescSubscription);
                cmd.Parameters.AddWithValue("@IsEnabled", oBESubscription.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Subscription> RetrieveSubscription(SqlConnection con)
        {
            List<BEAdmin.Subscription> oBElstSubscription = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Subscription", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstSubscription = new List<BEAdmin.Subscription>();
                        BEAdmin.Subscription oBESubscription = null;
                        while (drd.Read())
                        {
                            oBESubscription = new BEAdmin.Subscription();
                            //oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                            oBElstSubscription.Add(oBESubscription);
                        }
                    }
                }
            }
            return oBElstSubscription;
        }
        public override BEAdmin.Subscription RetrieveSubscriptionFirst(SqlConnection con, int id)
        {
            BEAdmin.Subscription oBESubscription = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Subscription_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBESubscription = new BEAdmin.Subscription();
                            oBESubscription = UtilitarioConvert<BEAdmin.Subscription>.ToLoadDataFromReader(drd, oBESubscription);
                        }
                    }
                }
            }
            return oBESubscription;
        }
    }
}
