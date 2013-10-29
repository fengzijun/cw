
using System;
using System.Collections.Generic;


namespace CW.Model
{
    public class user : BaseModel<int>
    {

        public string username { get; set; }
        public string password { get; set; }
        public role role { get; set; }
        public string Company { get; set; }
        public string ip { get; set; }
        public DateTime? lastlogintime { get; set; }
    }
}
