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
    public class DACategory : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Category oBECategory = (BEAdmin.Category)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_category", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Categoria", oBECategory.Categoria);
                cmd.Parameters.AddWithValue("@Description", oBECategory.Description);
                cmd.Parameters.AddWithValue("@IsEnabled", oBECategory.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Category oBECategory = (BEAdmin.Category)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_category", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBECategory.ID);
                cmd.Parameters.AddWithValue("@Categoria", oBECategory.Categoria);
                cmd.Parameters.AddWithValue("@Descripcion", oBECategory.Description);
                cmd.Parameters.AddWithValue("@IsEnabled", oBECategory.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Category> RetrieveCategory(SqlConnection con)
        {
            List<BEAdmin.Category> oBElstCategory = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_category", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstCategory = new List<BEAdmin.Category>();
                        BEAdmin.Category oBECategory = null;
                        while (drd.Read())
                        {
                            oBECategory = new BEAdmin.Category();
                            oBECategory = UtilitarioConvert<BEAdmin.Category>.ToLoadDataFromReader(drd, oBECategory);
                            oBElstCategory.Add(oBECategory);
                        }
                    }
                }
            }
            return oBElstCategory;
        }

        public override BEAdmin.Category RetrieveCategoryById(SqlConnection con, int id)
        {
            BEAdmin.Category oBECategory = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_category_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBECategory = new BEAdmin.Category();
                            oBECategory = UtilitarioConvert<BEAdmin.Category>.ToLoadDataFromReader(drd, oBECategory);
                        }
                    }
                }
            }
            return oBECategory;
        }

        public override BEAdmin.Category RetrieveCategoryFirst(SqlConnection con)
        {
            BEAdmin.Category oBECategory = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_category_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBECategory = new BEAdmin.Category();
                            oBECategory = UtilitarioConvert<BEAdmin.Category>.ToLoadDataFromReader(drd, oBECategory);
                        }
                    }
                }
            }
            return oBECategory;
        }
    }
}
