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
    public class BLCarrousel : BLGeneral
    {
        public int Insert(BEGeneral oBE)
        {
            int n = 0;
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DACarrousel();
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
                    oDAGeneral = new DACarrousel();
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
                    oDAGeneral = new DACarrousel();
                    List<BEAdmin.Carrousel> oBElstCarrousel = oDAGeneral.RetrieveCarrousel(con);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBElstCarrousel;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los Carrousel";
                    oBEResponse.Data = null;
                    Log.DateTime = DateTime.Now;
                    Log.Message = ex.Message;
                    Log.ErrorDetail = ex.StackTrace;
                    //UtilitarioConvert<BELog>.SaveFileLog(LogFile, Log);
                }
            }
            return oBEResponse;
        }


        public BEResponse Retrieve(int id = 0)
        {
            BEResponse oBEResponse = new BEResponse();
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DACarrousel();
                    BEAdmin.Carrousel oBECarrousel = id== 0 ? oDAGeneral.RetrieveCarrouselFirst(con) : oDAGeneral.RetrieveCarrouselById(con, id);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBECarrousel;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los Carrousel";
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
