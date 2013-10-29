using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class Order : BaseModel<Guid>
    {
        public string name { get; set; }
        public string company { get; set; }
        public string projectcontent { get; set; }
        public string customername { get; set; }
        public string orderno { get; set; }
        public decimal? money { get; set; }
        public string customershortname { get; set; }
        public string time { get; set; }
        public decimal? balance { get; set; }
        public decimal? balancereduce { get; set; }
        public string balancereducereason { get; set; }
        public bool? isht { get; set; }
        public bool? iskp { get; set; }
        public string other { get; set; }
        public string remark { get; set; }
        public bool? managercheck { get; set; }
        public bool? cwcheck { get; set; }
        public decimal? zk { get; set; }
        public decimal? jsz { get; set; }
        public decimal? ml { get; set; }
        public decimal? lrmoney { get; set; }
        public string lr { get; set; }
        public bool? iszd { get; set; }
        public string parentorderno { get; set; }
        public decimal? shouldmoney { get; set; }
        public decimal? havemoney { get; set; }
        public decimal? nothavemoney { get; set; }
        public string havemoneypercentage { get; set; }
        public decimal? actualmoney { get; set; }
        public decimal? hxmoney { get; set; }
        public decimal? kpce { get; set; }
    }

    public class OrderAndKp
    {
        public Order order { get; set; }
        public Kp kp { get; set; }
    }
}
