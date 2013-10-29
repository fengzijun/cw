using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class BusinessMoneyRequest:BaseModel<Guid>
    {
        public string orderno { get; set; }
        public string customername { get; set; }
        public string company { get; set; }
        public string projectcontent { get; set; }
        public string time { get; set; }
        public decimal? money { get; set; }
        public decimal? receivemoney { get; set; }
        public string receivetime { get; set; }
        public int? overday { get; set; }
        public string moneypercentage { get; set; }
        public decimal? businessmoney { get; set; }
        public string orderuser { get; set; }
        public bool? ismanagecheck { get; set; }
        public bool? istopmanagercheck { get; set; }
        public bool? isjz { get; set; }
    }
}
