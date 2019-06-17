using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEResponse
    {
        public bool HasError { get; set; }
        public string ErrorMessage { get; set; }
        public object Data { get; set; }
    }
}
