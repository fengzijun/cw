using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class PushMoneySetting : BaseModel<Guid>
    {
        public string name { get; set; }
        public string percentage { get; set; }
    }

}
