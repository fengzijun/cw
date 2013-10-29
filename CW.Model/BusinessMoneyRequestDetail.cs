using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class BusinessMoneyRequestDetail : BaseModel<Guid>
    {
        public Guid businessid { get; set; }
        public decimal? money { get; set; }
        public string type { get; set; }
        public string remark { get; set; }
        public string other { get; set; }
        public string maintype { get; set; }
    }
}
