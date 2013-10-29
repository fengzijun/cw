// -----------------------------------------------------------------------
// <copyright file="OrderTzRequst.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.Model
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public class OrderTzRequest:BaseModel<Guid>
    {
        public string orderno { get; set; }
        public string customershortname { get; set; }
        public string company { get; set; }
        public string time { get; set; }
        public string name { get; set; }
        public string projectcontent { get; set; }
        public decimal? money { get; set; }
        public decimal? balance { get; set; }
        public decimal? balancereduce { get; set; }
        public string remark { get; set; }
        public bool? ismanagercheck { get; set; }
        public bool? istopmanagercheck { get; set; }
    }
}
