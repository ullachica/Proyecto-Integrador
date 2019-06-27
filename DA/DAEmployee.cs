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
    public class DAEmployee : DAGeneral
    {
        public override int Insert(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Employee oBEEmployee = (BEAdmin.Employee)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_insert_Employee", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Nombre", oBEEmployee.Nombre);
                cmd.Parameters.AddWithValue("@Pais", oBEEmployee.Pais);
                cmd.Parameters.AddWithValue("@Cargo", oBEEmployee.Cargo);
                cmd.Parameters.AddWithValue("@Telefono", oBEEmployee.Telefono);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override int Update(SqlConnection con, BEGeneral oBE)
        {
            int n = 0;
            BEAdmin.Employee oBEEmployee = (BEAdmin.Employee)oBE;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_update_Employee", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@Nombre", oBEEmployee.Nombre);
                cmd.Parameters.AddWithValue("@Pais", oBEEmployee.Pais);
                cmd.Parameters.AddWithValue("@Cargo", oBEEmployee.Cargo);
                cmd.Parameters.AddWithValue("@Telefono", oBEEmployee.Telefono);
                n = cmd.ExecuteNonQuery();
            }
            return n;
        }

        public override List<BEAdmin.Employee> RetrieveEmployee(SqlConnection con)
        {
            List<BEAdmin.Employee> oBElstEmployee = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Employee", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {
                        oBElstEmployee = new List<BEAdmin.Employee>();
                        BEAdmin.Employee oBEEmployee = null;
                        while (drd.Read())
                        {
                            oBEEmployee = new BEAdmin.Employee();
                            oBEEmployee = UtilitarioConvert<BEAdmin.Employee>.ToLoadDataFromReader(drd, oBEEmployee);
                            oBElstEmployee.Add(oBEEmployee);
                        }
                    }
                }
            }
            return oBElstEmployee;
        }

        public override BEAdmin.Employee RetrieveEmployeeById(SqlConnection con, int id)
        {
            BEAdmin.Employee oBEEmployee = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Employee_Retrieve_ByID", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                cmd.Parameters.AddWithValue("@ID", id);
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEEmployee = new BEAdmin.Employee();
                            oBEEmployee = UtilitarioConvert<BEAdmin.Employee>.ToLoadDataFromReader(drd, oBEEmployee);
                        }
                    }
                }
            }
            return oBEEmployee;
        }

        public override BEAdmin.Employee RetrieveEmployeeFirst(SqlConnection con)
        {
            BEAdmin.Employee oBEEmployee = null;
            using (SqlCommand cmd = new SqlCommand { CommandText = "usp_list_Employee_Retrieve", Connection = con, CommandType = CommandType.StoredProcedure })
            {
                using (SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.SingleResult))
                {
                    if (drd != null && drd.HasRows)
                    {

                        while (drd.Read())
                        {
                            oBEEmployee = new BEAdmin.Employee();
                            oBEEmployee = UtilitarioConvert<BEAdmin.Employee>.ToLoadDataFromReader(drd, oBEEmployee);
                        }
                    }
                }
            }
            return oBEEmployee;
        }
    }
}
