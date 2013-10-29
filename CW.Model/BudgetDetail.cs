using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class BudgetDetail : BaseModel<Guid>
    {
        public Guid budgetid { get; set; }
        public string name { get; set; }
        public string gg { get; set; }
        public int? daynum { get; set; }
        public decimal? price { get; set; }
        public decimal? totalprice { get; set; }
        public string remark { get; set; }
    }
}
