using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IPaymentRequestDetail
    {
        #region * CRUD *

        /// <summary>
        /// Create a new PaymentRequestDetail
        /// </summary>
        /// <param name="newPaymentRequestDetail">new PaymentRequestDetail</param>
        /// <returns>new PaymentRequestDetail id</returns>
        Guid Create(PaymentRequestDetail newPaymentRequestDetail);

        /// <summary>
        /// Update an existing PaymentRequestDetail
        /// </summary>
        /// <param name="thisPaymentRequestDetail">PaymentRequestDetail</param>
        /// <returns>bool</returns>
        bool Update(PaymentRequestDetail thisPaymentRequestDetail);

        /// <summary>
        /// Delete an existing PaymentRequestDetail
        /// </summary>
        /// <param name="thisPaymentRequestDetail">PaymentRequestDetail</param>
        /// <returns>bool</returns>
        bool Delete(PaymentRequestDetail thisPaymentRequestDetail);


        /// <summary>
        /// Check if a PaymentRequestDetail already exists
        /// </summary>
        /// <param name="name">PaymentRequestDetail Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a PaymentRequestDetail by id
        /// </summary>
        /// <param name="id">PaymentRequestDetail id</param>
        /// <returns>PaymentRequestDetail</returns>
        PaymentRequestDetail Get(Guid id);

        /// <summary>
        /// Get all PaymentRequestDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PaymentRequestDetail">current PaymentRequestDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<PaymentRequestDetail> Get(Guid? paymentrequestid, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
