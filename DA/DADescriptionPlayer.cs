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
    public class DADescriptionPlayer : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.DescriptionPlayer oBEDescriptionPlayer = (BEAdmin.DescriptionPlayer)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_DescriptionPlayer", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Description", oBEDescriptionPlayer.Description);
                cmd.Parameters.AddWithValue("@ID_Image", oBEDescriptionPlayer.ID_Image);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEDescriptionPlayer.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.DescriptionPlayer oBEDescriptionPlayer = (BEAdmin.DescriptionPlayer)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_DescriptionPlayer", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBEDescriptionPlayer.ID);
                cmd.Parameters.AddWithValue("@Description", oBEDescriptionPlayer.Description);
                cmd.Parameters.AddWithValue("@ID_Image", oBEDescriptionPlayer.ID_Image);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEDescriptionPlayer.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.DescriptionPlayer> RetrieveDescriptionPlayer(SqlConnection con)
        {
            List<BEAdmin.DescriptionPlayer> oBElstDescriptionPlayer = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_DescriptionPlayer", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstDescriptionPlayer = new List<BEAdmin.DescriptionPlayer>();
                        BEAdmin.DescriptionPlayer oBEDescriptionPlayer = null;
                        while (drd.Read())
                        {
                            oBEDescriptionPlayer = new BEAdmin.DescriptionPlayer();
                            //oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                            oBElstDescriptionPlayer.Add(oBEDescriptionPlayer);
                        }
                    }
                }
            }
            return oBElstDescriptionPlayer;
        }

        public override BEAdmin.DescriptionPlayer RetrieveDescriptionPlayerFirst(SqlConnection con, int id)
        {
            BEAdmin.DescriptionPlayer oBEDescriptionPlayer = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_DescriptionPlayer_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEDescriptionPlayer = new BEAdmin.DescriptionPlayer();
                            oBEDescriptionPlayer = UtilitarioConvert<BEAdmin.DescriptionPlayer>.ToLoadDataFromReader(drd, oBEDescriptionPlayer);
                        }
                    }
                }
            }
            return oBEDescriptionPlayer;
        }
    }
}
