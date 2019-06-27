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
    public class DATraining : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Training oBETraining = (BEAdmin.Training)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Training", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Title", oBETraining.Title);
                cmd.Parameters.AddWithValue("@SubTitle", oBETraining.SubTitle);
                cmd.Parameters.AddWithValue("@Button_Name", oBETraining.Button_Name);
                cmd.Parameters.AddWithValue("@Button_Name1", oBETraining.Button_Name1);
                cmd.Parameters.AddWithValue("@Button_Name2", oBETraining.Button_Name2);
                cmd.Parameters.AddWithValue("@IsEnabled", oBETraining.IsEnabled);
                //agregas los que faltan
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Training oBETraining = (BEAdmin.Training)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Training", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", oBETraining.ID);
                cmd.Parameters.AddWithValue("@Title", oBETraining.Title);
                cmd.Parameters.AddWithValue("@SubTitle", oBETraining.SubTitle);
                cmd.Parameters.AddWithValue("@Button_Name", oBETraining.Button_Name);
                cmd.Parameters.AddWithValue("@Button_Name1", oBETraining.Button_Name1);
                cmd.Parameters.AddWithValue("@Button_Name2", oBETraining.Button_Name2);
                cmd.Parameters.AddWithValue("@IsEnabled", oBETraining.IsEnabled);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }
        public override List<BEAdmin.Training> RetrieveTraining(SqlConnection con)
        {
            List<BEAdmin.Training> oBElstTraining = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Training", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstTraining = new List<BEAdmin.Training>();
                        BEAdmin.Training oBETraining = null;
                        while (drd.Read())
                        {
                            oBETraining = new BEAdmin.Training();
                            oBETraining = UtilitarioConvert<BEAdmin.Training>.ToLoadDataFromReader(drd, oBETraining);
                            oBElstTraining.Add(oBETraining);
                        }
                    }
                }
            }
            return oBElstTraining;
        }
        public override BEAdmin.Training RetrieveTrainingFirst(SqlConnection con, int id)
        {
            BEAdmin.Training oBETraining = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Carrousel_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBETraining = new BEAdmin.Training();
                            oBETraining = UtilitarioConvert<BEAdmin.Training>.ToLoadDataFromReader(drd, oBETraining);
                        }
                    }
                }
            }
            return oBETraining;
        }
    }
}
