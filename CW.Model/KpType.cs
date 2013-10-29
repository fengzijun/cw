using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class KpType : BaseModel<Guid>
    {
        public string name { get; set; }
        public string type { get; set; }

        public string projectname { get; set; }
    }
}
