using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;


namespace CW.InterFace
{
    public interface ICustomer
    {
        #region * CRUD *

        /// <summary>
        /// Create a new Customer
        /// </summary>
        /// <param name="newCustomer">new Customer</param>
        /// <returns>new Customer id</returns>
        bool Create(Customer newCustomer);

        /// <summary>
        /// Update an existing Customer
        /// </summary>
        /// <param name="thisCustomer">Customer</param>
        /// <returns>bool</returns>
        bool Update(Customer thisCustomer);

        /// <summary>
        /// Delete an existing Customer
        /// </summary>
        /// <param name="thisCustomer">Customer</param>
        /// <returns>bool</returns>
        bool Delete(Customer thisCustomer);


        /// <summary>
        /// Check if a Customer already exists
        /// </summary>
        /// <param name="name">Customer Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a Customer by id
        /// </summary>
        /// <param name="id">Customer id</param>
        /// <returns>Customer</returns>
        Customer Get(int id);

        /// <summary>
        /// Get all Customers
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Customer">current Customer</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<Customer> Get(string name, string company,string kpname,string sh,string address,string tel,string bank,string account, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
