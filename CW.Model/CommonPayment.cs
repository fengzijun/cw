// -----------------------------------------------------------------------
// <copyright file="CommonPayment.cs" company="">
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
    public class CommonPayment:BaseModel<Guid>
    {
        public string company { get; set; }
        public string time { get; set; }
        public decimal? money { get; set; }
        public string orderuser { get; set; }
        public bool? iscwcheck { get; set; }
        public bool? ismanagercheck { get; set; }
        public bool? istopmanagercheck { get; set; }
        public bool? isjz { get; set; }
    }
}
