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
    public class DALastMatch : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.LastMatch oBELastMatch = (BEAdmin.LastMatch)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_LastMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBELastMatch.Title);
                cmd.Parameters.AddWithValue("@Description", oBELastMatch.Description);
                cmd.Parameters.AddWithValue("@ID_Image", oBELastMatch.ID_Image);
                cmd.Parameters.AddWithValue("@Date", oBELastMatch.Date);
                cmd.Parameters.AddWithValue("@Ranking", oBELastMatch.Ranking);
                cmd.Parameters.AddWithValue("@Player", oBELastMatch.Player);
                cmd.Parameters.AddWithValue("@Nation", oBELastMatch.Nation);
                cmd.Parameters.AddWithValue("@Points", oBELastMatch.Points);
                cmd.Parameters.AddWithValue("@IsEnabled", oBELastMatch.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.LastMatch oBELastMatch = (BEAdmin.LastMatch)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_LastMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBELastMatch.ID);
                cmd.Parameters.AddWithValue("@Title", oBELastMatch.Title);
                cmd.Parameters.AddWithValue("@Description", oBELastMatch.Description);
                cmd.Parameters.AddWithValue("@ID_Image", oBELastMatch.ID_Image);
                cmd.Parameters.AddWithValue("@Date", oBELastMatch.Date);
                cmd.Parameters.AddWithValue("@Ranking", oBELastMatch.Ranking);
                cmd.Parameters.AddWithValue("@Player", oBELastMatch.Player);
                cmd.Parameters.AddWithValue("@Nation", oBELastMatch.Nation);
                cmd.Parameters.AddWithValue("@Points", oBELastMatch.Points);
                cmd.Parameters.AddWithValue("@IsEnabled", oBELastMatch.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.LastMatch> RetrieveLastMatch(SqlConnection con)
        {
            List<BEAdmin.LastMatch> oBElstLastMatch = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_LastMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstLastMatch = new List<BEAdmin.LastMatch>();
                        BEAdmin.LastMatch oBELastMatch = null;
                        while (drd.Read())
                        {
                            oBELastMatch = new BEAdmin.LastMatch();
                            //oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                            oBElstLastMatch.Add(oBELastMatch);
                        }
                    }
                }
            }
            return oBElstLastMatch;
        }
        public override BEAdmin.LastMatch RetrieveLastMatchFirst(SqlConnection con, int id)
        {
            BEAdmin.LastMatch oBELastMatch = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_LastMatch_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBELastMatch = new BEAdmin.LastMatch();
                            oBELastMatch = UtilitarioConvert<BEAdmin.LastMatch>.ToLoadDataFromReader(drd, oBELastMatch);
                        }
                    }
                }
            }
            return oBELastMatch;
        }
    }
}
