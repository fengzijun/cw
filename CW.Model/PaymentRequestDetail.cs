using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CW.Model
{
    public class PaymentRequestDetail:BaseModel<Guid>
    {
        public Guid? paymentid { get; set; }
        public decimal? money { get; set; }
        public string username { get; set; }
        public string bank { get; set; }
        public string cardno { get; set; }
        public string detail { get; set; }
    }
}
