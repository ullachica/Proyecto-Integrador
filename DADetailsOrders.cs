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
    public class DADetailsOrders : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.DetailsOrders oBEDetailsOrders = (BEAdmin.DetailsOrders)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_DetailsOrders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Pedido", oBEDetailsOrders.ID_Pedido);
                cmd.Parameters.AddWithValue("@ID_Producto", oBEDetailsOrders.ID_Producto);
                cmd.Parameters.AddWithValue("@PrecioUnidad", oBEDetailsOrders.PrecioUnidad);
                cmd.Parameters.AddWithValue("@Cantidad", oBEDetailsOrders.Cantidad);
                cmd.Parameters.AddWithValue("@Descuento", oBEDetailsOrders.Descuento);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.DetailsOrders oBEDetailsOrders = (BEAdmin.DetailsOrders)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_DetailsOrders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID_Pedido", oBEDetailsOrders.ID_Pedido);
                cmd.Parameters.AddWithValue("@ID_Producto", oBEDetailsOrders.ID_Producto);
                cmd.Parameters.AddWithValue("@PrecioUnidad", oBEDetailsOrders.PrecioUnidad);
                cmd.Parameters.AddWithValue("@Cantidad", oBEDetailsOrders.Cantidad);
                cmd.Parameters.AddWithValue("@Descuento", oBEDetailsOrders.Descuento);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.DetailsOrders> RetrieveDetailsOrders(SqlConnection con)
        {
            List<BEAdmin.DetailsOrders> oBElstDetailsOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_DetailsOrders", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstDetailsOrders = new List<BEAdmin.DetailsOrders>();
                        BEAdmin.DetailsOrders oBEDetailsOrders = null;
                        while (drd.Read())
                        {
                            oBEDetailsOrders = new BEAdmin.DetailsOrders();
                            oBEDetailsOrders = UtilitarioConvert<BEAdmin.DetailsOrders>.ToLoadDataFromReader(drd, oBEDetailsOrders);
                            oBElstDetailsOrders.Add(oBEDetailsOrders);
                        }
                    }
                }
            }
            return oBElstDetailsOrders;
        }

        public override BEAdmin.DetailsOrders RetrieveDetailsOrdersById(SqlConnection con, int id)
        {
            BEAdmin.DetailsOrders oBEDetailsOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_DetailsOrders_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEDetailsOrders = new BEAdmin.DetailsOrders();
                            oBEDetailsOrders = UtilitarioConvert<BEAdmin.DetailsOrders>.ToLoadDataFromReader(drd, oBEDetailsOrders);
                        }
                    }
                }
            }
            return oBEDetailsOrders;
        }

        public override BEAdmin.DetailsOrders RetrieveDetailsOrdersFirst(SqlConnection con)
        {
            BEAdmin.DetailsOrders oBEDetailsOrders = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_DetailsOrders_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEDetailsOrders = new BEAdmin.DetailsOrders();
                            oBEDetailsOrders = UtilitarioConvert<BEAdmin.DetailsOrders>.ToLoadDataFromReader(drd, oBEDetailsOrders);
                        }
                    }
                }
            }
            return oBEDetailsOrders;
        }
    }
}
