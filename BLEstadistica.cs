﻿using BE;
using DA;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLEstadistica : BLGeneral
    {
        public int Insert(BEGeneral oBE)
        {
            int n = 0;
            using (SqlConnection con = new SqlConnection(StringConexion))
            {
                try
                {
                    con.Open();
                    oDAGeneral = new DAEstadistica();
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
                    oDAGeneral = new DAEstadistica();
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
                    oDAGeneral = new DAEstadistica();
                    List<BEAdmin.Estadistica> oBElstEstadistica = oDAGeneral.RetrieveEstadistica(con);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBElstEstadistica;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los Estadistica";
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
                    oDAGeneral = new DAEstadistica();
                    BEAdmin.Estadistica oBEEstadistica = oDAGeneral.RetrieveEstadisticaFirst(con, id);
                    oBEResponse.HasError = false;
                    oBEResponse.Data = oBEEstadistica;
                }
                catch (Exception ex)
                {
                    oBEResponse.HasError = true;
                    oBEResponse.ErrorMessage = "No se pudo listar los Estadistica";
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
