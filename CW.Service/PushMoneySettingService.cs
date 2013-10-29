using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.InterFace;
using CW.Core;
using System.Data;


namespace CW.Service
{
    public class PushMoneySettingService : BaseService, IPushMoneySetting
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for PushMoneySettingd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<PushMoneySetting> GetPushMoneySettings(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<PushMoneySetting> PushMoneySettings = new List<PushMoneySetting>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        PushMoneySetting PushMoneySetting = new PushMoneySetting()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            percentage = ParseStr(dr["percentage"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        PushMoneySettings.Add(PushMoneySetting);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return PushMoneySettings;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new PushMoneySetting
        /// </summary>
        /// <param name="newPushMoneySetting">new PushMoneySetting</param>
        /// <returns>new PushMoneySetting id</returns>
        public Guid Create(PushMoneySetting newPushMoneySetting)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_c {0},{1},{2},{3},{4},{5},{6},{7}"
                                        , ToQuote(newPushMoneySetting.ID)
                                        , ToQuote(newPushMoneySetting.name)
                                        , ToQuote(newPushMoneySetting.percentage)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPushMoneySetting.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newPushMoneySetting.ID;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Update an existing PushMoneySetting
        /// </summary>
        /// <param name="thisPushMoneySetting">PushMoneySetting</param>
        /// <returns>bool</returns>
        public bool Update(PushMoneySetting newPushMoneySetting)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_u {0},{1},{2},{3},{4},{5}"
                                     , ToQuote(newPushMoneySetting.ID)
                                        , ToQuote(newPushMoneySetting.name)
                                        , ToQuote(newPushMoneySetting.percentage)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPushMoneySetting.Statues)
                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Delete an existing PushMoneySetting
        /// </summary>
        /// <param name="thisPushMoneySetting">PushMoneySetting</param>
        /// <returns>bool</returns>
        public bool Delete(PushMoneySetting thisPushMoneySetting)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_d {0}"
                                       , ToQuote(thisPushMoneySetting.ID)


                                   );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        /// <summary>
        /// Check if a PushMoneySetting already exists
        /// </summary>
        /// <param name="name">PushMoneySetting Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a PushMoneySetting by id
        /// </summary>
        /// <param name="id">PushMoneySetting id</param>
        /// <returns>PushMoneySetting</returns>
        public PushMoneySetting Get(Guid id)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<PushMoneySetting> PushMoneySettings = GetPushMoneySettings(sql, 0, null, out paing);
                if (PushMoneySettings.Count > 0)
                    return PushMoneySettings[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public PushMoneySetting GetByName(string name)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_g {0},{1},{2},{3},{4}"
                             , "NULL"
                             , ToQuote(name)
                             , ToQuote(1)
                             , "NULL"
                             , "NULL"


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<PushMoneySetting> PushMoneySettings = GetPushMoneySettings(sql, 0, null, out paing);
                if (PushMoneySettings.Count > 0)
                    return PushMoneySettings[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all PushMoneySettings
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PushMoneySetting">current PushMoneySetting</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<PushMoneySetting> Get(string name, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_PushMoneySetting_g {0},{1},{2},{3},{4}"
                            , "NULL"
                             , ToQuote(name)
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<PushMoneySetting> PushMoneySettings = GetPushMoneySettings(sql, Page, null, out paing);

                return PushMoneySettings;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
