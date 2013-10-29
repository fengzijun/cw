// -----------------------------------------------------------------------
// <copyright file="YYReport.cs" company="">
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
    public class YYReport : BaseModel<Guid>
    {

        public string company { get; set; }
        public decimal? money { get; set; }
        public decimal? othermoney { get; set; }
        public decimal? outmoney { get; set; }
        public string lr { get; set; }
        public decimal? skmoney { get; set; }
        public decimal? ysmoney { get; set; }
        public decimal? kpmoney { get; set; }
        public decimal? kpce { get; set; }
    }
}
