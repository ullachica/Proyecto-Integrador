using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Utilitario
{
    public class UtilitarioConvert<T>
    {
        public static T ToLoadDataFromReader(DbDataReader oDataReader, T oBE)
        {
            foreach (PropertyInfo oProper in oBE.GetType().GetProperties())
            {
                if (DataRecordExtensions.HasColumn(oDataReader, oProper.Name))
                {
                    oProper.SetValue(oBE, GetValue(oDataReader, oProper.Name), null);
                }
            }
            return oBE;
        }

        private static object GetValue(IDataReader oReader, string ProperName)
        {
            int i = oReader.GetOrdinal(ProperName);
            Type oType = oReader.GetFieldType(i);

            if (!oReader.IsDBNull(i))
            {
                switch (oType.Name)
                {
                    case "Int32":
                        return oReader.GetInt32(i);
                    case "String":
                        return oReader.GetString(i);
                    case "Decimal":
                        return oReader.GetDecimal(i);
                    case "Boolean":
                        return oReader.GetBoolean(i);
                    case "DateTime":
                        return oReader.GetDateTime(i);
                    default:
                        return oReader.GetValue(i);
                }
            }
            return null;
        }

        public static void SaveFileLog(string FilePath, T oBE)
        {
            PropertyInfo[] oProperties = oBE.GetType().GetProperties();
            using (StreamWriter sw = new StreamWriter(FilePath, true))
            {
                foreach (PropertyInfo oProper in oProperties)
                {
                    sw.WriteLine(String.Format("{0}: {1}", oProper.Name, oProper.GetValue(oBE, null)));
                }
                sw.WriteLine("______________________________________________");
            }
        }
    }

    public static class DataRecordExtensions
    {
        public static bool HasColumn(this IDataRecord dr, string columnName)
        {
            for (int i = 0; i < dr.FieldCount; i++)
            {
                if (dr.GetName(i).Equals(columnName, StringComparison.InvariantCultureIgnoreCase))
                    return true;
            }
            return false;
        }
    }

}
