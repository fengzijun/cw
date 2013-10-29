using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IPaymentRequest
    {
        #region * CRUD *

        /// <summary>
        /// Create a new PaymentRequest
        /// </summary>
        /// <param name="newPaymentRequest">new PaymentRequest</param>
        /// <returns>new PaymentRequest id</returns>
        Guid Create(PaymentRequest newPaymentRequest);

        /// <summary>
        /// Update an existing PaymentRequest
        /// </summary>
        /// <param name="thisPaymentRequest">PaymentRequest</param>
        /// <returns>bool</returns>
        bool Update(PaymentRequest thisPaymentRequest);

        /// <summary>
        /// Delete an existing PaymentRequest
        /// </summary>
        /// <param name="thisPaymentRequest">PaymentRequest</param>
        /// <returns>bool</returns>
        bool Delete(PaymentRequest thisPaymentRequest);


        /// <summary>
        /// Check if a PaymentRequest already exists
        /// </summary>
        /// <param name="name">PaymentRequest Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a PaymentRequest by id
        /// </summary>
        /// <param name="id">PaymentRequest id</param>
        /// <returns>PaymentRequest</returns>
        PaymentRequest Get(Guid id);

        /// <summary>
        /// Get all PaymentRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PaymentRequest">current PaymentRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<PaymentRequest> Get(string name, string orderno, string orderuser, bool? iscwcheck, bool? ismanagerusercheck, bool? istopmanagerusercheck, bool? isjz, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
