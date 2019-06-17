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
    public class DAProducts : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Products oBEProducts = (BEAdmin.Products)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Products", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBEProducts.Title);
                cmd.Parameters.AddWithValue("@Description", oBEProducts.Description);
                cmd.Parameters.AddWithValue("@Price", oBEProducts.Price);
                cmd.Parameters.AddWithValue("@ID_Image", oBEProducts.ID_Image);
                cmd.Parameters.AddWithValue("@ID_Categoria", oBEProducts.ID_Categoria);
                cmd.Parameters.AddWithValue("@Stock", oBEProducts.Stock);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEProducts.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Products oBEProducts = (BEAdmin.Products)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Products", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBEProducts.ID);
                cmd.Parameters.AddWithValue("@Title", oBEProducts.Title);
                cmd.Parameters.AddWithValue("@Description", oBEProducts.Description);
                cmd.Parameters.AddWithValue("@Price", oBEProducts.Price);
                cmd.Parameters.AddWithValue("@ID_Image", oBEProducts.ID_Image);
                cmd.Parameters.AddWithValue("@ID_Categoria", oBEProducts.ID_Categoria);
                cmd.Parameters.AddWithValue("@Stock", oBEProducts.Stock);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEProducts.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Delete(SqlConnection con, int ID)
        {
            int n = 0;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_delete_Products", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", ID);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Products> RetrieveProducts(SqlConnection con)
        {
            List<BEAdmin.Products> oBElstProducts = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Products", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstProducts = new List<BEAdmin.Products>();
                        BEAdmin.Products oBEProducts = null;
                        while (drd.Read())
                        {
                            oBEProducts = new BEAdmin.Products();
                            oBEProducts = UtilitarioConvert<BEAdmin.Products>.ToLoadDataFromReader(drd, oBEProducts);
                            oBElstProducts.Add(oBEProducts);
                        }
                    }
                }
            }
            return oBElstProducts;
        }
        public override BEAdmin.Products RetrieveProductsById(SqlConnection con, int id)
        {
            BEAdmin.Products oBEProducts = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Products_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEProducts = new BEAdmin.Products();
                            oBEProducts = UtilitarioConvert<BEAdmin.Products>.ToLoadDataFromReader(drd, oBEProducts);
                        }
                    }
                }
            }
            return oBEProducts;
        }
        public override BEAdmin.Products RetrieveProductsFirst(SqlConnection con)
        {
            BEAdmin.Products oBEProducts = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Products_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEProducts = new BEAdmin.Products();
                            oBEProducts = UtilitarioConvert<BEAdmin.Products>.ToLoadDataFromReader(drd, oBEProducts);
                        }
                    }
                }
            }
            return oBEProducts;
        }
    }
}
