using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class PaymentRequest:BaseModel<Guid>
    {
        public string name { get; set; }
        public string time { get; set; }
        public string orderno { get; set; }
        public string gysname { get; set; }
        public string company { get; set; }
        public string msgcontent { get; set; }
        public string reqesttime { get; set; }
        public string remark { get; set; }
        public string remark2 { get; set; }
        public decimal? money { get; set; }
        public string type { get; set; }
        public string orderuser { get; set; }
        public bool? iscwcheck { get; set; }
        public bool? ismanagerusercheck { get; set; }
        public bool? istopmanagerusercheck { get; set; }
        public bool? isjz { get; set; }
        public string maintype { get; set; }
    }
}
