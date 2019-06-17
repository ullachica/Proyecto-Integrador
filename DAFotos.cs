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
    public class DAFotos : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Fotos oBEFotos = (BEAdmin.Fotos)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Fotos", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Image", oBEFotos.ID_Image);
                cmd.Parameters.AddWithValue("@Title", oBEFotos.Title);
                cmd.Parameters.AddWithValue("@Description", oBEFotos.Description);
                cmd.Parameters.AddWithValue("@Hyperlink", oBEFotos.Hyperlink);
                cmd.Parameters.AddWithValue("@Date", oBEFotos.Date);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEFotos.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Fotos oBEFotos = (BEAdmin.Fotos)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Fotos", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBEFotos.ID);
                cmd.Parameters.AddWithValue("@ID_Image", oBEFotos.ID_Image);
                cmd.Parameters.AddWithValue("@Title", oBEFotos.Title);
                cmd.Parameters.AddWithValue("@Description", oBEFotos.Description);
                cmd.Parameters.AddWithValue("@Hyperlink", oBEFotos.Hyperlink);
                cmd.Parameters.AddWithValue("@Date", oBEFotos.Date);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEFotos.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Fotos> RetrieveFotos(SqlConnection con)
        {
            List<BEAdmin.Fotos> oBElstFotos = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Fotos", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstFotos = new List<BEAdmin.Fotos>();
                        BEAdmin.Fotos oBEFotos = null;
                        while (drd.Read())
                        {
                            oBEFotos = new BEAdmin.Fotos();
                            oBEFotos = UtilitarioConvert<BEAdmin.Fotos>.ToLoadDataFromReader(drd, oBEFotos);
                            oBElstFotos.Add(oBEFotos);
                        }
                    }
                }
            }
            return oBElstFotos;
        }
        public override BEAdmin.Fotos RetrieveFotosFirst(SqlConnection con)
        {
            BEAdmin.Fotos oBEFotos = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Fotos_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEFotos = new BEAdmin.Fotos();
                            oBEFotos = UtilitarioConvert<BEAdmin.Fotos>.ToLoadDataFromReader(drd, oBEFotos);
                        }
                    }
                }
            }
            return oBEFotos;
        }

        public override BEAdmin.Fotos RetrieveFotosByID(SqlConnection con, int id)
        {
            BEAdmin.Fotos oBEFotos = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Fotos_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEFotos = new BEAdmin.Fotos();
                            oBEFotos = UtilitarioConvert<BEAdmin.Fotos>.ToLoadDataFromReader(drd, oBEFotos);
                        }
                    }
                }
            }
            return oBEFotos;
        }
    }
}
