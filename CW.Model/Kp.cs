using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class Kp : BaseModel<Guid>
    {
        public string orderid { get; set; }
        public string kptt { get; set; }
        public string type { get; set; }
        public string project { get; set; }
        public decimal? money { get; set; }
        public decimal? bcmoney { get; set; }
        public string company { get; set; }
        public decimal? bjsj { get; set; }
        public string remark { get; set; }
        public string other { get; set; }
        public string ywuser { get; set; }
        public string mangeridea { get; set; }
        public string mangerreason { get; set; }
        public string topmanageridea { get; set; }
        public string topmanagerreason { get; set; }
        public bool? managercheck { get; set; }
        public string customername { get; set; }
        public string customershortname { get; set; }
    }
}
