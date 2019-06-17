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
    public class DANextMatch : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.NextMatch oBENextMatch = (BEAdmin.NextMatch)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_NextMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBENextMatch.Title);
                cmd.Parameters.AddWithValue("@Description", oBENextMatch.Description);
                cmd.Parameters.AddWithValue("@Date", oBENextMatch.Date);
                cmd.Parameters.AddWithValue("@ID_Image", oBENextMatch.ID_Imagen);
                cmd.Parameters.AddWithValue("@IsEnabled", oBENextMatch.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.NextMatch oBENextMatch = (BEAdmin.NextMatch)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_NextMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBENextMatch.ID);
                cmd.Parameters.AddWithValue("@Title", oBENextMatch.Title);
                cmd.Parameters.AddWithValue("@Description", oBENextMatch.Description);
                cmd.Parameters.AddWithValue("@Date", oBENextMatch.Date);
                cmd.Parameters.AddWithValue("@ID_Image", oBENextMatch.ID_Imagen);
                cmd.Parameters.AddWithValue("@IsEnabled", oBENextMatch.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.NextMatch> RetrieveNextMatch(SqlConnection con)
        {
            List<BEAdmin.NextMatch> oBElstNextMatch = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_NextMatch", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstNextMatch = new List<BEAdmin.NextMatch>();
                        BEAdmin.NextMatch oBENextMatch = null;
                        while (drd.Read())
                        {
                            oBENextMatch = new BEAdmin.NextMatch();
                            //oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                            oBElstNextMatch.Add(oBENextMatch);
                        }
                    }
                }
            }
            return oBElstNextMatch;
        }
        public override BEAdmin.NextMatch RetrieveNextMatchFirst(SqlConnection con, int id)
        {
            BEAdmin.NextMatch oBENextMatch = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_NextMatch_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBENextMatch = new BEAdmin.NextMatch();
                            oBENextMatch = UtilitarioConvert<BEAdmin.NextMatch>.ToLoadDataFromReader(drd, oBENextMatch);
                        }
                    }
                }
            }
            return oBENextMatch;
        }
    }
}
