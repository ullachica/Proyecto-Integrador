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
    public class DATennis : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Tennis oBETennis = (BEAdmin.Tennis)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Tennis", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBETennis.Title);
                cmd.Parameters.AddWithValue("@TitleTwo", oBETennis.TitleTwo);
                cmd.Parameters.AddWithValue("@Subtitle", oBETennis.Subtitle);
                cmd.Parameters.AddWithValue("@ID_Image", oBETennis.ID_Image);
                cmd.Parameters.AddWithValue("@Date", oBETennis.Date);
                cmd.Parameters.AddWithValue("@TitleThree", oBETennis.TitleThree);
                cmd.Parameters.AddWithValue("@Description", oBETennis.Description);
                cmd.Parameters.AddWithValue("@IsEnabled", oBETennis.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Tennis oBETennis = (BEAdmin.Tennis)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Tennis", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBETennis.Title);
                cmd.Parameters.AddWithValue("@TitleTwo", oBETennis.TitleTwo);
                cmd.Parameters.AddWithValue("@Subtitle", oBETennis.Subtitle);
                cmd.Parameters.AddWithValue("@ID_Image", oBETennis.ID_Image);
                cmd.Parameters.AddWithValue("@Date", oBETennis.Date);
                cmd.Parameters.AddWithValue("@TitleThree", oBETennis.TitleThree);
                cmd.Parameters.AddWithValue("@Description", oBETennis.Description);
                cmd.Parameters.AddWithValue("@IsEnabled", oBETennis.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Tennis> RetrieveTennis(SqlConnection con)
        {
            List<BEAdmin.Tennis> oBElstTennis = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Tennis", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstTennis = new List<BEAdmin.Tennis>();
                        BEAdmin.Tennis oBETennis = null;
                        while (drd.Read())
                        {
                            oBETennis = new BEAdmin.Tennis();
                            oBETennis = UtilitarioConvert<BEAdmin.Tennis>.ToLoadDataFromReader(drd, oBETennis);
                            oBElstTennis.Add(oBETennis);
                        }
                    }
                }
            }
            return oBElstTennis;
        }
        public override BEAdmin.Tennis RetrieveTennisFirst(SqlConnection con, int id)
        {
            BEAdmin.Tennis oBETennis = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Tennis_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBETennis = new BEAdmin.Tennis();
                            oBETennis = UtilitarioConvert<BEAdmin.Tennis>.ToLoadDataFromReader(drd, oBETennis);
                        }
                    }
                }
            }
            return oBETennis;
        }
    }
}
