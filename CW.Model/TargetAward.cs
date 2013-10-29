// -----------------------------------------------------------------------
// <copyright file="TargetAward.cs" company="">
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
    public class TargetAward:BaseModel<Guid>
    {
        public string company { get; set; }
        public string mainmanager { get; set; }
        public string type { get; set; }
        public decimal? targetmoney { get; set; }
        public decimal? bdmoney { get; set; }
        public string manager { get; set; }
        public decimal? firstmoney { get; set; }
        public string firstpercentage { get; set; }
        public decimal? secmoney { get; set; }
        public string secpercentage { get; set; }
        public decimal? thrmoney { get; set; }
        public string thrpercentage { get; set; }
        public decimal? fourmoney { get; set; }
        public string fourpercentage { get; set; }
        public string bdpercentage { get; set; }
        public decimal? targetaward { get; set; }
        public decimal? bdaward { get; set; }
        public string remark { get; set; }
    }
}
