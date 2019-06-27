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
    public class DANoticias : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Noticias oBENoticias = (BEAdmin.Noticias)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Noticias", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Image", oBENoticias.ID_Image);
                cmd.Parameters.AddWithValue("@Hyperlink", oBENoticias.Hyperlink);
                cmd.Parameters.AddWithValue("@Title", oBENoticias.Title);
                cmd.Parameters.AddWithValue("@IsEnabled", oBENoticias.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Noticias oBENoticias = (BEAdmin.Noticias)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Noticias", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBENoticias.ID);
                cmd.Parameters.AddWithValue("@ID_Image", oBENoticias.ID_Image);
                cmd.Parameters.AddWithValue("@Hyperlink", oBENoticias.Hyperlink);
                cmd.Parameters.AddWithValue("@Title", oBENoticias.Title);
                cmd.Parameters.AddWithValue("@IsEnabled", oBENoticias.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Noticias> RetrieveNoticias(SqlConnection con)
        {
            List<BEAdmin.Noticias> oBElstNoticias = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Noticias", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstNoticias = new List<BEAdmin.Noticias>();
                        BEAdmin.Noticias oBENoticias = null;
                        while (drd.Read())
                        {
                            oBENoticias = new BEAdmin.Noticias();
                            oBENoticias = UtilitarioConvert<BEAdmin.Noticias>.ToLoadDataFromReader(drd, oBENoticias);
                            oBElstNoticias.Add(oBENoticias);
                        }
                    }
                }
            }
            return oBElstNoticias;
        }
        public override BEAdmin.Noticias RetrieveNoticiasFirst(SqlConnection con, int id)
        {
            BEAdmin.Noticias oBENoticias = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Noticias_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBENoticias = new BEAdmin.Noticias();
                            oBENoticias = UtilitarioConvert<BEAdmin.Noticias>.ToLoadDataFromReader(drd, oBENoticias);
                        }
                    }
                }
            }
            return oBENoticias;
        }
        public override BEAdmin.Noticias RetrieveNoticiasFirstByID(SqlConnection con, int id)
        {
            BEAdmin.Noticias oBENoticias = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Noticias_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBENoticias = new BEAdmin.Noticias();
                            oBENoticias = UtilitarioConvert<BEAdmin.Noticias>.ToLoadDataFromReader(drd, oBENoticias);
                        }
                    }
                }
            }
            return oBENoticias;
        }

    }
}
