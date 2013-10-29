// -----------------------------------------------------------------------
// <copyright file="TargetAwardService.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.Service
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CW.Model;
    using CW.InterFace;
    using CW.Core;
    using System.Data;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public class TargetAwardService : BaseService, ITargetAward
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Userd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<TargetAward> GetTargetAwards(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<TargetAward> TargetAwards = new List<TargetAward>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        TargetAward TargetAward = new TargetAward()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            bdaward = ParseNDecimal(dr["bdaward"]),
                            bdmoney = ParseNDecimal(dr["bdmoney"]),
                            bdpercentage = ParseStr(dr["bdpercentage"]),
                            company = ParseStr(dr["company"]),
                            firstmoney = ParseNDecimal(dr["firstmoney"]),
                            fourpercentage = ParseStr(dr["fourpercentage"]),
                            fourmoney = ParseNDecimal(dr["fourmoney"]),
                            firstpercentage = ParseStr(dr["firstpercentage"]),
                            mainmanager = ParseStr(dr["mainmanager"]),
                            manager = ParseStr(dr["manager"]),
                            remark = ParseStr(dr["remark"]),
                            secmoney = ParseNDecimal(dr["secmoney"]),
                            secpercentage = ParseStr(dr["secpercentage"]),
                             targetaward = ParseNDecimal(dr["targetaward"]),
                            targetmoney = ParseNDecimal(dr["targetmoney"]),
                            thrmoney = ParseNDecimal(dr["thrmoney"]),
                            thrpercentage = ParseStr(dr["thrpercentage"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        TargetAwards.Add(TargetAward);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return TargetAwards;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new TargetAward
        /// </summary>
        /// <param name="newTargetAward">new TargetAward</param>
        /// <returns>new TargetAward id</returns>
        public Guid Create(TargetAward newTargetAward)
        {
            string sql = string.Format("EXEC sp_TargetAward_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23}"
                                        , ToQuote(newTargetAward.ID)
                                        , ToQuote(newTargetAward.company)
                                        , ToQuote(newTargetAward.mainmanager)
                                        , ToQuote(newTargetAward.type)
                                        , newTargetAward.targetmoney.HasValue?ToQuote(newTargetAward.targetmoney.Value):"NULL"
                                        , newTargetAward.bdmoney.HasValue ? ToQuote(newTargetAward.bdmoney.Value) : "NULL"
                                        , ToQuote(newTargetAward.manager)
                                        , newTargetAward.firstmoney.HasValue ? ToQuote(newTargetAward.firstmoney.Value) : "NULL"
                                        , ToQuote(newTargetAward.firstpercentage)
                                        , newTargetAward.secmoney.HasValue ? ToQuote(newTargetAward.secmoney.Value) : "NULL"
                                        , ToQuote(newTargetAward.secpercentage)
                                        , newTargetAward.thrmoney.HasValue ? ToQuote(newTargetAward.thrmoney.Value) : "NULL"
                                        , ToQuote(newTargetAward.thrpercentage)
                                        , newTargetAward.fourmoney.HasValue ? ToQuote(newTargetAward.fourmoney.Value) : "NULL"
                                        , ToQuote(newTargetAward.fourpercentage)
                                        , ToQuote(newTargetAward.bdpercentage)
                                        , newTargetAward.targetaward.HasValue ? ToQuote(newTargetAward.targetaward.Value) : "NULL"
                                        , newTargetAward.bdaward.HasValue ? ToQuote(newTargetAward.bdaward.Value) : "NULL"
                                        , ToQuote(newTargetAward.remark)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newTargetAward.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newTargetAward.ID;
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
        /// Update an existing TargetAward
        /// </summary>
        /// <param name="thisTargetAward">TargetAward</param>
        /// <returns>bool</returns>
        public bool Update(TargetAward newTargetAward)
        {
            string sql = string.Format("EXEC sp_TargetAward_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21}"
                                       , ToQuote(newTargetAward.ID)
                                       , ToQuote(newTargetAward.company)
                                       , ToQuote(newTargetAward.mainmanager)
                                       , ToQuote(newTargetAward.type)
                                       , newTargetAward.targetmoney.HasValue ? ToQuote(newTargetAward.targetmoney.Value) : "NULL"
                                       , newTargetAward.bdmoney.HasValue ? ToQuote(newTargetAward.bdmoney.Value) : "NULL"
                                       , ToQuote(newTargetAward.manager)
                                       , newTargetAward.firstmoney.HasValue ? ToQuote(newTargetAward.firstmoney.Value) : "NULL"
                                       , ToQuote(newTargetAward.firstpercentage)
                                       , newTargetAward.secmoney.HasValue ? ToQuote(newTargetAward.secmoney.Value) : "NULL"
                                       , ToQuote(newTargetAward.secpercentage)
                                       , newTargetAward.thrmoney.HasValue ? ToQuote(newTargetAward.thrmoney.Value) : "NULL"
                                       , ToQuote(newTargetAward.thrpercentage)
                                       , newTargetAward.fourmoney.HasValue ? ToQuote(newTargetAward.fourmoney.Value) : "NULL"
                                       , ToQuote(newTargetAward.fourpercentage)
                                       , ToQuote(newTargetAward.bdpercentage)
                                       , newTargetAward.targetaward.HasValue ? ToQuote(newTargetAward.targetaward.Value) : "NULL"
                                       , newTargetAward.bdaward.HasValue ? ToQuote(newTargetAward.bdaward.Value) : "NULL"
                                       , ToQuote(newTargetAward.remark)
                                       , ToQuote(DateTime.Now)
                                       , ToQuote(CurrentUserName)
                                       , ToQuote(newTargetAward.Statues)

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
        /// Delete an existing TargetAward
        /// </summary>
        /// <param name="thisTargetAward">TargetAward</param>
        /// <returns>bool</returns>
        public bool Delete(TargetAward thisTargetAward)
        {
            string sql = string.Format("EXEC sp_TargetAward_d {0}"
                                       , ToQuote(thisTargetAward.ID)


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
        /// Check if a TargetAward already exists
        /// </summary>
        /// <param name="name">TargetAward Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a TargetAward by id
        /// </summary>
        /// <param name="id">TargetAward id</param>
        /// <returns>TargetAward</returns>
        public TargetAward Get(Guid id)
        {
            string sql = string.Format("EXEC sp_TargetAward_g {0},{1},{2},{3}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"

                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<TargetAward> TargetAwards = GetTargetAwards(sql, 0, null, out paing);
                if (TargetAwards.Count > 0)
                    return TargetAwards[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all TargetAwards
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="TargetAward">current TargetAward</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<TargetAward> Get( int? statues, int Page, string sortKey,
             out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_TargetAward_g {0},{1},{2},{3}"
                            , "NULL"
                          
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {

                IList<TargetAward> TargetAwards = GetTargetAwards(sql, Page, null, out paing);

                return TargetAwards;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
