
using System;
using System.Collections.Generic;

namespace CW.Model
{
    public class menu : BaseModel<int>
    {
        public string name { get; set; }
        public string url { get; set; }
        public int? parentid { get; set; }
        public IList<menu> submenus { get; set; }
    }
}
