
using System;
using System.Collections.Generic;


namespace CW.Model
{
    public class role : BaseModel<int>
    {
        public string rolename { get; set; }
        public string menu { get; set; }
    }
}
