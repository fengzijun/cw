// -----------------------------------------------------------------------
// <copyright file="MoneyReport.cs" company="">
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
    public class MoneyReport : BaseModel<Guid>
    {
        public string company { get; set; }
        public decimal? money { get; set; }
        public decimal? jyj { get; set; }
        public decimal? ysmoney { get; set; }
        public decimal? ml { get; set; }
        public string mlv { get; set; }
        public decimal? othermoney { get; set; }
        public decimal? yemoney { get; set; }
        public string yevnvarchar { get; set; }
        public decimal? dysk { get; set; }
        public decimal? yefy { get; set; }
        public decimal? sqqk { get; set; }
        public decimal? ssnk { get; set; }
        public decimal? xj { get; set; }
        public decimal? dnwqk { get; set; }
        public decimal? snwqk { get; set; }
        public decimal? xj2 { get; set; }
        public decimal? kpmoney { get; set; }
    }

    public class MoneyReportUser : BaseModel<Guid>
    {
        public string company { get; set; }
        public string username { get; set; }
        public decimal? money { get; set; }
        public decimal? jyj { get; set; }
        public decimal? ysmoney { get; set; }
        public decimal? ml { get; set; }
        public string mlv { get; set; }
        public decimal? othermoney { get; set; }
        public decimal? yemoney { get; set; }
        public string yevnvarchar { get; set; }
        public decimal? dysk { get; set; }
        public decimal? yefy { get; set; }
        public decimal? sqqk { get; set; }
        public decimal? ssnk { get; set; }
        public decimal? xj { get; set; }
        public decimal? dnwqk { get; set; }
        public decimal? snwqk { get; set; }
        public decimal? xj2 { get; set; }
        public decimal? kpmoney { get; set; }
    }
}
