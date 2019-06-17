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
    public class DAEstadistica : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Estadistica oBEEstadistica = (BEAdmin.Estadistica)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Estadistica", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Description", oBEEstadistica.Description);
                cmd.Parameters.AddWithValue("@Progress", oBEEstadistica.Progress);
                cmd.Parameters.AddWithValue("@Porcentaje", oBEEstadistica.Porcentaje);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEEstadistica.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Estadistica oBEEstadistica = (BEAdmin.Estadistica)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Estadistica", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Description", oBEEstadistica.Description);
                cmd.Parameters.AddWithValue("@Progress", oBEEstadistica.Progress);
                cmd.Parameters.AddWithValue("@Porcentaje", oBEEstadistica.Porcentaje);
                cmd.Parameters.AddWithValue("@IsEnabled", oBEEstadistica.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Estadistica> RetrieveEstadistica(SqlConnection con)
        {
            List<BEAdmin.Estadistica> oBElstEstadistica = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Estadistica", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstEstadistica = new List<BEAdmin.Estadistica>();
                        BEAdmin.Estadistica oBEEstadistica = null;
                        while (drd.Read())
                        {
                            oBEEstadistica = new BEAdmin.Estadistica();
                            oBEEstadistica = UtilitarioConvert<BEAdmin.Estadistica>.ToLoadDataFromReader(drd, oBEEstadistica);
                            oBElstEstadistica.Add(oBEEstadistica);
                        }
                    }
                }
            }
            return oBElstEstadistica;
        }

        public override BEAdmin.Estadistica RetrieveEstadisticaFirst(SqlConnection con, int id)
        {
            BEAdmin.Estadistica oBEEstadistica = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Estadistica_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEEstadistica = new BEAdmin.Estadistica();
                            oBEEstadistica = UtilitarioConvert<BEAdmin.Estadistica>.ToLoadDataFromReader(drd, oBEEstadistica);
                        }
                    }
                }
            }
            return oBEEstadistica;
        }
    }
}
