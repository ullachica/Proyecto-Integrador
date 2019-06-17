using BE;
using DA;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLGeneral
    {
        public string StringConexion { get; set; }
        public BELog Log { get; set; }
        public string LogFile { get; set; }

        protected DAGeneral oDAGeneral;

        public BLGeneral()
        {
            oDAGeneral = new DAGeneral();
            LogFile = String.Format(@"{0}\Log_{1}.txt", Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Log"), DateTime.Now.ToString("yyyyMMdd_hhmmss"));
            StringConexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            Log = new BELog();
            Log.Application = Assembly.GetCallingAssembly().FullName;
            Log.UserName = Environment.UserName;
        }
    }
}
