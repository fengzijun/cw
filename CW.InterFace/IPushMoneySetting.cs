using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IPushMoneySetting
    {
        #region * CRUD *

        /// <summary>
        /// Create a new PushMoneySetting
        /// </summary>
        /// <param name="newPushMoneySetting">new PushMoneySetting</param>
        /// <returns>new PushMoneySetting id</returns>
        Guid Create(PushMoneySetting newPushMoneySetting);

        /// <summary>
        /// Update an existing PushMoneySetting
        /// </summary>
        /// <param name="thisPushMoneySetting">PushMoneySetting</param>
        /// <returns>bool</returns>
        bool Update(PushMoneySetting thisPushMoneySetting);

        /// <summary>
        /// Delete an existing PushMoneySetting
        /// </summary>
        /// <param name="thisPushMoneySetting">PushMoneySetting</param>
        /// <returns>bool</returns>
        bool Delete(PushMoneySetting thisPushMoneySetting);


        /// <summary>
        /// Check if a PushMoneySetting already exists
        /// </summary>
        /// <param name="name">PushMoneySetting Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a PushMoneySetting by id
        /// </summary>
        /// <param name="id">PushMoneySetting id</param>
        /// <returns>PushMoneySetting</returns>
        PushMoneySetting Get(Guid id);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        PushMoneySetting GetByName(string name);
        /// <summary>
        /// Get all PushMoneySettings
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PushMoneySetting">current PushMoneySetting</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<PushMoneySetting> Get(string PushMoneySettingname, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);

        #endregion
    }
}
