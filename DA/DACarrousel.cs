using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using Utilitario;

namespace DA
{
    public class DACarrousel : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Carrousel oBECarrousel = (BEAdmin.Carrousel)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_carrousel", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Image", oBECarrousel.ID_Image);
                cmd.Parameters.AddWithValue("@Title", oBECarrousel.Title);
                cmd.Parameters.AddWithValue("@SubTitle", oBECarrousel.SubTitle);
                cmd.Parameters.AddWithValue("@Team1", oBECarrousel.Team1);
                cmd.Parameters.AddWithValue("@Team2", oBECarrousel.Team2);
                cmd.Parameters.AddWithValue("@Hyperlink", oBECarrousel.Hyperlink);
                cmd.Parameters.AddWithValue("@IsEnabled", oBECarrousel.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Carrousel oBECarrousel = (BEAdmin.Carrousel)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_carrousel", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBECarrousel.ID);
                //cmd.Parameters.AddWithValue("@ID_Image", oBECarrousel.ID_Image);
                cmd.Parameters.AddWithValue("@Title", oBECarrousel.Title);
                cmd.Parameters.AddWithValue("@SubTitle", oBECarrousel.SubTitle);
                cmd.Parameters.AddWithValue("@Team1", oBECarrousel.Team1);
                cmd.Parameters.AddWithValue("@Team2", oBECarrousel.Team2);
                cmd.Parameters.AddWithValue("@Hyperlink", oBECarrousel.Hyperlink);
                cmd.Parameters.AddWithValue("@IsEnabled", oBECarrousel.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Carrousel> RetrieveCarrousel(SqlConnection con)
        {
            List<BEAdmin.Carrousel> oBElstCarrousel = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Carrousel", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstCarrousel = new List<BEAdmin.Carrousel>();
                        BEAdmin.Carrousel oBECarrousel = null;
                        while (drd.Read())
                        {
                            oBECarrousel = new BEAdmin.Carrousel();
                            oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                            oBElstCarrousel.Add(oBECarrousel);
                        }
                    }
                }
            }
            return oBElstCarrousel;
        }

        public override BEAdmin.Carrousel RetrieveCarrouselById(SqlConnection con, int id)
        {
            BEAdmin.Carrousel oBECarrousel = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Carrousel_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {                    
                      
                        while (drd.Read())
                        {
                            oBECarrousel = new BEAdmin.Carrousel();
                            oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                        }
                    }
                }
            }
            return oBECarrousel;
        }

        public override BEAdmin.Carrousel RetrieveCarrouselFirst(SqlConnection con)
        {
            BEAdmin.Carrousel oBECarrousel = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Carrousel_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBECarrousel = new BEAdmin.Carrousel();
                            oBECarrousel = UtilitarioConvert<BEAdmin.Carrousel>.ToLoadDataFromReader(drd, oBECarrousel);
                        }
                    }
                }
            }
            return oBECarrousel;
        }

    }
}
