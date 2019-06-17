using BE;
using DA;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLDetailsOrders : BLGeneral
    {
        public int Insert(BEGeneral oBE)
        {
            int n = 0;
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DADetailsOrders();
                    n = oDAGeneral.Insert(con, oBE);
                }
                catch (Exception ex)
                {
                    Log.DateTime = DateTime.Now;
                    Log.Message = ex.Message;
                    Log.ErrorDetail = ex.StackTrace;
                    //UtilitarioConvert<BELog>.SaveFileLog(LogFile, Log);
                }
            }
            return n;
        }
        public int Update(BEGeneral oBE)
        {
            int n = 0;
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DADetailsOrders();
                    n = oDAGeneral.Update(con, oBE);
                }
                catch (Exception ex)
                {
                    Log.DateTime = DateTime.Now;
                    Log.Message = ex.Message;
                    Log.ErrorDetail = ex.StackTrace;
                    //UtilitarioConvert<BELog>.SaveFileLog(LogFile, Log);
                }
            }
            return n;
        }

        public BEResponse Retrieve()
        {
            BEResponse oBEResponse = new BEResponse();
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DADetailsOrders();
                    List<BEAdmin.DetailsOrders> oBElstDetailsOrders = oDAGeneral.RetrieveDetailsOrders(con);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBElstDetailsOrders;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los DescriptionPlayer";
                    oBEResponse.Data = null;
                    Log.DateTime = DateTime.Now;
                    Log.Message = ex.Message;
                    Log.ErrorDetail = ex.StackTrace;
                    //UtilitarioConvert<BELog>.SaveFileLog(LogFile, Log);
                }
            }
            return oBEResponse;
        }
        public BEResponse Retrieve(int id)
        {
            BEResponse oBEResponse = new BEResponse();
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DADetailsOrders();
                    BEAdmin.DetailsOrders oBEDetailsOrders = oDAGeneral.RetrieveDetailsOrdersById(con, id);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBEDetailsOrders;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los DescriptionPlayer";
                    oBEResponse.Data = null;
                    Log.DateTime = DateTime.Now;
                    Log.Message = ex.Message;
                    Log.ErrorDetail = ex.StackTrace;
                    //UtilitarioConvert<BELog>.SaveFileLog(LogFile, Log);
                }
            }
            return oBEResponse;
        }
    }
}
