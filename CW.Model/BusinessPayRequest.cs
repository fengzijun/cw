using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class BusinessPayRequest : BaseModel<Guid>
    {
        public string customername { get; set; }
        public string orderno { get; set; }
        public decimal? money { get; set; }
        public decimal? balance { get; set; }
        public decimal? hxbalance { get; set; }
        public string receivename { get; set; }
        public string account { get; set; }
        public string payway { get; set; }
        public string bank { get; set; }
        public string other { get; set; }
        public bool? ismanagercheck { get; set; }
        public bool? istopmanagercheck { get; set; }
        public bool? iscwcheck { get; set; }
        public string company { get; set; }
    }
}
