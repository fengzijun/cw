using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class Budget:BaseModel<Guid>
    {
        public string name { get; set; }
        public string orderno { get; set; }
        public string time { get; set; }
        public decimal? money { get; set; }
        public string manageruser { get; set; }
        public string orderuser { get; set; }
    }
}
