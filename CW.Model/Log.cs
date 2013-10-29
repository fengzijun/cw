// -----------------------------------------------------------------------
// <copyright file="log.cs" company="">
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
    public class Log:BaseModel<Guid>
    {
        public string msgcontent { get; set; }
        public string type { get; set; }
    }
}
