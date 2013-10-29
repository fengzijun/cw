using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class jxtarget : BaseModel<Guid>
    {
        public string company { get; set; }
        public string businesstype { get; set; }
        public string firstsection { get; set; }
        public string firstcomplete { get; set; }
        public string secsection { get; set; }
        public string seccomplete { get; set; }
        public string thrsection { get; set; }
        public string thrcomplete { get; set; }
        public string foursection { get; set; }
        public string fourcomplete { get; set; }
    }
}
