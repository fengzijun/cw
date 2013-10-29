// -----------------------------------------------------------------------
// <copyright file="UserJx.cs" company="">
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
    public class UserJx:BaseModel<Guid>
    {
        public string company { get; set; }
        public string name { get; set; }
        public string businesstype { get; set; }
        public string firstsection { get; set; }
        public decimal? firstmoney { get; set; }
        public string firstcomplete { get; set; }
        public string secsection { get; set; }
        public decimal? secmoney { get; set; }
        public string seccomplete { get; set; }
        public string thrsection { get; set; }
        public decimal? thrmoney { get; set; }
        public string thrcomplete { get; set; }
        public string foursection { get; set; }
        public decimal? fourmoney { get; set; }
        public string fourcomplete { get; set; }
    }
}
