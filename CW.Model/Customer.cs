using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class Customer : BaseModel<Guid>
    {
        public string name { get; set; }
        public string company { get; set; }
        public string kpname { get; set; }
        public string sh { get; set; }
        public string address { get; set; }
        public string tel { get; set; }
        public string bank { get; set; }
        public string account { get; set; }
        public string remark { get; set; }
    }

}
