// -----------------------------------------------------------------------
// <copyright file="CommonDetail.cs" company="">
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
    public class CommonPaymentDetail:BaseModel<Guid>
    {
        public Guid? commonpaymentid { get; set; }
        public string remark { get; set; }
        public string other { get; set; }
        public string type { get; set; }
        public decimal? money { get; set; }
        public string maintype { get; set; }

    }
}
