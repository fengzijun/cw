// -----------------------------------------------------------------------
// <copyright file="IUserJx.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.InterFace
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CW.Model;
    using CW.Core;


    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public interface IUserJx
    {
        #region * CRUD *


        IList<UserJx> Get(string name,string company, string businesstype, int? statues, int Page, string sortKey,
                    out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
