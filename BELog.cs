using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BELog
    {
        public DateTime DateTime { get; set; }
        public string Application { get; set; }
        public string UserName { get; set; }
        public string Message { get; set; }
        public string ErrorDetail { get; set; }
    }
}
