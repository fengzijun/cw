using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class ReceiveMoney : BaseModel<Guid>
    {
        public string orderno { get; set; }
        public string type { get; set; }
        public decimal? money { get; set; }
        public string time { get; set; }
        public string department { get; set; }
        public decimal? receivemoney { get; set; }
        public decimal? reducemoney { get; set; }
        public string remark { get; set; }
    }
}
