USE [cw]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_manger]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_manger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g_manger]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_topmanger]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_topmanger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g_topmanger]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_log_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_log_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_managercheck]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_managercheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g_managercheck]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_topmanagercheck]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_topmanagercheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g_topmanagercheck]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g2]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_g]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_g]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_g]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_g]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_tj]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_tj]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_tj]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_u]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_u]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_c]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_d]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_company]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_company]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g_company]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_user]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g_user]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_u]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_c]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_u]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_c]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_d]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g2]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_u]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_c]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_d]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_c]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_d]    Script Date: 10/24/2013 23:12:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g2]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_log_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_log_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_d]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetDefSortKey]    Script Date: 10/24/2013 23:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetDefSortKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetDefSortKey]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetPageSize]    Script Date: 10/24/2013 23:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetPageSize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetPageSize]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Split]    Script Date: 10/24/2013 23:12:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_Split]
GO
/****** Object:  Table [dbo].[jx_target]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jx_target]') AND type in (N'U'))
DROP TABLE [dbo].[jx_target]
GO
/****** Object:  Table [dbo].[kp]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kp]') AND type in (N'U'))
DROP TABLE [dbo].[kp]
GO
/****** Object:  Table [dbo].[kptype]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kptype]') AND type in (N'U'))
DROP TABLE [dbo].[kptype]
GO
/****** Object:  Table [dbo].[log]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log]') AND type in (N'U'))
DROP TABLE [dbo].[log]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_menu_statues]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_statues]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type in (N'U'))
DROP TABLE [dbo].[menu]
GO
/****** Object:  Table [dbo].[moneyreport]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[moneyreport]') AND type in (N'U'))
DROP TABLE [dbo].[moneyreport]
GO
/****** Object:  Table [dbo].[order]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
DROP TABLE [dbo].[order]
GO
/****** Object:  Table [dbo].[ordertz_request]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordertz_request]') AND type in (N'U'))
DROP TABLE [dbo].[ordertz_request]
GO
/****** Object:  Table [dbo].[payment_request]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment_request]') AND type in (N'U'))
DROP TABLE [dbo].[payment_request]
GO
/****** Object:  Table [dbo].[payment_request_detail]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment_request_detail]') AND type in (N'U'))
DROP TABLE [dbo].[payment_request_detail]
GO
/****** Object:  Table [dbo].[pushmoneysetting]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pushmoneysetting]') AND type in (N'U'))
DROP TABLE [dbo].[pushmoneysetting]
GO
/****** Object:  Table [dbo].[receivemoney]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[receivemoney]') AND type in (N'U'))
DROP TABLE [dbo].[receivemoney]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_d]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_c]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_u]    Script Date: 10/24/2013 23:12:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_u]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_role_statues]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF_role_statues]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[setting]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[setting]') AND type in (N'U'))
DROP TABLE [dbo].[setting]
GO
/****** Object:  Table [dbo].[activity]    Script Date: 10/24/2013 23:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[activity]') AND type in (N'U'))
DROP TABLE [dbo].[activity]
GO
/****** Object:  Table [dbo].[budget]    Script Date: 10/24/2013 23:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budget]') AND type in (N'U'))
DROP TABLE [dbo].[budget]
GO
/****** Object:  Table [dbo].[budget_detail]    Script Date: 10/24/2013 23:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budget_detail]') AND type in (N'U'))
DROP TABLE [dbo].[budget_detail]
GO
/****** Object:  Table [dbo].[business_money_request]    Script Date: 10/24/2013 23:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_money_request]') AND type in (N'U'))
DROP TABLE [dbo].[business_money_request]
GO
/****** Object:  Table [dbo].[business_money_request_detail]    Script Date: 10/24/2013 23:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_money_request_detail]') AND type in (N'U'))
DROP TABLE [dbo].[business_money_request_detail]
GO
/****** Object:  Table [dbo].[business_pay_request]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_pay_request]') AND type in (N'U'))
DROP TABLE [dbo].[business_pay_request]
GO
/****** Object:  Table [dbo].[commonpayment]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commonpayment]') AND type in (N'U'))
DROP TABLE [dbo].[commonpayment]
GO
/****** Object:  Table [dbo].[commonpayment_detail]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commonpayment_detail]') AND type in (N'U'))
DROP TABLE [dbo].[commonpayment_detail]
GO
/****** Object:  Table [dbo].[company]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[company]') AND type in (N'U'))
DROP TABLE [dbo].[company]
GO
/****** Object:  Table [dbo].[costdetail]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costdetail]') AND type in (N'U'))
DROP TABLE [dbo].[costdetail]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 10/24/2013 23:12:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type in (N'U'))
DROP TABLE [dbo].[customer]
GO
/****** Object:  Table [dbo].[systemreport]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[systemreport]') AND type in (N'U'))
DROP TABLE [dbo].[systemreport]
GO
/****** Object:  Table [dbo].[targetaward]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[targetaward]') AND type in (N'U'))
DROP TABLE [dbo].[targetaward]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10/24/2013 23:12:43 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_user_statues]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF_user_statues]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[user_jx]    Script Date: 10/24/2013 23:12:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_jx]') AND type in (N'U'))
DROP TABLE [dbo].[user_jx]
GO
/****** Object:  Table [dbo].[yyreport]    Script Date: 10/24/2013 23:12:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[yyreport]') AND type in (N'U'))
DROP TABLE [dbo].[yyreport]
GO
/****** Object:  Table [dbo].[yyreport]    Script Date: 10/24/2013 23:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[yyreport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[yyreport](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[othermoney] [decimal](18, 2) NULL,
	[outmoney] [decimal](18, 2) NULL,
	[lr] [nvarchar](50) NULL,
	[skmoney] [decimal](18, 2) NULL,
	[ysmoney] [decimal](18, 2) NULL,
	[kpmoney] [decimal](18, 2) NULL,
	[kpce] [decimal](18, 2) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_yyreport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[user_jx]    Script Date: 10/24/2013 23:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_jx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_jx](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[businesstype] [nvarchar](50) NULL,
	[firstsection] [nvarchar](50) NULL,
	[firstmoney] [decimal](18, 2) NULL,
	[firstcomplete] [nvarchar](50) NULL,
	[secsection] [nvarchar](50) NULL,
	[secmoney] [decimal](18, 2) NULL,
	[seccomplete] [nvarchar](50) NULL,
	[thrsection] [nvarchar](50) NULL,
	[thrmoney] [decimal](18, 2) NULL,
	[thrcomplete] [nvarchar](50) NULL,
	[foursection] [nvarchar](50) NULL,
	[fourmoney] [decimal](18, 2) NULL,
	[fourcomplete] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_user_jx] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[user_jx] ([id], [name], [company], [businesstype], [firstsection], [firstmoney], [firstcomplete], [secsection], [secmoney], [seccomplete], [thrsection], [thrmoney], [thrcomplete], [foursection], [fourmoney], [fourcomplete], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'77ceb801-4447-44f6-9d8a-4a2d36c86490', N'Admin', N'苏州海易', N'房产类', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'6786.00', CAST(30.00 AS Decimal(18, 2)), N'0.44%', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', 1)
INSERT [dbo].[user_jx] ([id], [name], [company], [businesstype], [firstsection], [firstmoney], [firstcomplete], [secsection], [secmoney], [seccomplete], [thrsection], [thrmoney], [thrcomplete], [foursection], [fourmoney], [fourcomplete], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0c0cc4fc-9c81-49be-a18c-6a26fefa1ca3', N'fengzijun', N'昆山易得', N'房产类', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'213336.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', 1)
INSERT [dbo].[user_jx] ([id], [name], [company], [businesstype], [firstsection], [firstmoney], [firstcomplete], [secsection], [secmoney], [seccomplete], [thrsection], [thrmoney], [thrcomplete], [foursection], [fourmoney], [fourcomplete], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c776d9ea-d65e-4f23-8a5a-de9a90fb42b0', N'Admin', N'苏州海易', N'媒体类', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'324.00', CAST(20.00 AS Decimal(18, 2)), N'6.17%', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', 1)
INSERT [dbo].[user_jx] ([id], [name], [company], [businesstype], [firstsection], [firstmoney], [firstcomplete], [secsection], [secmoney], [seccomplete], [thrsection], [thrmoney], [thrcomplete], [foursection], [fourmoney], [fourcomplete], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'193b823d-100e-45f2-9d5d-eed6f76415e1', N'fengzijun', N'昆山易得', N'媒体类', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'0.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', N'66668109564.00', CAST(0.00 AS Decimal(18, 2)), N'0.00%', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', CAST(0x0000A25C00BB7948 AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[user]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleid] [int] NULL,
	[company] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[lastlogintime] [datetime] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NOT NULL CONSTRAINT [DF_user_statues]  DEFAULT ((1)),
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[user] ON
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (1, N'aaaa', N'123445', 8, NULL, NULL, NULL, CAST(0x0000A23D00B86DAC AS DateTime), N'Admin', CAST(0x0000A23D00EAA3F8 AS DateTime), N'Admin', 0)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (2, N'3333', N'111', 7, NULL, NULL, NULL, CAST(0x0000A23D00EAB910 AS DateTime), N'Admin', CAST(0x0000A23D00EAB910 AS DateTime), N'Admin', 0)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (3, N'admin', N'123456', 10, NULL, NULL, NULL, CAST(0x0000A23D00EB6A04 AS DateTime), N'Admin', CAST(0x0000A256014D04BC AS DateTime), N'Admin', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (4, N'test', N'1234567', 11, NULL, NULL, NULL, CAST(0x0000A256014D1E84 AS DateTime), N'Admin', CAST(0x0000A256014D1E84 AS DateTime), N'Admin', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (5, N'fengzijun', N'123456', 10, NULL, NULL, NULL, CAST(0x0000A25B00DBBA00 AS DateTime), N'admin', CAST(0x0000A25B00DBBA00 AS DateTime), N'admin', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (6, N'ffffff', N'1231333', 13, NULL, NULL, NULL, CAST(0x0000A25E01731288 AS DateTime), N'fengzijun', CAST(0x0000A25E01731288 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (7, N'adsfasdf', N'1111', 222, N'昆山易得', NULL, NULL, CAST(0x0000A25E0173AD38 AS DateTime), N'fengzijun', CAST(0x0000A25E0173AD38 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (8, N'ffffffffffff', N'eee', 12, N'昆山易得', NULL, NULL, CAST(0x0000A25E01741B60 AS DateTime), N'fengzijun', CAST(0x0000A25E01741B60 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (9, N'eeeeeeee', N'123123', 11, N'昆山易得', NULL, NULL, CAST(0x0000A25E01743078 AS DateTime), N'fengzijun', CAST(0x0000A25E01743078 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[user] ([id], [username], [password], [roleid], [company], [ip], [lastlogintime], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (10, N'cesss', N'123456', 12, N'苏州浦瑞道', NULL, NULL, CAST(0x0000A26000EDC6B4 AS DateTime), N'admin', CAST(0x0000A26000F2D0F0 AS DateTime), N'admin', 1)
SET IDENTITY_INSERT [dbo].[user] OFF
/****** Object:  Table [dbo].[targetaward]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[targetaward]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[targetaward](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[mainmanager] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[targetmoney] [decimal](18, 2) NULL,
	[bdmoney] [decimal](18, 2) NULL,
	[manager] [nvarchar](50) NULL,
	[firstmoney] [decimal](18, 2) NULL,
	[firstpercentage] [nvarchar](50) NULL,
	[secmoney] [decimal](18, 2) NULL,
	[secpercentage] [nvarchar](50) NULL,
	[thrmoney] [decimal](18, 2) NULL,
	[thrpercentage] [nvarchar](50) NULL,
	[fourmoney] [decimal](18, 2) NULL,
	[fourpercentage] [nvarchar](50) NULL,
	[bdpercentage] [nvarchar](50) NULL,
	[targetaward] [decimal](18, 2) NULL,
	[bdaward] [decimal](18, 2) NULL,
	[remark] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_targetaward] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4aad5adf-b70d-4871-9ef0-01d3fdf94cc7', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ea56dca7-6c9a-4f67-828e-0378c7e2d8ae', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'465d5b98-3f36-4278-b613-047f0c3e2b18', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7b4c0ca0-16b7-44dc-b98b-04a37357d397', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'64ee57f3-b7f5-4297-8d5e-04aa11d6430b', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'91325a7b-0c63-4f44-b45b-04fe652849e9', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'186a4ad4-b497-46bd-b329-056dfe8ae944', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8bafb369-80d5-4eb6-8c7d-0575ac1305c2', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'24c74ad3-b370-4ded-96db-08988b2fee56', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'44064895-12ef-4905-b058-0b0161dbf4de', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c56a0b5a-0e7b-498c-8c30-0c24968a24f7', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'74584331-664a-447e-bf5c-0e49142d590d', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1cdaa386-90fa-4605-8e78-0e4b9f73cb35', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2d5d27cb-7da8-4757-9d48-0f97ea9bebb1', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'cec2fe7e-ac84-4533-8397-118a7b554db5', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3872bfe9-4a74-4bd4-97ab-133e400bc5a2', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e6eeddae-9a48-4829-be8d-143b84a81afa', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'37770311-8ffc-45d5-973c-17fcd558e60a', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f912f815-81ee-46d1-b62d-1bec6ff1b56e', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f609c078-43b6-4c0d-9009-1f11bca707d0', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1c1fb007-817f-45c4-a283-1fa4fc8a241d', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2342d35f-9839-4fda-90b5-1fe64a2424b5', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'215f16a8-7b48-4358-a7a4-210700a28e3d', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f7590f98-ed83-4bb9-bc9d-23b89155e5ab', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e4a3a08a-832a-4635-a2e3-28efb8953b09', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3d2920bc-aabb-4ec7-9e6d-292f1ae9c7d6', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'26370940-c6ba-4eba-b6a3-2b05233d5d8a', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b9adcbd9-96d3-498d-9a88-2d3a0164abf3', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a2cecbc0-9ce9-475b-83ca-2d492e1fdf8d', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'24d9cb91-9e29-4e2f-b9b0-2d954db9ccc1', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6b24bdef-2f02-4149-89eb-2dc77438b761', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e09bff1a-c1bd-42a3-8cb6-2dcc53887b46', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c8df4b5d-08d4-4d7c-ab4a-2e6169b8a37e', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6bffaab0-6c17-4131-b3d4-3023a6dae044', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd06ad0aa-b4f6-49ff-9ec1-30c8f9784768', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0b7b6112-f475-4688-93fc-33299e9a79e2', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1eafdfda-8b53-47d4-8c68-34a270fb46f8', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b9599147-06bd-4891-b50d-3566beaf20d4', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'de2e46eb-1bac-403c-be9e-3767494a3edd', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b9464751-e6ea-44ce-92c8-378f2bb53a06', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'38bde543-db98-4846-8c0b-37e128c73145', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'5769665b-969e-4e93-8c61-380df8d0ca3a', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0164ec61-1663-4f71-a26e-3b5b86efe1c1', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'86c94c41-693d-41ea-8b98-3b70a948408c', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e5d1f0ea-d628-4ec7-9bcc-3e9f219f84be', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b2e459ef-d081-4739-a49f-3f5da37dd17b', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8d01a2de-57a4-43f0-ba12-44d4cf6ff3d7', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f3c4e800-bc07-468b-ac8a-464363d01bbd', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a431dcd0-6676-4d66-9c98-4931c8a7fbe4', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'80f1e98b-41c2-40d3-9c3e-494421360b72', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'90190402-6787-4d65-a904-4e64949ddb19', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'5b2ff5f9-f3df-4314-8faf-5294d18d2f1a', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7a88d261-524d-4d7c-a212-53e9b621d72f', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'dce12855-830b-4aa1-b6bc-551992288b39', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'878a0621-6922-423c-9317-552174047213', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e9878466-cb46-43d3-a3ee-5697e680ab71', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'170c8614-890d-42d6-8c50-58a2c09350e5', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f69e1f63-c2bc-483f-a081-595638a3e337', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a75bcbdc-644a-48ac-894c-5c6745664a71', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0ca65c5b-e420-40ed-a93c-5d3ebc07f103', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f95b1d73-b562-4684-8940-5d9017e49f1b', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3f2ffe02-d086-4f06-9f6b-618583aad4e1', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a6a1e012-dd07-4a40-a360-62f4b806b051', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'58a2c83b-0f62-4d3d-a33e-63a1a16ec283', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'5121cb45-1d37-44af-baa0-63aab9d7c1e4', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a7ad947b-1abc-4de5-a64e-660b6b63b7f5', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ad4f811e-59a1-49b9-b7c4-670d0f581994', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'569128fe-3632-4d5b-90c5-67bb3923bda6', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'572a83ee-6503-462e-a61d-68118eb9a1cf', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'41407066-2aab-4edc-a1c8-68b6ae7fd28a', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'113f28ba-f452-43cb-a2fa-68e725419339', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a2b8ef95-a4f3-452e-9d1b-69c9819da880', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3f6187df-a512-42c8-a98c-6b05d4cb7f01', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2b21a17e-e745-4e92-af44-6e227e07926e', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2fb1ec5b-a16b-478c-9146-6e5bbc7ddc24', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6f593ac3-fb79-489f-b03a-6e8bb8aef05d', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7d3d3f5a-153d-4742-bcb9-70be3c069c4b', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'cc67b1e5-fe41-498b-a705-783e32bafa48', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1ea01439-f224-4661-ab78-791a18774ee5', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8f01019e-2572-4f0d-91a3-7b59d58a5e0b', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'67176d7e-f2c7-46f1-874c-7bdd3a073f02', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'62fca0bb-9c45-4535-8f7e-7ccc89edb8b8', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'701140a7-a636-4755-aa5d-7d27eaba7f5b', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9d3f4e05-1bdc-434b-8f82-7e27cc69f7e7', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a25cd719-9a74-43dd-8c9c-83b177e54be0', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'84d2dfa9-16d0-4174-b8de-84d7c7dd2874', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e1c124ea-dac3-46a9-a9bf-8542dda4288b', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7cc0ae90-2663-43bb-9ca4-85ab15007970', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'334ae32d-d7bd-4f1c-82dc-85fc01724c19', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd1b59d08-63f9-4c0d-9eec-870a95a58a42', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ddd9c639-5767-4bb3-98b2-8991c5fe8286', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ca83b260-c2ba-4061-9574-8bcabcc77547', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'82930ec7-5650-4786-9b7d-8dc6f64a7b23', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9eb52665-5ef1-4bda-9bbc-909b90405528', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4fdfa5f3-b8ea-40e9-b7ce-91be4a12c40e', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'66d87d59-2e6b-4f3d-b4a4-921512f087b1', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0aa8563c-ba60-4271-97bc-932f262884e0', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'fa872916-6140-48dd-b674-9536a3b14c57', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'22619619-fd60-4722-9f81-96956ab4c29b', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'58b3d6e3-614f-470d-84aa-993d0f865d26', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3a3361ed-09b3-4cc6-8ca6-994a81acf624', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8af8bf14-05f8-444b-9d05-99906aa50572', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c2561f5b-5665-4f11-b94d-999650cf96b9', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'411e8b2e-1c79-4b7e-b028-a1ce8e03954d', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3c3b7f2d-2bb6-49fb-a863-a27fb8df4fa9', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c514bc43-6039-441a-9c3a-a42ddcdb4b7e', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e3796831-a724-42b0-bb8c-ab0a55c4eaf8', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'490f0309-87f6-48e0-af53-ac4cd4059490', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c531f52f-49a3-44e5-b908-b01ba6e6150d', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ac7d9cbc-0a5f-429d-90c3-b025bbb4f69d', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'55560f25-767c-49ca-9468-b378733fd946', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'58f390dc-73fb-441b-8f88-b383885ddba4', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'dfa21672-b0aa-42f2-83c3-b5fbf72c7c28', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'226da50a-7922-4bea-9b26-b7235bb9ab7a', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1105de79-77e6-4281-8c6d-b7371e73820a', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2ecd0211-4b96-4bc1-9495-b7e007433877', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'98cd1915-ddbc-41e6-8f0a-b88486366f00', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'381f4e22-6c78-423c-a4b7-b948704ea1a4', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0504f66b-37e2-47f9-af29-bdb53e4a2dff', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a5c666c5-95d0-4b0c-9bcf-bef1423e9d62', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'77e70f24-b800-4447-8fe1-c035c6909a53', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'962f3347-a4be-4e89-8625-c15c8eb66b3c', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1b00b43e-453d-41f6-a045-c15e4c148ef1', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'85a90fe9-1729-4b47-b007-c16791dd3f3d', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ac108c3d-414d-4a53-8820-c1d7c10b7335', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6cbec1a8-c239-44aa-92c0-c50b8b4da557', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0c451549-aaaf-4254-b003-c8a46ef565e7', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ca6df980-3dce-4671-bc7e-cceb0ed8e803', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c94de952-9d3c-40ea-8ffa-cdfa52f9e5e6', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9c24c37a-b16d-4099-9189-cef0b277b759', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9310bd00-b9b9-4c87-b14d-d0eb935f65ff', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9ff3fa29-fa28-4b90-a5bd-d27ac6c96aed', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2faffbc2-0273-480a-a952-d3fe4deea3a0', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1d8d3d70-88e3-4c4d-a2df-d4208af81d4e', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6ec5cfad-6249-4e92-970b-d44243684716', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9b0f14f5-b766-464a-a7bd-d47818a2c197', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a4826c2c-a513-4f05-8ed8-d702cfbc2f5c', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e393ad42-ad70-414d-b6d7-d918e1ad6212', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'acca0a81-a565-41df-9d45-da78c0cff522', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8cc54104-c20b-41c0-be10-daac4715f9d6', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'92f87de7-ec94-4ba6-bcdc-db928f4bae71', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4db6d953-0ee0-4675-97aa-dc202dfc1235', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ae793e87-3605-442b-831a-ded5266ce079', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'5a8e3552-1e10-4aa4-ac71-e7498416e267', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2cecd263-a3dc-437a-af1a-e8a55ccfab11', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2afc882c-a3d0-4fe9-ab38-e8c510451c46', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e9c9d58d-c7e7-4376-8e48-e9c086218372', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'da5b92cf-3dab-4a1d-90eb-ea4f068517f9', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e79bcf2e-f4a0-4aca-b35f-f03fedf6bc5f', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3063218f-49c8-4d22-acfa-f4ac1036e2b0', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'eeb3f2e6-d674-45d0-966e-f514e5378f11', N'123', N'123', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', CAST(123.00 AS Decimal(18, 2)), N'123', N'131', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500F918C0 AS DateTime), N'Admin', CAST(0x0000A25500F918C0 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1820eb8f-0c98-44e3-90db-f678e0a46c44', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'832fb4fd-223e-4285-a2a2-f79a40e07b7c', N'昆山易得', N'123123', N'房产类', CAST(1231.00 AS Decimal(18, 2)), CAST(3123.00 AS Decimal(18, 2)), N'12312', CAST(123213.00 AS Decimal(18, 2)), N'312312', CAST(12321.00 AS Decimal(18, 2)), N'3123', CAST(123123.00 AS Decimal(18, 2)), N'21312', CAST(312312.00 AS Decimal(18, 2)), N'3123123', N'123123', CAST(123123.00 AS Decimal(18, 2)), CAST(123123.00 AS Decimal(18, 2)), N'312', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', CAST(0x0000A25B00B284C8 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'655f0629-8f25-4b4e-a512-f85d72a09315', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f2801c3b-ebf4-40c0-ba68-f87c26c392c6', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'07caad78-9cf4-41af-9972-fa9e28276da2', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'191ec3ae-8889-49ec-bec8-fc37e9b61a40', N'苏州易开', N'xxxx', N'媒体类', CAST(123.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'xxxx', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(22.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', CAST(44.00 AS Decimal(18, 2)), N'6%', N'6%', CAST(123.00 AS Decimal(18, 2)), CAST(333.00 AS Decimal(18, 2)), N'4555555555', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', CAST(0x0000A25B00A19E38 AS DateTime), N'admin', 1)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8988e594-0e70-40d4-ae8c-fd156b2c8221', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e61e9c59-0b1e-4f85-8061-fd53cab9b58e', N'12314', N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(1234.00 AS Decimal(18, 2)), N'1234', N'1234', CAST(1234.00 AS Decimal(18, 2)), CAST(1234.00 AS Decimal(18, 2)), N'1234', CAST(0x0000A25500F874B0 AS DateTime), N'Admin', CAST(0x0000A25500FBD204 AS DateTime), N'Admin', 0)
INSERT [dbo].[targetaward] ([id], [company], [mainmanager], [type], [targetmoney], [bdmoney], [manager], [firstmoney], [firstpercentage], [secmoney], [secpercentage], [thrmoney], [thrpercentage], [fourmoney], [fourpercentage], [bdpercentage], [targetaward], [bdaward], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a9600cca-c6c5-4fb3-8b43-fd596826e677', N'111', N'222', NULL, CAST(444.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), N'666', CAST(777.00 AS Decimal(18, 2)), N'888', NULL, N'000', CAST(111.00 AS Decimal(18, 2)), N'222', CAST(333.00 AS Decimal(18, 2)), N'444', N'555', CAST(666.00 AS Decimal(18, 2)), CAST(777.00 AS Decimal(18, 2)), N'888', CAST(0x0000A25500F57198 AS DateTime), N'Admin', CAST(0x0000A25500F57198 AS DateTime), N'Admin', 0)
/****** Object:  Table [dbo].[systemreport]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[systemreport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[systemreport](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[yymoney] [decimal](18, 2) NULL,
	[gzjl] [decimal](18, 2) NULL,
	[fl] [decimal](18, 2) NULL,
	[cl] [decimal](18, 2) NULL,
	[bg] [decimal](18, 2) NULL,
	[fzwy] [decimal](18, 2) NULL,
	[yd] [decimal](18, 2) NULL,
	[yw] [decimal](18, 2) NULL,
	[zd] [decimal](18, 2) NULL,
	[bgzc] [decimal](18, 2) NULL,
	[wl] [decimal](18, 2) NULL,
	[other] [decimal](18, 2) NULL,
	[xj] [decimal](18, 2) NULL,
	[hd] [decimal](18, 2) NULL,
	[cd] [decimal](18, 2) NULL,
	[cdbz] [decimal](18, 2) NULL,
	[mtdl] [decimal](18, 2) NULL,
	[xj2] [decimal](18, 2) NULL,
	[hj] [decimal](18, 2) NULL,
	[gzjjl] [decimal](18, 2) NULL,
	[clf] [decimal](18, 2) NULL,
	[bgf] [decimal](18, 2) NULL,
	[ywf] [decimal](18, 2) NULL,
	[sbf] [decimal](18, 2) NULL,
	[ydf] [decimal](18, 2) NULL,
	[bzf] [decimal](18, 2) NULL,
	[other2] [decimal](18, 2) NULL,
	[xj3] [decimal](18, 2) NULL,
	[hd2] [decimal](18, 2) NULL,
	[cd2] [decimal](18, 2) NULL,
	[cdbz2] [decimal](18, 2) NULL,
	[mtdl2] [decimal](18, 2) NULL,
	[xj4] [decimal](18, 2) NULL,
	[yhsxf] [decimal](18, 2) NULL,
	[lxsz] [decimal](18, 2) NULL,
	[xj5] [decimal](18, 2) NULL,
	[yxs] [decimal](18, 2) NULL,
	[qysds] [decimal](18, 2) NULL,
	[hj2] [decimal](18, 2) NULL,
	[zhj] [decimal](18, 2) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_systemreport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[customer]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[customer](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[company] [nvarchar](100) NULL,
	[kpname] [nvarchar](50) NULL,
	[sh] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[account] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[customer] ([id], [name], [company], [kpname], [sh], [address], [tel], [bank], [account], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b18cb989-e732-4abd-b0d7-2b49677d5895', N'宝骏', N'昆山市骏菱汽车销售服务有限公司', N'昆山市骏菱汽车销售服务有限公司', N'320583573760461', N'昆山市巴城镇城北西路2666号', N'0512-57785050', N'建设银行北门分理处', N'32201986478051510597', NULL, CAST(0x0000A2470169AF04 AS DateTime), N'Admin', CAST(0x0000A2470169AF04 AS DateTime), N'Admin', 1)
INSERT [dbo].[customer] ([id], [name], [company], [kpname], [sh], [address], [tel], [bank], [account], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3d284729-2d15-4d80-ac68-68f5fc4dca4c', N'雪佛兰', N'昆山华阳汽车贸易服务有限公司', N'昆山华阳汽车贸易服务有限公司', N'320583769887261', N'昆山开发区长江南路1131号', N'0512-86160666', N'昆山农村商业银行震川支行', N'7066500621120100255289', NULL, CAST(0x0000A2470169DDE4 AS DateTime), N'Admin', CAST(0x0000A2470169DDE4 AS DateTime), N'Admin', 0)
INSERT [dbo].[customer] ([id], [name], [company], [kpname], [sh], [address], [tel], [bank], [account], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd19398a6-9cdd-4059-ae1c-6c7b7215b6f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A2430169C9F8 AS DateTime), N'Admin', CAST(0x0000A2430169C9F8 AS DateTime), N'Admin', 0)
/****** Object:  Table [dbo].[costdetail]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costdetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[costdetail](
	[id] [uniqueidentifier] NOT NULL,
	[orderid] [uniqueidentifier] NULL,
	[name] [nvarchar](50) NULL,
	[gg] [nvarchar](50) NULL,
	[daynum] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_costdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'costdetail', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动执行预（决)算表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'costdetail', @level2type=N'COLUMN',@level2name=N'id'
GO
/****** Object:  Table [dbo].[company]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[company](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[states] [int] NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[company] ([id], [company], [createtime], [createby], [updatetime], [updateby], [states]) VALUES (N'e86cc9e9-61fc-4cea-b769-097db5864b75', N'苏州易开', CAST(0x0000A25C014B618E AS DateTime), N'admin', CAST(0x0000A25C014B618E AS DateTime), N'admin', 1)
INSERT [dbo].[company] ([id], [company], [createtime], [createby], [updatetime], [updateby], [states]) VALUES (N'c80af4c4-f381-42fc-bb1e-175da9589bd9', N'苏州海易', CAST(0x0000A25C014B69FD AS DateTime), N'admin', CAST(0x0000A25C014B69FD AS DateTime), N'admin', 1)
INSERT [dbo].[company] ([id], [company], [createtime], [createby], [updatetime], [updateby], [states]) VALUES (N'6d7b0cbb-e4d4-4c7e-acad-39abe4ec1c78', N'太仓易开', CAST(0x0000A25C014B7976 AS DateTime), N'admin', CAST(0x0000A25C014B7976 AS DateTime), N'admin', 1)
INSERT [dbo].[company] ([id], [company], [createtime], [createby], [updatetime], [updateby], [states]) VALUES (N'2ab16def-f120-4645-9228-cfdeaa2e61c9', N'昆山易得', CAST(0x0000A25C014B5543 AS DateTime), N'admin', CAST(0x0000A25C014B5543 AS DateTime), N'admin', 1)
INSERT [dbo].[company] ([id], [company], [createtime], [createby], [updatetime], [updateby], [states]) VALUES (N'9417277e-8dc9-4da8-bc8d-ec485b87d42f', N'苏州浦瑞道', CAST(0x0000A25C014B7216 AS DateTime), N'admin', CAST(0x0000A25C014B7216 AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[commonpayment_detail]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commonpayment_detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[commonpayment_detail](
	[id] [uniqueidentifier] NOT NULL,
	[commonpaymentid] [uniqueidentifier] NULL,
	[remark] [nvarchar](50) NULL,
	[other] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[maintype] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_commonpayment_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[commonpayment_detail] ([id], [commonpaymentid], [remark], [other], [type], [maintype], [money], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'77bbd6f4-c632-43f0-9382-2f245a2d017b', N'e0842165-c419-41c0-af2f-f09eb59d772f', N'23', N'4444', N'营业费用', NULL, CAST(111.00 AS Decimal(18, 2)), CAST(0x0000A25A00AF2FA8 AS DateTime), N'admin', CAST(0x0000A25A00AF2FA8 AS DateTime), N'admin', 1)
INSERT [dbo].[commonpayment_detail] ([id], [commonpaymentid], [remark], [other], [type], [maintype], [money], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2b813e56-0833-4ba3-a377-d0ae3bfb5199', N'aee60a25-9b91-4a83-ac3e-de386ab568cc', N'223', N'33', N'22', NULL, CAST(123.00 AS Decimal(18, 2)), CAST(0x0000A25200EFA984 AS DateTime), N'Admin', CAST(0x0000A25200EFA984 AS DateTime), N'Admin', 1)
INSERT [dbo].[commonpayment_detail] ([id], [commonpaymentid], [remark], [other], [type], [maintype], [money], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e22c497e-a6f9-46c6-b547-fcac4daa372d', N'586859eb-2b44-4766-8492-3b9427f30268', N'213', N'123', N'营业费用', N'现金支出', CAST(111.00 AS Decimal(18, 2)), CAST(0x0000A25A00AFE1C8 AS DateTime), N'admin', CAST(0x0000A25A00AFE1C8 AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[commonpayment]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commonpayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[commonpayment](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[orderuser] [nvarchar](50) NULL,
	[iscwcheck] [bit] NULL,
	[ismanagercheck] [bit] NULL,
	[istopmanagercheck] [bit] NULL,
	[isjz] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_commonpayment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'51276893-63cc-41cc-9cc7-28d3ce83b3b6', N'asdfdsa', N'2013-10-18 00:00:00', CAST(123.00 AS Decimal(18, 2)), N'asdfsf', 0, 0, 0, 0, CAST(0x0000A25200EDD140 AS DateTime), N'Admin', CAST(0x0000A25200EDD140 AS DateTime), N'Admin', 1)
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'586859eb-2b44-4766-8492-3b9427f30268', N'昆山易得', N'2013-10-18 00:00:00', CAST(111.00 AS Decimal(18, 2)), N'123', 0, 0, 0, 0, CAST(0x0000A25A00AFE1C8 AS DateTime), N'admin', CAST(0x0000A25A00AFE1C8 AS DateTime), N'admin', 1)
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'38f9f5ac-7210-4fba-96df-c61f4c3803cd', N'asdfdsa', N'2013-10-18 00:00:00', CAST(123.00 AS Decimal(18, 2)), N'asdfsf', 0, 0, 0, 0, CAST(0x0000A25200EE50FC AS DateTime), N'Admin', CAST(0x0000A25200EE50FC AS DateTime), N'Admin', 1)
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'aee60a25-9b91-4a83-ac3e-de386ab568cc', N'asdfdsa', N'2013/10/18 0:00:00', CAST(123.00 AS Decimal(18, 2)), N'asdfsf', 0, 1, 1, 0, CAST(0x0000A25200EFA3A8 AS DateTime), N'Admin', CAST(0x0000A25401744914 AS DateTime), N'Admin', 1)
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e0842165-c419-41c0-af2f-f09eb59d772f', N'昆山易得', N'2013-10-17 00:00:00', CAST(111.00 AS Decimal(18, 2)), N'41313123', 0, 0, 0, 0, CAST(0x0000A25A00AF2FA8 AS DateTime), N'admin', CAST(0x0000A25A00AF2FA8 AS DateTime), N'admin', 1)
INSERT [dbo].[commonpayment] ([id], [company], [time], [money], [orderuser], [iscwcheck], [ismanagercheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8f42757f-bf4e-4b9b-bff9-f52ba60cde5e', N'asdfdsa', N'2013-10-18 00:00:00', CAST(123.00 AS Decimal(18, 2)), N'asdfsf', 0, 0, 0, 0, CAST(0x0000A25200EF0B50 AS DateTime), N'Admin', CAST(0x0000A25200EF0B50 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[business_pay_request]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_pay_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[business_pay_request](
	[id] [uniqueidentifier] NOT NULL,
	[orderno] [nvarchar](50) NULL,
	[customername] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[balance] [decimal](18, 2) NULL,
	[hxbalance] [decimal](18, 2) NULL,
	[receivename] [nvarchar](50) NULL,
	[account] [nvarchar](50) NULL,
	[payway] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[other] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[ismanagercheck] [bit] NULL,
	[istopmanagercheck] [bit] NULL,
	[iscwcheck] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_business_pay_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'business_pay_request', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务费申请' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'business_pay_request', @level2type=N'COLUMN',@level2name=N'id'
GO
INSERT [dbo].[business_pay_request] ([id], [orderno], [customername], [money], [balance], [hxbalance], [receivename], [account], [payway], [bank], [other], [company], [ismanagercheck], [istopmanagercheck], [iscwcheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'499e6a98-2bdd-4486-acb8-01bf89e1261b', N'20131018220709', N'86786', CAST(86786.00 AS Decimal(18, 2)), CAST(66666666666.00 AS Decimal(18, 2)), CAST(233335.00 AS Decimal(18, 2)), N'1231235', N'123123125', N'131235', N'1231235', N'31231231231235', N'太仓易开', 0, 0, 0, CAST(0x0000A25C00015504 AS DateTime), N'fengzijun', CAST(0x0000A25C00031A88 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[business_pay_request] ([id], [orderno], [customername], [money], [balance], [hxbalance], [receivename], [account], [payway], [bank], [other], [company], [ismanagercheck], [istopmanagercheck], [iscwcheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'48c02c5a-84bf-4a98-982c-0ff0f57cb94c', N'20131010221849', N'测试是测试ice是', CAST(5555.00 AS Decimal(18, 2)), CAST(1111.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'asdf', N'asdf', N'sdf', N'asdf', N'adsf', N'苏州海易', 1, 0, 0, CAST(0x0000A25A017E9CD4 AS DateTime), N'admin', CAST(0x0000A25A017EB318 AS DateTime), N'admin', 1)
INSERT [dbo].[business_pay_request] ([id], [orderno], [customername], [money], [balance], [hxbalance], [receivename], [account], [payway], [bank], [other], [company], [ismanagercheck], [istopmanagercheck], [iscwcheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'718c8654-6354-4014-b634-44ca9c377eb9', N'20131011231116', N'123333', CAST(213.00 AS Decimal(18, 2)), CAST(12312.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'1231231313', N'12312', N'1232131', N'23123123', N'3123123', N'苏州海易', 0, 0, 0, CAST(0x0000A25C0003483C AS DateTime), N'fengzijun', CAST(0x0000A25C0003483C AS DateTime), N'fengzijun', 0)
INSERT [dbo].[business_pay_request] ([id], [orderno], [customername], [money], [balance], [hxbalance], [receivename], [account], [payway], [bank], [other], [company], [ismanagercheck], [istopmanagercheck], [iscwcheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'cf5128c8-ba3b-4f60-addd-f320b4b24e57', NULL, N'11111', CAST(22.00 AS Decimal(18, 2)), CAST(44.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), N'123', N'123', N'123', N'123', N'123', N'333', 0, 0, 0, CAST(0x0000A24D017E1160 AS DateTime), N'Admin', CAST(0x0000A24D017E1160 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[business_money_request_detail]    Script Date: 10/24/2013 23:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_money_request_detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[business_money_request_detail](
	[id] [uniqueidentifier] NULL,
	[businessid] [uniqueidentifier] NULL,
	[money] [decimal](18, 2) NULL,
	[type] [nvarchar](50) NULL,
	[maintype] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[other] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a73d2d28-ae89-4852-95f6-4b6b132d74f1', N'e0bbd505-b6cd-41b2-b068-66ac55a4bc71', CAST(123.00 AS Decimal(18, 2)), N'123', NULL, N'123', N'123', CAST(0x0000A24D00F4E624 AS DateTime), N'Admin', CAST(0x0000A24D00F4E624 AS DateTime), N'Admin', 1)
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4112d7cb-c98d-4711-ba6f-fdda5e17c3b7', N'e0bbd505-b6cd-41b2-b068-66ac55a4bc71', CAST(444.00 AS Decimal(18, 2)), N'444', NULL, N'444', N'444', CAST(0x0000A24D00F4E9A8 AS DateTime), N'Admin', CAST(0x0000A24D00F4E9A8 AS DateTime), N'Admin', 1)
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd76711f1-20ca-405d-b24c-3aec86d37435', N'51276893-63cc-41cc-9cc7-28d3ce83b3b6', CAST(123.00 AS Decimal(18, 2)), N'22', NULL, N'223', N'33', CAST(0x0000A25200EDD140 AS DateTime), N'Admin', CAST(0x0000A25200EDD140 AS DateTime), N'Admin', 1)
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'1fb143de-7ced-4864-ae07-2c887c522f31', N'38f9f5ac-7210-4fba-96df-c61f4c3803cd', CAST(123.00 AS Decimal(18, 2)), N'22', NULL, N'223', N'33', CAST(0x0000A25200EE63BC AS DateTime), N'Admin', CAST(0x0000A25200EE63BC AS DateTime), N'Admin', 1)
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f901bd0f-d292-444d-855d-d7e5d2f936da', N'd3f384d4-0690-4050-bbb5-d5acb3cc75e9', CAST(22.00 AS Decimal(18, 2)), N'营业费用', N'现金支出', N'123', N'1231', CAST(0x0000A25A00AB32F4 AS DateTime), N'admin', CAST(0x0000A25A00AB32F4 AS DateTime), N'admin', 1)
INSERT [dbo].[business_money_request_detail] ([id], [businessid], [money], [type], [maintype], [remark], [other], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4b7d4845-87ca-4060-806e-7aa7a94fc0e7', N'3793f528-2c5d-4cdf-80f1-63607db532b4', CAST(123123.00 AS Decimal(18, 2)), N'营业费用', N'现金支出', N'12', N'123', CAST(0x0000A25C00A7376C AS DateTime), N'fengzijun', CAST(0x0000A25C00A7376C AS DateTime), N'fengzijun', 1)
/****** Object:  Table [dbo].[business_money_request]    Script Date: 10/24/2013 23:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[business_money_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[business_money_request](
	[id] [uniqueidentifier] NOT NULL,
	[orderno] [nvarchar](50) NULL,
	[customername] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[projectcontent] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[money] [decimal](18, 2) NULL,
	[receivemoney] [decimal](18, 2) NULL,
	[receivetime] [datetime] NULL,
	[overday] [int] NULL,
	[moneypercentage] [nvarchar](50) NULL,
	[businessmoney] [decimal](18, 2) NULL,
	[orderuser] [nvarchar](50) NULL,
	[ismanagecheck] [bit] NULL,
	[istopmanagercheck] [bit] NULL,
	[isjz] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_business_money_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd8c6a3f3-355e-45d0-9f1f-52e4cd07d7ad', N'20131010221849', N'测试是测试ice是', N'苏州易开', N'测试123344444', CAST(0x0000A2670107AC00 AS DateTime), CAST(5555.00 AS Decimal(18, 2)), CAST(9994.00 AS Decimal(18, 2)), CAST(0x0000A24D0107AC00 AS DateTime), 124, N'6%', CAST(333.00 AS Decimal(18, 2)), N'554', 0, 0, 0, CAST(0x0000A25C00A7B728 AS DateTime), N'fengzijun', CAST(0x0000A25C00A9D940 AS DateTime), N'fengzijun', 0)
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3793f528-2c5d-4cdf-80f1-63607db532b4', N'20131010221849', N'测试是测试ice是', N'苏州海易', N'测试123344444', CAST(0x0000A25300000000 AS DateTime), CAST(5555.00 AS Decimal(18, 2)), CAST(111111.00 AS Decimal(18, 2)), CAST(0x0000A26600000000 AS DateTime), 56, N'6%', CAST(333.00 AS Decimal(18, 2)), N'rtetert', 0, 0, 0, CAST(0x0000A25C00A7376C AS DateTime), N'fengzijun', CAST(0x0000A25C00A7376C AS DateTime), N'fengzijun', 1)
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e0bbd505-b6cd-41b2-b068-66ac55a4bc71', N'20130929001016', N'123123', N'13123123123', N'12313', CAST(0x0000A25500000000 AS DateTime), CAST(11.00 AS Decimal(18, 2)), CAST(222.00 AS Decimal(18, 2)), CAST(0x0000A26400000000 AS DateTime), 11, N'6%', CAST(1.00 AS Decimal(18, 2)), N'33333', 0, 0, 0, CAST(0x0000A24D00F4D814 AS DateTime), N'Admin', CAST(0x0000A24D00F4D814 AS DateTime), N'Admin', 1)
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'fa3a491b-9d19-4f4f-8035-c80eb8b16fbf', N'20131010221849', N'12312312312', N'昆山易得', N'123123', CAST(0x0000A26200000000 AS DateTime), CAST(5555.00 AS Decimal(18, 2)), CAST(11111111.00 AS Decimal(18, 2)), CAST(0x0000A25000000000 AS DateTime), 23, N'6%', CAST(333.00 AS Decimal(18, 2)), N'123123123123', 1, 0, 0, CAST(0x0000A25C00A76778 AS DateTime), N'fengzijun', CAST(0x0000A25C00AE234C AS DateTime), N'fengzijun', 1)
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd3f384d4-0690-4050-bbb5-d5acb3cc75e9', N'20131010221522', N'测试客户', N'苏州海易', N'测试内容', CAST(0x0000A25A00000000 AS DateTime), CAST(111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), CAST(0x0000A26000000000 AS DateTime), 22, N'3%', CAST(3.00 AS Decimal(18, 2)), N'33333', 0, 0, 0, CAST(0x0000A25A00AB2F70 AS DateTime), N'admin', CAST(0x0000A25A00AB2F70 AS DateTime), N'admin', 1)
INSERT [dbo].[business_money_request] ([id], [orderno], [customername], [company], [projectcontent], [time], [money], [receivemoney], [receivetime], [overday], [moneypercentage], [businessmoney], [orderuser], [ismanagecheck], [istopmanagercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0a2c60b6-ea4a-4fb5-ae62-ea4a9e6dc00f', N'20130928234809', N'123123', N'1231313', N'12313', CAST(0x0000A24E00000000 AS DateTime), CAST(123.00 AS Decimal(18, 2)), CAST(11231.00 AS Decimal(18, 2)), CAST(0x0000A25B00000000 AS DateTime), 56, N'3%', CAST(4.00 AS Decimal(18, 2)), N'1231312', NULL, NULL, NULL, CAST(0x0000A24D00E660F4 AS DateTime), N'Admin', CAST(0x0000A24D00E660F4 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[budget_detail]    Script Date: 10/24/2013 23:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budget_detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budget_detail](
	[id] [uniqueidentifier] NOT NULL,
	[budgetid] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[gg] [nvarchar](50) NULL,
	[daynum] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[totalprice] [decimal](18, 2) NULL,
	[remark] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_budget_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'budget_detail', N'COLUMN',N'gg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'budget_detail', @level2type=N'COLUMN',@level2name=N'gg'
GO
INSERT [dbo].[budget_detail] ([id], [budgetid], [name], [gg], [daynum], [price], [totalprice], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'09e9cf4a-de88-40f0-ba31-5e7b661dbfc6', N'05773293-0742-4098-9af4-ea3ff9518a00', N'13', N'12312', 3123, CAST(44.00 AS Decimal(18, 2)), CAST(88.00 AS Decimal(18, 2)), N'123123', CAST(0x0000A25301806BB8 AS DateTime), N'Admin', CAST(0x0000A25301806BB8 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget_detail] ([id], [budgetid], [name], [gg], [daynum], [price], [totalprice], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b5cd1f76-5e26-4fcb-871b-69e04dab0445', N'bcbed3bb-8b4e-49a3-b6cb-dba40dc1002d', N'111', N'2222', 33, CAST(11.00 AS Decimal(18, 2)), CAST(2333.00 AS Decimal(18, 2)), N'123123123123', CAST(0x0000A24F00E5EA98 AS DateTime), N'Admin', CAST(0x0000A24F00E5EA98 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget_detail] ([id], [budgetid], [name], [gg], [daynum], [price], [totalprice], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'64274c5e-0a5c-400b-9231-6f61e8daa836', N'03ac7cfa-8e7c-4ccc-9ef1-b541b92ccf95', N'123123', N'333', 1231, CAST(11.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'123123', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget_detail] ([id], [budgetid], [name], [gg], [daynum], [price], [totalprice], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'977a3947-dfa8-493a-a60b-aab1163e1ac7', N'03ac7cfa-8e7c-4ccc-9ef1-b541b92ccf95', N'123', N'1123', 33, CAST(44.00 AS Decimal(18, 2)), CAST(444.00 AS Decimal(18, 2)), N'111', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[budget]    Script Date: 10/24/2013 23:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budget](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[orderno] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[manageruser] [nvarchar](50) NULL,
	[orderuser] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_budget] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'budget', N'COLUMN',N'money'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总预支' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'budget', @level2type=N'COLUMN',@level2name=N'money'
GO
INSERT [dbo].[budget] ([id], [name], [orderno], [time], [money], [manageruser], [orderuser], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'03ac7cfa-8e7c-4ccc-9ef1-b541b92ccf95', N'房产类', N'20131010221849', N'2013-10-17 00:00:00', NULL, N'213', N'33333', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', CAST(0x0000A253017F69E8 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget] ([id], [name], [orderno], [time], [money], [manageruser], [orderuser], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'bcbed3bb-8b4e-49a3-b6cb-dba40dc1002d', N'123123', N'20130928234809', N'2013-10-09 00:00:00', NULL, N'123123', N'1333333', CAST(0x0000A24F00E5EA98 AS DateTime), N'Admin', CAST(0x0000A24F00E5EA98 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget] ([id], [name], [orderno], [time], [money], [manageruser], [orderuser], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'05773293-0742-4098-9af4-ea3ff9518a00', N'媒体类', N'20131010221522', N'2013-10-17 00:00:00', NULL, N'222', N'12313', CAST(0x0000A25301806BB8 AS DateTime), N'Admin', CAST(0x0000A25301806BB8 AS DateTime), N'Admin', 1)
INSERT [dbo].[budget] ([id], [name], [orderno], [time], [money], [manageruser], [orderuser], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e044a432-0c5f-4ac2-a101-f43dea6043ca', N'123', N'20130928234809', N'2013-10-10T16:00:00.000Z', NULL, N'12312', N'33333', CAST(0x0000A24F00E54D90 AS DateTime), N'Admin', CAST(0x0000A24F00E54D90 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[activity]    Script Date: 10/24/2013 23:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[activity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[activity](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[orderno] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[mainuser] [nvarchar](50) NULL,
	[checkuser] [nvarchar](50) NULL,
	[orderuser] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'activity', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动执行预（决)算表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'activity', @level2type=N'COLUMN',@level2name=N'id'
GO
/****** Object:  Table [dbo].[setting]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[setting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[setting](
	[id] [uniqueidentifier] NOT NULL,
	[category] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[value] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[createby] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[statues] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'e038eab0-9f3d-4967-be16-06e04633d6c8', N'喜欢任务设置', N'收录', N'50', N'0', N'admin', CAST(0x0000A2230125E23F AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'adde1429-9e73-4b0b-8698-0cdf13b6c762', N'执行任务设置', N'自动分享', N'true', N'1', N'admin', CAST(0x0000A2230126CC3F AS DateTime), N'Admin', CAST(0x0000A23100AFA730 AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'3c309d27-c774-4e60-8706-17ea2c2b0691', N'喜欢任务设置', N'喜欢', N'200', N'0', N'admin', CAST(0x0000A2230125915B AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'd4a92d2b-8062-4af9-8396-19f8ceaf48f8', N'执行任务设置', N'自动互收', N'true', N'1', N'admin', CAST(0x0000A2230126FDA0 AS DateTime), N'Admin', CAST(0x0000A23100AFA730 AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'4e8e13ca-0726-4610-8cc5-1a5a3191a7bd', N'喜欢任务设置', N'评论', N'50', N'0', N'admin', CAST(0x0000A2230125D5E6 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'f900bdfa-51be-492b-9a65-34c289787064', N'执行任务设置', N'自动互粉', N'true', N'1', N'admin', CAST(0x0000A2230127109D AS DateTime), N'Admin', CAST(0x0000A23100AFA730 AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'4d2e7311-ba9f-468b-bc3b-3f938c9cc3ea', N'价格设置', N'评论价格', N'2', N'0', N'admin', CAST(0x0000A22400EDFB91 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'bba6a74c-85f1-4612-af9e-525599396a0a', N'价格设置', N'分享价格', N'3', N'0', N'admin', CAST(0x0000A22400EDA250 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'2aade1c6-59be-4b0e-927c-7b28bfc8c397', N'积分价格比例设置', N'积分：人民币', N'100', N'0', N'admin', CAST(0x0000A22400EFB487 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'8aef69bd-94f6-4afd-bd54-7b91b8e7fb7b', N'admin', N'sortkey', N' createtime desc , updatetime desc ', N'', N'admin', CAST(0x0000A21E017981D3 AS DateTime), N'admin', CAST(0x0000A21E017981D3 AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'6c715ae2-2d77-4827-b4c1-7e5352b7d00b', N'喜欢任务设置', N'粉丝', N'5', N'0', N'admin', CAST(0x0000A2230125F280 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'65ad5d23-2619-480e-b6a9-84c58ad07dcb', N'价格设置', N'喜欢价格', N'3', N'0', N'admin', CAST(0x0000A22400ED9967 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'88841710-5b5f-4581-9557-85103cd65534', N'价格设置', N'收录价格', N'2', N'0', N'admin', CAST(0x0000A22400EDB447 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'93d5a072-4318-49d5-a1b8-9aae4c752f26', N'美丽说分享宝服务费', N'服务费百分比', N'0.3', N'0', N'admin', CAST(0x0000A22E01795266 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'3a1fc752-0700-492b-a6c6-a5460271dc91', N'代理人返利比例', N'比例', N'0.5', N'0', N'admin', CAST(0x0000A22400EFEEA1 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'efbe246c-710a-466d-9883-ae4e976212ce', N'执行任务设置', N'自动互星', N'true', N'1', N'admin', CAST(0x0000A2230126E963 AS DateTime), N'Admin', CAST(0x0000A23100AFA730 AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'd0f5bd16-f36e-40d9-b2d5-b3411f9939e9', N'执行任务设置', N'自动评论', N'true', N'1', N'admin', CAST(0x0000A22800B6F094 AS DateTime), N'Admin', CAST(0x0000A23100AFA730 AS DateTime), 1)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'fb8e6b56-dea6-4d70-9c52-e451e7423f55', N'价格设置', N'粉丝价格', N'1', N'0', N'admin', CAST(0x0000A22400EE11B5 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'89175b62-abb6-4576-9594-f0f9b50b41a7', N'admin', N'pagesize', N'5', N'', N'admin', CAST(0x0000A21E01794968 AS DateTime), N'admin', CAST(0x0000A21E01794968 AS DateTime), 0)
INSERT [dbo].[setting] ([id], [category], [name], [value], [type], [createby], [createtime], [updateby], [updatetime], [statues]) VALUES (N'6ff927cf-5676-43b2-a9b4-f72c346e22de', N'价格设置', N'超级主编收录价格', N'4', N'0', N'admin', CAST(0x0000A22D0102C9A1 AS DateTime), N'Admin', CAST(0x0000A23100AFA85C AS DateTime), 0)
/****** Object:  Table [dbo].[role]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [nvarchar](50) NULL,
	[menu] [nvarchar](500) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NOT NULL CONSTRAINT [DF_role_statues]  DEFAULT ((1))
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[role] ON
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (1, N'财务', N'1,2,3,4,5,5', CAST(0x0000A23A0179899C AS DateTime), N'admin', CAST(0x0000A23A0179899C AS DateTime), N'admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (2, N'tewt', N'41,42', CAST(0x0000A23C00F772E0 AS DateTime), N'Admin', CAST(0x0000A23C00F772E0 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (3, N'test', N'41,42', CAST(0x0000A23C00F8E530 AS DateTime), N'Admin', CAST(0x0000A23C00F8E530 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (4, N'tttttt', N'41,42,18,32,33,34,35,36,37,38,39,40', CAST(0x0000A23C00F918C0 AS DateTime), N'Admin', CAST(0x0000A23C0114E208 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (6, N'tttt', N'41,42', CAST(0x0000A23C0114D524 AS DateTime), N'Admin', CAST(0x0000A23C0114D524 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (5, N'ttttttttttttttttt', N'18,32,33,34,35,36,37,38,39,40,17,31,30,29,28,27,26,25,24,23', CAST(0x0000A23C00F9B118 AS DateTime), N'Admin', CAST(0x0000A23C01148A24 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (7, N'adfsdf', N'41,42', CAST(0x0000A23C014CEAF4 AS DateTime), N'Admin', CAST(0x0000A23C014CEAF4 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (8, N'ppp', N'18,32,33,34,35,36,37,38,39,40,17,31,30,29,28,27,26,25,24,23', CAST(0x0000A23C014D94E0 AS DateTime), N'Admin', CAST(0x0000A23C014EA010 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (9, N'1111', N'41,42', CAST(0x0000A23C014E8D50 AS DateTime), N'Admin', CAST(0x0000A23C014E8D50 AS DateTime), N'Admin', 0)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (10, N'超级管理员', N'41,45,44,43,42,18,54,53,32,33,35,36,37,38,39,17,52,51,50,49,31,30,29,28,27,26,25,24,23,16,48,47,22,21,20,13,12,11,10,9,15,8,7,14,46,19,6,5,4,3,2,1', CAST(0x0000A256014CBC14 AS DateTime), N'Admin', CAST(0x0000A25E017C6F04 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (11, N'财务', N'16,22,21,20,13,12,11,10,9', CAST(0x0000A256014CCED4 AS DateTime), N'Admin', CAST(0x0000A256014CCED4 AS DateTime), N'Admin', 1)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (12, N'总经理', N'16,22,21,20,13,12,11,10,9', CAST(0x0000A256014CD708 AS DateTime), N'Admin', CAST(0x0000A256014CD708 AS DateTime), N'Admin', 1)
INSERT [dbo].[role] ([id], [rolename], [menu], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (13, N'执行董事', N'18,32,33,34,35,36,37,38,39', CAST(0x0000A256014CE3EC AS DateTime), N'Admin', CAST(0x0000A2560174F300 AS DateTime), N'admin', 1)
SET IDENTITY_INSERT [dbo].[role] OFF
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_requestmoney_u]
      	  @id uniqueidentifier,
	        	  @username nvarchar(100),
	        	  @money decimal,
	        	  @msg nvarchar(1000),

	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[requestmoney] set



	    	    [username] = @username,

	    	    [money] = @money,

	    	    [msg] = @msg,



	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_requestmoney_c]
      	  @id uniqueidentifier,
	        	  @username nvarchar(100),
	        	  @money decimal,
	        	  @msg nvarchar(1000),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[requestmoney] (

            [id],
            [username],
            [money],
            [msg],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @username ,
            @money ,
            @msg ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_requestmoney_d]
@id uniqueidentifier
as

UPDATE [requestmoney]
   SET statues = 0
 WHERE id = @id
 
 return 0' 
END
GO
/****** Object:  Table [dbo].[receivemoney]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[receivemoney]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[receivemoney](
	[id] [uniqueidentifier] NOT NULL,
	[orderno] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[time] [nvarchar](50) NULL,
	[department] [nvarchar](50) NULL,
	[receivemoney] [decimal](18, 2) NULL,
	[reducemoney] [decimal](18, 2) NULL,
	[remark] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_receivemoney] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'receivemoney', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单收款销账' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'receivemoney', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'receivemoney', N'COLUMN',N'money'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已销金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'receivemoney', @level2type=N'COLUMN',@level2name=N'money'
GO
INSERT [dbo].[receivemoney] ([id], [orderno], [type], [money], [time], [department], [receivemoney], [reducemoney], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'05c262c6-5fe1-43a0-90c6-24b76de50167', N'20131010221849', N'阿道夫', CAST(10.00 AS Decimal(18, 2)), N'2013-10-18 00:00:00', N'阿道夫', CAST(5555.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), N'发达省份', CAST(0x0000A25A016DEE84 AS DateTime), N'admin', CAST(0x0000A25A016DEE84 AS DateTime), N'admin', 1)
INSERT [dbo].[receivemoney] ([id], [orderno], [type], [money], [time], [department], [receivemoney], [reducemoney], [remark], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'6c9da83f-74e6-4bf4-8573-fd93136ef252', N'20130928234809', N'123', CAST(11.00 AS Decimal(18, 2)), N'2013-10-19 00:00:00', N'3123', CAST(22.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), N'1212321', CAST(0x0000A251017E80B4 AS DateTime), N'Admin', CAST(0x0000A251017E80B4 AS DateTime), N'Admin', 1)
/****** Object:  Table [dbo].[pushmoneysetting]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pushmoneysetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pushmoneysetting](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[percentage] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_pushmoney] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[pushmoneysetting] ([id], [name], [percentage], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd0f85727-6900-4550-9a40-0d8edef389d4', N'RRRR4', N'6%', CAST(0x0000A2450176C1E4 AS DateTime), N'Admin', CAST(0x0000A24501771D4C AS DateTime), N'Admin', 0)
INSERT [dbo].[pushmoneysetting] ([id], [name], [percentage], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'624757fa-7856-4498-9aa7-579c8314e6f8', N'房产类', N'6%', CAST(0x0000A2470183D974 AS DateTime), N'Admin', CAST(0x0000A2470183D974 AS DateTime), N'Admin', 1)
INSERT [dbo].[pushmoneysetting] ([id], [name], [percentage], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'435538b7-1688-4074-aff1-9f0e8838a81b', N'媒体类', N'3%', CAST(0x0000A2470183EFB8 AS DateTime), N'Admin', CAST(0x0000A2470183EFB8 AS DateTime), N'Admin', 1)
INSERT [dbo].[pushmoneysetting] ([id], [name], [percentage], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b115f6c2-1150-453c-a7dc-aa624f57743f', N'4444', N'1%', CAST(0x0000A24501772DB4 AS DateTime), N'Admin', CAST(0x0000A24501772DB4 AS DateTime), N'Admin', 0)
/****** Object:  Table [dbo].[payment_request_detail]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment_request_detail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[payment_request_detail](
	[id] [uniqueidentifier] NOT NULL,
	[paymentid] [uniqueidentifier] NULL,
	[money] [decimal](18, 2) NULL,
	[username] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[cardno] [nvarchar](50) NULL,
	[detail] [nvarchar](500) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_payment_request_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ee1a508e-fd49-4657-98ba-164f9d99cd16', N'813c7a03-5ed3-4285-8821-f338e42e529c', CAST(123.00 AS Decimal(18, 2)), N'123', N'123', N'123', N'123', CAST(0x0000A2510159C0E4 AS DateTime), N'Admin', CAST(0x0000A2510159C0E4 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'11ae0a4d-2efb-4677-839d-5d1ba70d136a', N'bc0283e8-9d93-4d14-9097-545749a5476c', CAST(111.00 AS Decimal(18, 2)), N'123123', N'123123', N'222', N'123213', CAST(0x0000A25101562574 AS DateTime), N'Admin', CAST(0x0000A25101562574 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ac97e8dc-65a8-4021-8e37-8ad131cbd466', N'90eaee53-c645-4731-b304-d656956acf95', CAST(111.00 AS Decimal(18, 2)), N'3123123', N'123123', N'2222', N'12312', CAST(0x0000A2510156A404 AS DateTime), N'Admin', CAST(0x0000A2510156A404 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'696b1a60-13b8-4638-a1a3-92a802389934', N'581ccd45-014a-40bb-9560-802978809556', CAST(22.00 AS Decimal(18, 2)), N'4343', N'444444444', N'1111111111111111111', N'41234123', CAST(0x0000A2540160146C AS DateTime), N'Admin', CAST(0x0000A2540160146C AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a4c9e305-9460-4bca-b32a-9d6e8ee4e266', N'a0bad834-0f13-4fdc-8038-3703aeb0ce4c', CAST(22.00 AS Decimal(18, 2)), N'123', N'123', N'123', N'123', CAST(0x0000A24F0106E144 AS DateTime), N'Admin', CAST(0x0000A24F0106E144 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'41a9e0b0-7bac-48ca-834f-c3db60d9abd9', N'581ccd45-014a-40bb-9560-802978809556', CAST(123.00 AS Decimal(18, 2)), N'123123', N'222', N'333333333333333333', N'123123', CAST(0x0000A2540160146C AS DateTime), N'Admin', CAST(0x0000A2540160146C AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'9fb80363-12c4-448e-a804-e3a2fef15299', N'90eaee53-c645-4731-b304-d656956acf95', CAST(33.00 AS Decimal(18, 2)), N'33', N'33', N'33', N'333', CAST(0x0000A2510156A404 AS DateTime), N'Admin', CAST(0x0000A2510156A404 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request_detail] ([id], [paymentid], [money], [username], [bank], [cardno], [detail], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'625c383c-a698-4b69-a303-fcbdc8435677', N'a3a0517d-b916-476f-be6c-d73ceb7d82c1', CAST(123.00 AS Decimal(18, 2)), N'123123', N'123213', N'12313', N'111', CAST(0x0000A25A00B3B6A4 AS DateTime), N'admin', CAST(0x0000A25A00B3B6A4 AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[payment_request]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[payment_request](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[orderno] [nvarchar](50) NULL,
	[gysname] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[msgcontent] [nvarchar](500) NULL,
	[reqesttime] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[remark2] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[type] [nvarchar](50) NULL,
	[maintype] [nvarchar](50) NULL,
	[orderuser] [nvarchar](50) NULL,
	[iscwcheck] [bit] NULL,
	[ismanagerusercheck] [bit] NULL,
	[istopmanagerusercheck] [bit] NULL,
	[isjz] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_payment_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'payment_request', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目支出申请单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'payment_request', @level2type=N'COLUMN',@level2name=N'id'
GO
INSERT [dbo].[payment_request] ([id], [name], [time], [orderno], [gysname], [company], [msgcontent], [reqesttime], [remark], [remark2], [money], [type], [maintype], [orderuser], [iscwcheck], [ismanagerusercheck], [istopmanagerusercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'581ccd45-014a-40bb-9560-802978809556', N'房产类', N'2013-10-17 00:00:00', N'20131010221849', N'1221', N'测试公司', N'asdfsafsaf', N'2013-10-11 00:00:00', N'asdfasf', N'f', CAST(145.23 AS Decimal(18, 2)), N'fefe', NULL, N'asdf', 0, 1, 1, 0, CAST(0x0000A2540160146C AS DateTime), N'Admin', CAST(0x0000A25401693B00 AS DateTime), N'Admin', 1)
INSERT [dbo].[payment_request] ([id], [name], [time], [orderno], [gysname], [company], [msgcontent], [reqesttime], [remark], [remark2], [money], [type], [maintype], [orderuser], [iscwcheck], [ismanagerusercheck], [istopmanagerusercheck], [isjz], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a3a0517d-b916-476f-be6c-d73ceb7d82c1', N'房产类', N'2013-10-17 00:00:00', N'20131010221849', N'123123123', N'苏州海易', N'123213213123213', N'2013-10-09 00:00:00', N'3123123', N'12312', CAST(145.23 AS Decimal(18, 2)), N'营业费用', N'现金支出', N'1223', 0, 0, 0, 0, CAST(0x0000A25A00B3B6A4 AS DateTime), N'admin', CAST(0x0000A25A00B3B6A4 AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[ordertz_request]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordertz_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordertz_request](
	[id] [uniqueidentifier] NULL,
	[orderno] [nvarchar](50) NULL,
	[customershortname] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[name] [nvarchar](50) NULL,
	[projectcontent] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[balance] [decimal](18, 2) NULL,
	[balancereduce] [decimal](18, 2) NULL,
	[remark] [nvarchar](50) NULL,
	[ismanagercheck] [bit] NULL,
	[istopmanagercheck] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[ordertz_request] ([id], [orderno], [customershortname], [company], [time], [name], [projectcontent], [money], [balance], [balancereduce], [remark], [ismanagercheck], [istopmanagercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f24da352-0cf6-473b-804a-b3af9d87fdfb', N'20131010221849', N'测试是测试ice是', N'房产类', CAST(0x0000A25A00000000 AS DateTime), N'房产类', N'测试123344444', CAST(5555.00 AS Decimal(18, 2)), CAST(1111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), N'22', 1, 0, CAST(0x0000A25A01053B64 AS DateTime), N'admin', CAST(0x0000A25A010F674C AS DateTime), N'admin', 1)
INSERT [dbo].[ordertz_request] ([id], [orderno], [customershortname], [company], [time], [name], [projectcontent], [money], [balance], [balancereduce], [remark], [ismanagercheck], [istopmanagercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b59ed811-7942-4a8e-89ef-d48e1aca6440', N'20131010221522', N'测试客户', N'媒体类', CAST(0x0000A25A00000000 AS DateTime), N'媒体类', N'测试内容', CAST(111.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), N'555555555', 0, 0, CAST(0x0000A25C009AF8A8 AS DateTime), N'fengzijun', CAST(0x0000A25C009DD76C AS DateTime), N'fengzijun', 1)
INSERT [dbo].[ordertz_request] ([id], [orderno], [customershortname], [company], [time], [name], [projectcontent], [money], [balance], [balancereduce], [remark], [ismanagercheck], [istopmanagercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7b3b6e30-7621-4df4-a835-55b4b6caedf2', N'20131010221522', N'测试客户', N'媒体类', CAST(0x0000A25A00000000 AS DateTime), N'媒体类', N'测试内容', CAST(111.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), N'313123123', 0, 0, CAST(0x0000A25C009CC408 AS DateTime), N'fengzijun', CAST(0x0000A25C009CC408 AS DateTime), N'fengzijun', 1)
/****** Object:  Table [dbo].[order]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[projectcontent] [nvarchar](500) NULL,
	[customername] [nvarchar](50) NULL,
	[orderno] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[customershortname] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[balance] [decimal](18, 2) NULL,
	[balancereduce] [decimal](18, 2) NULL,
	[balancereducereason] [nvarchar](500) NULL,
	[isht] [bit] NULL,
	[iskp] [bit] NULL,
	[other] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[managercheck] [bit] NULL,
	[cwcheck] [bit] NULL,
	[zk] [decimal](18, 2) NULL,
	[jsz] [decimal](18, 2) NULL,
	[ml] [decimal](18, 2) NULL,
	[lrmoney] [decimal](18, 2) NULL,
	[lr] [nvarchar](10) NULL,
	[iszd] [bit] NULL,
	[parentorderno] [nvarchar](50) NULL,
	[shouldmoney] [decimal](18, 2) NULL,
	[havemoney] [decimal](18, 2) NULL,
	[nothavemoney] [decimal](18, 2) NULL,
	[havemoneypercentage] [nvarchar](50) NULL,
	[actualmoney] [decimal](18, 2) NULL,
	[hxmoney] [decimal](18, 2) NULL,
	[kpce] [decimal](18, 2) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[Updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'zk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'zk'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'jsz'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'净业绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'jsz'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'ml'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛利' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'ml'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'lr'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'利润' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'lr'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'iszd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是总单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'iszd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'shouldmoney'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应收款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'shouldmoney'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'havemoney'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已收款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'havemoney'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'nothavemoney'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未收款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'nothavemoney'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'order', N'COLUMN',N'hxmoney'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核销金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order', @level2type=N'COLUMN',@level2name=N'hxmoney'
GO
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'795332d6-d365-4e59-abf4-21968ad59686', N'房产类', N'昆山易得', N'adfasdfasdf', N'12312321', N'2013102420065201', CAST(233.00 AS Decimal(18, 2)), N'12312321', CAST(0x0000A25B00000000 AS DateTime), CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 0, 0, N'123123123', N'123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(211.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131024200652', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261014CEC20 AS DateTime), N'admin', CAST(0x0000A261014FF9C4 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'8aff17e9-f388-40f1-854e-29202dc22490', N'房产类', N'苏州海易', N'测试123344444', N'测试是测试ice是', N'20131010221849', CAST(5555.00 AS Decimal(18, 2)), N'测试是测试ice是', CAST(0x0000A25A00000000 AS DateTime), CAST(1111.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), NULL, 1, 0, N'1231232133', N'3333333', 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(5545.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0.36%', CAST(135.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A253016FFA58 AS DateTime), N'Admin', CAST(0x0000A261014B9F50 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'03ec5430-c14b-4468-a6d8-2b26d5526498', N'媒体类', N'昆山易得', N'678678', N'667867', N'20131018220709', CAST(86786.00 AS Decimal(18, 2)), N'667867', CAST(0x0000A25300000000 AS DateTime), CAST(66666666666.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 0, N'67867', N'67867867867867876', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(-66666579880.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(86786.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(66666666666.00 AS Decimal(18, 2)), CAST(23333.00 AS Decimal(18, 2)), CAST(86564.00 AS Decimal(18, 2)), CAST(0x0000A25B016D1234 AS DateTime), N'fengzijun', CAST(0x0000A25C00C05C88 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'bc277a97-7015-4544-b8fc-3bb9c7847b6a', N'媒体类', N'昆山易得', N'ceshi', N'test', N'20131018140924', CAST(10000.00 AS Decimal(18, 2)), N'test', CAST(0x0000A2550107AC00 AS DateTime), CAST(500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'sf', N'sf3', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(9800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A25B00E976CC AS DateTime), N'fengzijun', CAST(0x0000A25B010E1824 AS DateTime), N'fengzijun', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'8e86aa43-2c4c-4d1f-bc4a-42f660ff6d9d', N'房产类', N'昆山易得', N'11111', N'222', N'2013101123111603', CAST(213213.00 AS Decimal(18, 2)), N'222', CAST(0x0000A2610107AC00 AS DateTime), CAST(222.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'123213123333', N'3123123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(212991.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131011231116', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(222.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25B0113157C AS DateTime), N'fengzijun', CAST(0x0000A25B01133070 AS DateTime), N'fengzijun', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'8193f3ce-ff07-48b2-b27d-49a763f96948', N'房产类', N'苏州海易', N'1231312313', N'123123', N'2013101123111601', CAST(1231.00 AS Decimal(18, 2)), N'123123', CAST(0x0000A25300000000 AS DateTime), CAST(22.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), NULL, 0, 0, N'12321', N'13123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(1209.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131011231116', CAST(1231.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A2540185B1B8 AS DateTime), N'Admin', CAST(0x0000A261014B9F50 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'7771f3f0-28ff-4305-ad6b-6c4689dc067c', N'房产类', N'昆山易得', N'123123123', N'asfsadf', N'2013101123111602', CAST(123.00 AS Decimal(18, 2)), N'asfsadf', CAST(0x0000A24A0107AC00 AS DateTime), CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'33333444', N'33333333333333333333', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(101.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131011231116', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25B011287B0 AS DateTime), N'fengzijun', CAST(0x0000A25B01132BC0 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'd9c240f9-000e-4e0d-a077-71f9b67a9aea', N'房产类', N'昆山易得', N'adfasdfasdf', N'12312321', N'2013102420065201', CAST(233.00 AS Decimal(18, 2)), N'12312321', CAST(0x0000A25B00000000 AS DateTime), CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 0, 0, N'123123123', N'123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(211.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131024200652', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261014C8C08 AS DateTime), N'admin', CAST(0x0000A261014FF9C4 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'd41b2915-a5de-4c24-b6a6-729b86b18e56', N'媒体类', N'昆山易得', N'678678678678678678', N'678678', N'20131018220709', CAST(66666666666.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A25200000000 AS DateTime), CAST(666.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'6777', N'678678', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(66666666000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(66666666666.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(666.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A25B016CBCA8 AS DateTime), N'fengzijun', CAST(0x0000A25B016CBCA8 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'218346e8-2017-4c62-b37f-8c5f373ed190', N'媒体类', N'昆山易得', N'噩噩噩噩', N'AFADSFA', N'201310240392801', CAST(111111.00 AS Decimal(18, 2)), N'AFADSFA', CAST(0x0000A26100000000 AS DateTime), CAST(222.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'123123', N'12312312312312312312312', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(110889.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'2013102403928', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(222.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261015A5B94 AS DateTime), N'admin', CAST(0x0000A261015D4BEC AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'7b31d1d0-a11b-4ac0-ae2c-8f95bc6876d8', N'媒体类', N'昆山易得', N'测试', NULL, N'20131024203928', CAST(1144.00 AS Decimal(18, 2)), NULL, CAST(0x0000A26200000000 AS DateTime), CAST(33.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, N'测试', N'测试', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(1111.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A26101547AE4 AS DateTime), N'admin', CAST(0x0000A261015EA7F8 AS DateTime), N'admin', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'729a8079-90db-4062-9532-94e11862aed6', N'房产类', N'昆山易得', N'12312312', N'1231231', N'2013102420392802', CAST(33.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A26200000000 AS DateTime), CAST(11.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 0, 1, N'123123', N'123123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'0%', 0, N'20131024203928', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(11.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261015EA7F8 AS DateTime), N'admin', CAST(0x0000A261015EA7F8 AS DateTime), N'admin', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'1d41cef7-3a5c-439a-9923-9695a6d03fe8', N'媒体类', N'昆山易得', N'8888888888888888', N'6786867', N'20131018220709', CAST(666666.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A25100000000 AS DateTime), CAST(6786.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'66', N'67868678', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(659880.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(666666.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(6786.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A25B016CA2E0 AS DateTime), N'fengzijun', CAST(0x0000A25B016CA2E0 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'9e481e45-471c-448c-a592-a150a21924fb', N'媒体类', N'昆山易得', N'678678678', N'678678', N'20131018220709', CAST(678.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A24C00000000 AS DateTime), CAST(77.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 0, 0, N'66', N'678678678', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(601.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(678.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(77.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A25B016CE480 AS DateTime), N'fengzijun', CAST(0x0000A25B016CE480 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'd28304af-5880-4361-b3af-a829a6a2d06d', N'媒体类', N'昆山易得', N'第三方斯蒂芬', N'阿斯顿飞', N'2013102420392801', CAST(1111.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A26100000000 AS DateTime), CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 0, N'123131231', N'1231231231231231312123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(1089.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'0%', 0, N'20131024203928', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(22.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261015E8BD8 AS DateTime), N'admin', CAST(0x0000A261015E8BD8 AS DateTime), N'admin', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'85f3e1da-2cba-4977-a321-ace4b5aa0d79', N'媒体类', N'昆山易得', N'12313123123', N'啊沙发沙发', N'2013102420392801', CAST(111.00 AS Decimal(18, 2)), N'啊沙发沙发', CAST(0x0000A26200000000 AS DateTime), CAST(11.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'12312312', N'3123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131024203928', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(11.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A261015DB1E0 AS DateTime), N'admin', CAST(0x0000A261015E076C AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'cb2a9878-4d1d-4d8c-bfae-ba8ad2f894aa', N'媒体类', N'苏州海易', N'12313', NULL, N'20131011231116', CAST(213.00 AS Decimal(18, 2)), NULL, CAST(0x0000A25500000000 AS DateTime), CAST(12312.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), NULL, NULL, NULL, N'123123', N'33333333333333', 0, 0, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 1, NULL, NULL, CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', NULL, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A254017E2C54 AS DateTime), N'Admin', CAST(0x0000A261014B9F50 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'c60cf62b-09a9-433a-bbab-de8d4af7074d', N'房产类', N'昆山易得', N'测试', N'多萨大声的', N'2013102420392401', CAST(33333.00 AS Decimal(18, 2)), N'多萨大声的', CAST(0x0000A25800000000 AS DateTime), CAST(123213.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, N'123213', N'1312312312', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(-89880.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, N'20131024203924', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(123213.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A2610154A3E8 AS DateTime), N'admin', CAST(0x0000A2610154DAFC AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'1d7fc74f-5eec-40c6-b5c5-e57e4f5410dc', N'媒体类', N'昆山易得', N'678678678768', N'678768', N'20131018220709', CAST(678768.00 AS Decimal(18, 2)), N'宝骏', CAST(0x0000A25C00000000 AS DateTime), CAST(67868.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 0, 0, N'777', N'66666666666666666', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(610900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 0, NULL, CAST(678768.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(67868.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A25B016CCD10 AS DateTime), N'fengzijun', CAST(0x0000A25B016CCD10 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'009a9c9e-7a34-458e-8544-ee79661bc8d8', N'媒体类', N'苏州海易', N'测试内容', N'测试客户', N'20131010221522', CAST(111.00 AS Decimal(18, 2)), N'测试客户', CAST(0x0000A25A00000000 AS DateTime), CAST(11.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), NULL, 1, 1, N'测试说明', N'测试摘要', 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), N'20.72%', 0, NULL, CAST(111.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A253016F0C74 AS DateTime), N'Admin', CAST(0x0000A261014B9F50 AS DateTime), N'admin', 0)
INSERT [dbo].[order] ([id], [name], [company], [projectcontent], [customername], [orderno], [money], [customershortname], [time], [balance], [balancereduce], [balancereducereason], [isht], [iskp], [other], [remark], [managercheck], [cwcheck], [zk], [jsz], [ml], [lrmoney], [lr], [iszd], [parentorderno], [shouldmoney], [havemoney], [nothavemoney], [havemoneypercentage], [actualmoney], [hxmoney], [kpce], [createtime], [createby], [updatetime], [Updateby], [statues]) VALUES (N'caa0a1dd-bb8c-4e17-862e-faf18d07582a', N'房产类', N'昆山易得', N'测试项目', NULL, N'20131024200652', CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0x0000A26200000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, N'123123123', N'12313123123123123123', 0, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'0%', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A261014BD40C AS DateTime), N'admin', CAST(0x0000A261014FF9C4 AS DateTime), N'admin', 0)
/****** Object:  Table [dbo].[moneyreport]    Script Date: 10/24/2013 23:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[moneyreport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[moneyreport](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[jyj] [decimal](18, 2) NULL,
	[ysmoney] [decimal](18, 2) NULL,
	[ml] [decimal](18, 2) NULL,
	[mlv] [nvarchar](50) NULL,
	[othermoney] [decimal](18, 2) NULL,
	[yemoney] [decimal](18, 2) NULL,
	[yevnvarchar] [nvarchar](50) NULL,
	[dysk] [decimal](18, 2) NULL,
	[sqqk] [decimal](18, 2) NULL,
	[ssnk] [decimal](18, 2) NULL,
	[xj] [decimal](18, 2) NULL,
	[dnwqk] [decimal](18, 2) NULL,
	[snwqk] [decimal](18, 2) NULL,
	[xj2] [decimal](18, 2) NULL,
	[kpmoney] [decimal](18, 2) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'moneyreport', N'COLUMN',N'jyj'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'净业绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'moneyreport', @level2type=N'COLUMN',@level2name=N'jyj'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'moneyreport', N'COLUMN',N'ysmoney'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预算费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'moneyreport', @level2type=N'COLUMN',@level2name=N'ysmoney'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'moneyreport', N'COLUMN',N'dysk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收当月款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'moneyreport', @level2type=N'COLUMN',@level2name=N'dysk'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'moneyreport', N'COLUMN',N'sqqk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收前期款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'moneyreport', @level2type=N'COLUMN',@level2name=N'sqqk'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'moneyreport', N'COLUMN',N'ssnk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收上年款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'moneyreport', @level2type=N'COLUMN',@level2name=N'ssnk'
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](50) NULL,
	[parentid] [int] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NOT NULL CONSTRAINT [DF_menu_statues]  DEFAULT ((1)),
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[menu] ON
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (1, N'订单录入', N'/order/input', 14, CAST(0x0000A2350160AF99 AS DateTime), N'admin', CAST(0x0000A2350160AF99 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (2, N'开票', N'/order/kp', 14, CAST(0x0000A2350160D264 AS DateTime), N'admin', CAST(0x0000A2350160D264 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (3, N'订单查询', N'/order/search', 14, CAST(0x0000A2350160E53D AS DateTime), N'admin', CAST(0x0000A2350160E53D AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (4, N'业务提成申请', N'/order/ywtc_ask', 14, CAST(0x0000A2350163FEE3 AS DateTime), N'admin', CAST(0x0000A2350163FEE3 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (5, N'订单调整申请', N'/order/ddtz_ask', 14, CAST(0x0000A235016448B0 AS DateTime), N'admin', CAST(0x0000A235016448B0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (6, N'业务费申请', N'/order/ywf_ask', 14, CAST(0x0000A23501648209 AS DateTime), N'admin', CAST(0x0000A23501648209 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (7, N'预算单录入', N'/budget/input', 15, CAST(0x0000A2350164C6EF AS DateTime), N'admin', CAST(0x0000A2350164C6EF AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (8, N'项目支出申请录入', N'/budget/xmzc_ask', 15, CAST(0x0000A2350164F4BF AS DateTime), N'admin', CAST(0x0000A2350164F4BF AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (9, N'订单项目支出记账', N'/finance/payment_jz', 16, CAST(0x0000A23501656EFE AS DateTime), N'admin', CAST(0x0000A23501656EFE AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (10, N'订单金额调整', N'/order/ddtz_ask', 16, CAST(0x0000A235016759EB AS DateTime), N'admin', CAST(0x0000A235016759EB AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (11, N'订单收款销账', N'/finance/ddsz', 16, CAST(0x0000A23501677015 AS DateTime), N'admin', CAST(0x0000A23501677015 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (12, N'开票信息导入', N'/finance/kpinput', 16, CAST(0x0000A23501678455 AS DateTime), N'admin', CAST(0x0000A23501678455 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (13, N'日常支出录入', N'/finance/rczc_input', 16, CAST(0x0000A23501679A93 AS DateTime), N'admin', CAST(0x0000A23501679A93 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (14, N'业务订单', N'/#', 0, CAST(0x0000A23A008C3814 AS DateTime), N'admin', CAST(0x0000A23A008C3814 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (15, N'预算模块', N'/#', 0, CAST(0x0000A23A008C493F AS DateTime), N'admin', CAST(0x0000A23A008C493F AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (16, N'财务模块', N'/#', 0, CAST(0x0000A23A008C5678 AS DateTime), N'admin', CAST(0x0000A23A008C5678 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (17, N'总经理模块', N'/#', 0, CAST(0x0000A23A008C6B5E AS DateTime), N'admin', CAST(0x0000A23A008C6B5E AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (18, N'执行董事', N'/#', 0, CAST(0x0000A23A008C9BF7 AS DateTime), N'admin', CAST(0x0000A23A008C9BF7 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (19, N'绩效目标查询', N'/order/jxsearch', 14, CAST(0x0000A23A008D519C AS DateTime), N'admin', CAST(0x0000A23A008D519C AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (20, N'业务绩效考核', N'/finance/ywjxkh', 16, CAST(0x0000A23A008EDB42 AS DateTime), N'admin', CAST(0x0000A23A008EDB42 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (21, N'查询订单', N'/finance/ordersearch', 16, CAST(0x0000A23A008F0598 AS DateTime), N'admin', CAST(0x0000A23A008F0598 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (22, N'月报表', N'/finance/reportsearch', 16, CAST(0x0000A23A008F20CE AS DateTime), N'admin', CAST(0x0000A23A008F20CE AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (23, N'订单预算审核', N'/manager/ordercheck', 17, CAST(0x0000A23A008FD600 AS DateTime), N'admin', CAST(0x0000A23A008FD600 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (24, N'设置绩效', N'/manager/jxsetting', 17, CAST(0x0000A23A008FFD84 AS DateTime), N'admin', CAST(0x0000A23A008FFD84 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (25, N'客户管理', N'/manager/custommanager', 17, CAST(0x0000A23A00901F27 AS DateTime), N'admin', CAST(0x0000A23A00901F27 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (26, N'开票审核', N'/manager/kpcheck', 17, CAST(0x0000A23A00903383 AS DateTime), N'admin', CAST(0x0000A23A00903383 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (27, N'项目支出审核', N'/manager/xmzccheck', 17, CAST(0x0000A23A00904A81 AS DateTime), N'admin', CAST(0x0000A23A00904A81 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (28, N'日常支出审核', N'/manager/rczccheck', 17, CAST(0x0000A23A00905C9A AS DateTime), N'admin', CAST(0x0000A23A00905C9A AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (29, N'查询订单', N'/manager/ordersearch', 17, CAST(0x0000A23A00907B55 AS DateTime), N'admin', CAST(0x0000A23A00907B55 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (30, N'月报表', N'/manager/reportsearch', 17, CAST(0x0000A23A009091EB AS DateTime), N'admin', CAST(0x0000A23A009091EB AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (31, N'总单发起', N'/manager/mainorder', 17, CAST(0x0000A23A0090BF99 AS DateTime), N'admin', CAST(0x0000A23A0090BF99 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (32, N'订单预算审核', N'/topmanager/ordercheck', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (33, N'设置绩效', N'/manager/jxsetting', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (35, N'开票审核', N'/topmanager/kpcheck', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (36, N'项目支出审核', N'/topmanager/xmzccheck', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (37, N'日常支出审核', N'/topmanager/rczccheck', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (38, N'查询订单', N'/manager/ordersearch', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (39, N'月报表', N'/topmanager/reportsearch', 18, CAST(0x0000A23A009168C0 AS DateTime), N'admin', CAST(0x0000A23A009168C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (41, N'系统管理', N'/systemmanager/role', 0, CAST(0x0000A23A017425E8 AS DateTime), N'admin', CAST(0x0000A23A017425E8 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (42, N'角色管理', N'/systemmanager/role', 41, CAST(0x0000A23A017457CF AS DateTime), N'admin', CAST(0x0000A23A017457CF AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (43, N'用户管理', N'/systemmanager/user', 41, CAST(0x0000A23C015474C0 AS DateTime), N'admin', CAST(0x0000A23C015474C0 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (44, N'开票类型设置', N'/systemmanager/kptypesetting', 41, CAST(0x0000A2450162956D AS DateTime), N'admin', CAST(0x0000A2450162956D AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (45, N'提成设置', N'/systemmanager/pushmoneysetting', 41, CAST(0x0000A24501715C5B AS DateTime), N'admin', CAST(0x0000A24501715C5B AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (46, N'子订单输入', N'/order/childinput', 14, CAST(0x0000A254017F61BC AS DateTime), N'admin', CAST(0x0000A254017F61BC AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (47, N'营业报表', N'/finance/yereportsearch', 16, CAST(0x0000A25901087C79 AS DateTime), N'admin', CAST(0x0000A25901087C79 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (48, N'费用详细报表', N'/finance/systemreportsearch', 16, CAST(0x0000A2590112F03D AS DateTime), N'admin', CAST(0x0000A2590112F03D AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (49, N'订单调整申请审核', N'/manager/ordertz_jz', 17, CAST(0x0000A25A01089CD6 AS DateTime), N'admin', CAST(0x0000A25A01089CD6 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (50, N'业务费审核', N'/manager/ywfcheck', 17, CAST(0x0000A25A01751D48 AS DateTime), N'admin', CAST(0x0000A25A01751D48 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (51, N'业务提成审核', N'/manager/ywtc_check', 17, CAST(0x0000A25C00AB2767 AS DateTime), N'admin', CAST(0x0000A25C00AB2767 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (52, N'费用详细报表', N'/finance/systemreportsearch', 17, CAST(0x0000A25E016B9D91 AS DateTime), N'admin', CAST(0x0000A25E016B9D91 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (53, N'营业报表', N'/finance/yereportsearch', 18, CAST(0x0000A25E017BE1E4 AS DateTime), N'admin', CAST(0x0000A25E017BE1E4 AS DateTime), N'admin', 1)
INSERT [dbo].[menu] ([id], [name], [url], [parentid], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (54, N'费用详细报表', N'/finance/systemreportsearch', 18, CAST(0x0000A25E017C09A1 AS DateTime), N'admin', CAST(0x0000A25E017C09A1 AS DateTime), N'admin', 1)
SET IDENTITY_INSERT [dbo].[menu] OFF
/****** Object:  Table [dbo].[log]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[log](
	[id] [uniqueidentifier] NOT NULL,
	[msgcontent] [nvarchar](max) NULL,
	[type] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c7d1b8b4-6d12-4e5f-b44a-09d33fa8a2eb', N'admin创建开票，编号为:239f4a79-ec36-4259-b70a-7b9d4669b935', N'info', CAST(0x0000A260010D64D8 AS DateTime), N'admin', CAST(0x0000A260010D64D8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd1092319-7eca-4a3c-9f59-1788a2a11039', N'admin更新开票，编号为:239f4a79-ec36-4259-b70a-7b9d4669b935', N'info', CAST(0x0000A260010EA398 AS DateTime), N'admin', CAST(0x0000A260010EA398 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a06b79f2-90c3-4e7c-a97a-1ce234ad60ca', N'Message:未将对象引用设置到对象的实例。| Source:CW.Web|StackTrace    在 CW.Web.Controllers.OrderController.ChildInput(FormCollection data) 位置 C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\OrderController.cs:行号 236', N'error', CAST(0x0000A2610154A3E8 AS DateTime), N'admin', CAST(0x0000A2610154A3E8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'b05675b0-02d6-4d56-9b4d-1e1fb56c60bf', N'admin删除订单，编号为:cb2a9878-4d1d-4d8c-bfae-ba8ad2f894aa,8193f3ce-ff07-48b2-b27d-49a763f96948,8aff17e9-f388-40f1-854e-29202dc22490,009a9c9e-7a34-458e-8544-ee79661bc8d8', N'info', CAST(0x0000A261014B9F50 AS DateTime), N'admin', CAST(0x0000A261014B9F50 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'44e5de33-c1b0-494b-9f79-2fdd0bbc1d7e', N'admin更新开票，编号为:239f4a79-ec36-4259-b70a-7b9d4669b935', N'info', CAST(0x0000A260010EB1A8 AS DateTime), N'admin', CAST(0x0000A260010EB1A8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'2ba9dcc1-cf47-4ac4-9f52-324250f990da', N'admin创建子订单，编号为:85f3e1da-2cba-4977-a321-ace4b5aa0d79', N'info', CAST(0x0000A261015DB1E0 AS DateTime), N'admin', CAST(0x0000A261015DB1E0 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'00c80338-6688-4b86-8e2f-555d81045162', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000EA6708 AS DateTime), N'admin', CAST(0x0000A26000EA6708 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'513d6185-1c79-4be8-ba97-56491a3ad29e', N'admin创建开票，编号为:d16e051c-537a-4107-b12f-0859503745eb', N'info', CAST(0x0000A26000FBD45C AS DateTime), N'admin', CAST(0x0000A26000FBD45C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4b655680-073d-4bdc-97a5-56c521757977', N'admin创建子订单，编号为:729a8079-90db-4062-9532-94e11862aed6', N'info', CAST(0x0000A261015EA7F8 AS DateTime), N'admin', CAST(0x0000A261015EA7F8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c4c8e1d2-d272-45f1-8266-5d5494a30ab0', N'Message:GUID 应包含带 4 个短划线的 32 位数(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)。| Source:mscorlib|StackTrace    在 System.Guid.GuidResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument, String failureArgumentName, Exception innerException)
   在 System.Guid.TryParseGuidWithNoStyle(String guidString, GuidResult& result)
   在 System.Guid.TryParseGuid(String g, GuidStyles flags, GuidResult& result)
   在 System.Guid..ctor(String g)
   在 CW.Web.Controllers.OrderController.ChildInput(FormCollection data) 位置 C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\OrderController.cs:行号 235', N'error', CAST(0x0000A261014C8C08 AS DateTime), N'admin', CAST(0x0000A261014C8C08 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a4e3e954-a704-4781-8c61-65ac7954cdee', N'admin删除订单，编号为:218346e8-2017-4c62-b37f-8c5f373ed190', N'info', CAST(0x0000A261015D4BEC AS DateTime), N'admin', CAST(0x0000A261015D4BEC AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'74612f7e-1e78-486a-9cd6-65b04a42ab03', N'admin创建开票，编号为:76996964-8fd1-4be5-b1b5-ba11041c892e', N'info', CAST(0x0000A260011A9054 AS DateTime), N'admin', CAST(0x0000A260011A9054 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e25b0627-7288-4c28-8c67-6cae2302157e', N'admin创建子订单，编号为:d28304af-5880-4361-b3af-a829a6a2d06d', N'info', CAST(0x0000A261015E8BD8 AS DateTime), N'admin', CAST(0x0000A261015E8BD8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd3b446c7-3b7c-48b5-9d17-729904aa7e39', N'Message:GUID 应包含带 4 个短划线的 32 位数(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)。| Source:mscorlib|StackTrace    在 System.Guid.GuidResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument, String failureArgumentName, Exception innerException)
   在 System.Guid.TryParseGuidWithNoStyle(String guidString, GuidResult& result)
   在 System.Guid.TryParseGuid(String g, GuidStyles flags, GuidResult& result)
   在 System.Guid..ctor(String g)
   在 CW.Web.Controllers.OrderController.ChildInput(FormCollection data) 位置 C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\OrderController.cs:行号 235', N'error', CAST(0x0000A261014D2910 AS DateTime), N'admin', CAST(0x0000A261014D2910 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'68c26fb1-27ed-4bf3-97b6-779bf2e62910', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000EA5448 AS DateTime), N'admin', CAST(0x0000A26000EA5448 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8cf45778-0474-4b92-92d8-8669da259498', N'admin删除订单，编号为:85f3e1da-2cba-4977-a321-ace4b5aa0d79', N'info', CAST(0x0000A261015E076C AS DateTime), N'admin', CAST(0x0000A261015E076C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'e96b7f3b-1f99-44f9-bd78-87108bba56be', N'admin创建订单，编号为:e0fa2950-7dfe-44cc-ab8a-3b4efa9bf343', N'info', CAST(0x0000A25F00F838EC AS DateTime), N'admin', CAST(0x0000A25F00F838EC AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8b728a34-fb56-438c-ba89-8b62a21172a1', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000E836E0 AS DateTime), N'admin', CAST(0x0000A26000E836E0 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'5c6a5d9f-2c27-4c5d-b038-8cb81b44e856', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000EEAFE8 AS DateTime), N'admin', CAST(0x0000A26000EEAFE8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'64227aa7-9cba-45d2-80b9-99e5c965ff30', N'Message:SQL execution failed| Source:CW.Service|StackTrace    at CW.Service.KpTypeService.Get(String name, String type, Nullable`1 statues, Int32 Page, String sortKey, PaginationInfo& paing, Boolean isfuzzy) in C:\Users\Administrator\Desktop\CW.Web\CW.Service\KpTypeService.cs:line 256
   at CW.Web.Controllers.SystemManagerController.GetKpTypes(Nullable`1 page) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 297', N'error', CAST(0x0000A26001195C20 AS DateTime), N'admin', CAST(0x0000A26001195C20 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'44e5def1-abe6-4d88-98dc-9bdc595dee9e', N'admin更新开票，编号为:239f4a79-ec36-4259-b70a-7b9d4669b935', N'info', CAST(0x0000A260010DE110 AS DateTime), N'admin', CAST(0x0000A260010DE110 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'276d104f-1d27-4d3a-8d6f-9e5049a5f67d', N'admin创建订单，订单编号为:caa0a1dd-bb8c-4e17-862e-faf18d07582a', N'info', CAST(0x0000A261014BD40C AS DateTime), N'admin', CAST(0x0000A261014BD40C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'c2b915c6-ecee-4895-9fec-a62d31a32271', N'admin创建开票，编号为:d40a8118-f553-49f6-ae6a-166833055fe8', N'info', CAST(0x0000A261016E5DD8 AS DateTime), N'admin', CAST(0x0000A261016E5DD8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'57496b02-c89d-4dc2-b995-a96c48514df8', N'admin更新开票，编号为:0ab492f5-092f-4eb2-b2d2-db04df483548', N'info', CAST(0x0000A260011A64F8 AS DateTime), N'admin', CAST(0x0000A260011A64F8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f58e4f3c-eae0-4ca7-938a-a97b8c3e056f', N'admin创建开票，编号为:4a80a5de-d5a7-4f6f-a848-4d6beb0e5887', N'info', CAST(0x0000A2610165975C AS DateTime), N'admin', CAST(0x0000A2610165975C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'97ade57b-6721-4da8-8ce6-af6bc5426035', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000ECD1C8 AS DateTime), N'admin', CAST(0x0000A26000ECD1C8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd9dd2d7c-55da-4e11-a67f-b2847290fea6', N'Message:SQL execution failed| Source:CW.Service|StackTrace    at CW.Service.KpTypeService.Get(String name, String type, Nullable`1 statues, Int32 Page, String sortKey, PaginationInfo& paing, Boolean isfuzzy) in C:\Users\Administrator\Desktop\CW.Web\CW.Service\KpTypeService.cs:line 256
   at CW.Web.Controllers.SystemManagerController.AddKpType(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 381', N'error', CAST(0x0000A2600119700C AS DateTime), N'admin', CAST(0x0000A2600119700C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7948eac5-08ef-4c4c-9bbc-b9293a3afef3', N'admin创建订单，订单编号为:7b31d1d0-a11b-4ac0-ae2c-8f95bc6876d8', N'info', CAST(0x0000A26101547AE4 AS DateTime), N'admin', CAST(0x0000A26101547AE4 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'17b3cbaf-6ed4-4c7f-998f-d494c862f5af', N'admin创建开票，编号为:8109f4a5-9e99-46f3-98bc-7dd84d4f61e5', N'info', CAST(0x0000A261016DEC2C AS DateTime), N'admin', CAST(0x0000A261016DEC2C AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'a225fcbe-7028-4427-a4ad-d551b6ae519f', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000EA3CD8 AS DateTime), N'admin', CAST(0x0000A26000EA3CD8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'60f38af4-6885-4e51-8d5c-da0ecf4436b9', N'admin创建开票，编号为:0ab492f5-092f-4eb2-b2d2-db04df483548', N'info', CAST(0x0000A260011A5490 AS DateTime), N'admin', CAST(0x0000A260011A5490 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'01cc68ff-e79e-42b2-a14e-dd59b03df762', N'Message:SQL execution failed| Source:CW.Service|StackTrace    at CW.Service.KpTypeService.Get(String name, String type, Nullable`1 statues, Int32 Page, String sortKey, PaginationInfo& paing, Boolean isfuzzy) in C:\Users\Administrator\Desktop\CW.Web\CW.Service\KpTypeService.cs:line 256
   at CW.Web.Controllers.SystemManagerController.AddKpType(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 381', N'error', CAST(0x0000A2600119FDD8 AS DateTime), N'admin', CAST(0x0000A2600119FDD8 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'aef42e96-17a0-4024-93ec-deba06653992', N'Message:SQL execution failed| Source:CW.Service|StackTrace    at CW.Service.KpTypeService.Get(String name, String type, Nullable`1 statues, Int32 Page, String sortKey, PaginationInfo& paing, Boolean isfuzzy) in C:\Users\Administrator\Desktop\CW.Web\CW.Service\KpTypeService.cs:line 256
   at CW.Web.Controllers.SystemManagerController.AddKpType(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 381', N'error', CAST(0x0000A2600119A978 AS DateTime), N'admin', CAST(0x0000A2600119A978 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd51cb0b3-8dc7-4d98-83f4-e0f63b6dfcbd', N'admin删除订单，编号为:795332d6-d365-4e59-abf4-21968ad59686,d9c240f9-000e-4e0d-a077-71f9b67a9aea,caa0a1dd-bb8c-4e17-862e-faf18d07582a', N'info', CAST(0x0000A261014FF9C4 AS DateTime), N'admin', CAST(0x0000A261014FF9C4 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8217b05c-fc95-4d3f-a2ed-e74c8050eac9', N'admin创建订单，编号为:9ff2c395-a4e2-46a4-9b7b-91cb360d1c28', N'info', CAST(0x0000A25F00F76980 AS DateTime), N'admin', CAST(0x0000A25F00F77B14 AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'41736496-1037-482a-b686-e8c3dc058849', N'Message:Input string was not in a correct format.| Source:mscorlib|StackTrace    at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at CW.Web.Controllers.SystemManagerController.Edituser(FormCollection data) in C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\SystemManagerController.cs:line 232', N'error', CAST(0x0000A26000E83CBC AS DateTime), N'admin', CAST(0x0000A26000E83CBC AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'616fd6dd-155b-448f-be5f-e8f43a46c176', N'Message:未将对象引用设置到对象的实例。| Source:CW.Web|StackTrace    在 CW.Web.Controllers.OrderController.ChildInput(FormCollection data) 位置 C:\Users\Administrator\Desktop\CW.Web\CW.Web\Controllers\OrderController.cs:行号 236', N'error', CAST(0x0000A261015AE5DC AS DateTime), N'admin', CAST(0x0000A261015AE5DC AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0c13259f-4947-4de3-8c15-e9ee45e7abd7', N'admin删除订单，编号为:c60cf62b-09a9-433a-bbab-de8d4af7074d', N'info', CAST(0x0000A2610154DAFC AS DateTime), N'admin', CAST(0x0000A2610154DAFC AS DateTime), N'admin', 1)
INSERT [dbo].[log] ([id], [msgcontent], [type], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'799ad5e3-12ba-44cf-a822-fbd37ce9d84a', N'admin删除开票，编号为:76996964-8fd1-4be5-b1b5-ba11041c892e,0ab492f5-092f-4eb2-b2d2-db04df483548,239f4a79-ec36-4259-b70a-7b9d4669b935,d16e051c-537a-4107-b12f-0859503745eb,76fab2cf-7d32-4ba6-84b2-ca614fbf1723', N'info', CAST(0x0000A261016542FC AS DateTime), N'admin', CAST(0x0000A261016542FC AS DateTime), N'admin', 1)
/****** Object:  Table [dbo].[kptype]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kptype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kptype](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[projectname] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_kptype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'kptype', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开票类型设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kptype', @level2type=N'COLUMN',@level2name=N'id'
GO
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'82b430d6-e84b-4181-afcc-062d0a1ead02', N'测试', N'增票', NULL, CAST(0x0000A26000F7BA5C AS DateTime), N'admin', CAST(0x0000A26000F7BA5C AS DateTime), N'admin', 0)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'941a48f2-150e-419a-871d-2cfc53e385d5', N'4444', N'增票', N'2222', CAST(0x0000A260011A26DC AS DateTime), N'admin', CAST(0x0000A260011A26DC AS DateTime), N'admin', 1)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'99864f44-c4b1-459e-939a-80a6824cf861', N'123123', N'普票', NULL, CAST(0x0000A26000F8055C AS DateTime), N'admin', CAST(0x0000A26000F8055C AS DateTime), N'admin', 0)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'f354ba3e-c711-4d8e-8f88-9479bbac4c20', N'5555', N'增票', NULL, CAST(0x0000A245016EA8D8 AS DateTime), N'Admin', CAST(0x0000A2450170E38C AS DateTime), N'Admin', 0)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'3117616b-9e50-4ce6-b493-a48060b5ed9c', N'123123', N'普票', N'123', CAST(0x0000A260011A18CC AS DateTime), N'admin', CAST(0x0000A260011A18CC AS DateTime), N'admin', 1)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'fbd08d5a-d385-4ed7-931e-d0e67a488673', N'rrer', N'增票', NULL, CAST(0x0000A245016D2AD0 AS DateTime), N'Admin', CAST(0x0000A245016D2AD0 AS DateTime), N'Admin', 0)
INSERT [dbo].[kptype] ([id], [name], [type], [projectname], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4e77517b-c62a-44f2-b772-e8ec747b4079', N'555', N'增票', NULL, CAST(0x0000A245016E408C AS DateTime), N'Admin', CAST(0x0000A245016E408C AS DateTime), N'Admin', 0)
/****** Object:  Table [dbo].[kp]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kp](
	[id] [uniqueidentifier] NOT NULL,
	[orderid] [nvarchar](50) NULL,
	[kptt] [nvarchar](50) NULL,
	[customername] [nvarchar](50) NULL,
	[customershortname] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[project] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[bcmoney] [decimal](18, 2) NULL,
	[company] [nvarchar](50) NULL,
	[bjsj] [decimal](18, 2) NULL,
	[remark] [nvarchar](50) NULL,
	[other] [nvarchar](50) NULL,
	[ywuser] [nvarchar](50) NULL,
	[manageridea] [nvarchar](50) NULL,
	[managerreason] [nvarchar](50) NULL,
	[topmanageridea] [nvarchar](50) NULL,
	[topmanagerreason] [nvarchar](50) NULL,
	[managercheck] [bit] NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_kp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'kp', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开票表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kp', @level2type=N'COLUMN',@level2name=N'id'
GO
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd16e051c-537a-4107-b12f-0859503745eb', N'20131010221849', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'增票', N'测试', CAST(22.00 AS Decimal(18, 2)), CAST(-6467.00 AS Decimal(18, 2)), N'苏州易开', CAST(-1099.00 AS Decimal(18, 2)), N'123123', N'13213123123123', N'admin', N'1', NULL, NULL, NULL, 0, CAST(0x0000A26000FBCE80 AS DateTime), N'admin', CAST(0x0000A26000FBCFAC AS DateTime), N'admin', 0)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'd40a8118-f553-49f6-ae6a-166833055fe8', N'2013102420392802', N'昆山市骏菱汽车销售服务有限公司', N'1231231', N'宝骏', N'增票', N'2222', CAST(222222.00 AS Decimal(18, 2)), CAST(-223412.00 AS Decimal(18, 2)), N'昆山易得', CAST(-37980.00 AS Decimal(18, 2)), N'1231312', N'111', N'admin', NULL, NULL, N'1', NULL, 0, CAST(0x0000A261016E5DD8 AS DateTime), N'admin', CAST(0x0000A261016E5DD8 AS DateTime), N'admin', 1)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'4a80a5de-d5a7-4f6f-a848-4d6beb0e5887', N'2013102420392801', N'昆山市骏菱汽车销售服务有限公司', N'阿斯顿飞', N'宝骏', N'增票', N'2222', CAST(111.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), N'苏州易开', CAST(170.00 AS Decimal(18, 2)), N'123123', N'213123123123', N'admin', N'1', NULL, NULL, NULL, 0, CAST(0x0000A2610165975C AS DateTime), N'admin', CAST(0x0000A2610165975C AS DateTime), N'admin', 1)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'239f4a79-ec36-4259-b70a-7b9d4669b935', N'20131018220709', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'普票', N'123123', CAST(111.00 AS Decimal(18, 2)), CAST(86453.00 AS Decimal(18, 2)), N'苏州易开', CAST(14697.00 AS Decimal(18, 2)), N'123', N'123123123', N'admin', N'1', NULL, NULL, NULL, 0, CAST(0x0000A260010D64D8 AS DateTime), N'admin', CAST(0x0000A260010EB1A8 AS DateTime), N'admin', 0)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'8109f4a5-9e99-46f3-98bc-7dd84d4f61e5', N'2013102420392802', N'昆山市骏菱汽车销售服务有限公司', N'1231231', N'宝骏', N'增票', N'2222', CAST(1223.00 AS Decimal(18, 2)), CAST(-1190.00 AS Decimal(18, 2)), N'苏州易开', CAST(-202.00 AS Decimal(18, 2)), N'123123123', N'123123', N'admin', NULL, NULL, N'1', NULL, 0, CAST(0x0000A261016DEC2C AS DateTime), N'admin', CAST(0x0000A261016DEC2C AS DateTime), N'admin', 1)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'76996964-8fd1-4be5-b1b5-ba11041c892e', N'20131018220709', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'普票', N'123', CAST(123.00 AS Decimal(18, 2)), CAST(86307.00 AS Decimal(18, 2)), N'昆山易得', CAST(14672.00 AS Decimal(18, 2)), N'123123', N'123', N'admin', N'1', NULL, NULL, NULL, 0, CAST(0x0000A260011A9054 AS DateTime), N'admin', CAST(0x0000A260011A9054 AS DateTime), N'admin', 0)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'ecb14331-e420-4a7d-89c3-c017c9323494', N'20131018220709', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'增票', N'123123', CAST(222.00 AS Decimal(18, 2)), CAST(86564.00 AS Decimal(18, 2)), N'苏州浦瑞道', CAST(14716.00 AS Decimal(18, 2)), N'123123', N'12321', N'fengzijun', N'1', NULL, NULL, NULL, 0, CAST(0x0000A25B017C508C AS DateTime), N'fengzijun', CAST(0x0000A25C00C05C88 AS DateTime), N'fengzijun', 1)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'7744287d-bef4-45e4-96c5-c52dcfac5f75', N'20131018220709', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'普票', N'1112', CAST(222223.00 AS Decimal(18, 2)), CAST(-135659.00 AS Decimal(18, 2)), N'太仓易开', CAST(-23062.00 AS Decimal(18, 2)), N'33335', N'2234', N'fengzijun', N'1', NULL, NULL, NULL, 0, CAST(0x0000A25B017FBF74 AS DateTime), N'fengzijun', CAST(0x0000A25B01819434 AS DateTime), N'fengzijun', 0)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'76fab2cf-7d32-4ba6-84b2-ca614fbf1723', N'20131010221849', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'普票', N'1213123123', CAST(12000.00 AS Decimal(18, 2)), CAST(212.00 AS Decimal(18, 2)), N'昆山市骏菱汽车销售服务有限公司', CAST(54.00 AS Decimal(18, 2)), N'发发的说法', N'123213213123123', N'admin', N'阿呆发生的啊', N'啊撒发达省份', N'啊撒的凤飞飞', N'的萨芬的', 0, CAST(0x0000A257010A421C AS DateTime), N'admin', CAST(0x0000A257010D4534 AS DateTime), N'admin', 0)
INSERT [dbo].[kp] ([id], [orderid], [kptt], [customername], [customershortname], [type], [project], [money], [bcmoney], [company], [bjsj], [remark], [other], [ywuser], [manageridea], [managerreason], [topmanageridea], [topmanagerreason], [managercheck], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'0ab492f5-092f-4eb2-b2d2-db04df483548', N'20131018220709', N'昆山市骏菱汽车销售服务有限公司', NULL, NULL, N'普票', N'2222', CAST(23.00 AS Decimal(18, 2)), CAST(86430.00 AS Decimal(18, 2)), N'昆山易得', CAST(14693.00 AS Decimal(18, 2)), N'123', N'123123', N'admin', N'1', NULL, NULL, NULL, 0, CAST(0x0000A260011A5490 AS DateTime), N'admin', CAST(0x0000A260011A62A0 AS DateTime), N'admin', 0)
/****** Object:  Table [dbo].[jx_target]    Script Date: 10/24/2013 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jx_target]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jx_target](
	[id] [uniqueidentifier] NOT NULL,
	[company] [nvarchar](50) NULL,
	[businesstype] [nvarchar](50) NULL,
	[firstsection] [nvarchar](50) NULL,
	[firstcomplete] [nvarchar](50) NULL,
	[secsection] [nvarchar](50) NULL,
	[seccomplete] [nvarchar](50) NULL,
	[thrsection] [nvarchar](50) NULL,
	[thrcomplete] [nvarchar](50) NULL,
	[foursection] [nvarchar](50) NULL,
	[fourcomplete] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[createby] [nvarchar](50) NULL,
	[updatetime] [datetime] NULL,
	[updateby] [nvarchar](50) NULL,
	[statues] [int] NULL,
 CONSTRAINT [PK_jx_target] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'jx_target', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绩效目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jx_target', @level2type=N'COLUMN',@level2name=N'id'
GO
INSERT [dbo].[jx_target] ([id], [company], [businesstype], [firstsection], [firstcomplete], [secsection], [seccomplete], [thrsection], [thrcomplete], [foursection], [fourcomplete], [createtime], [createby], [updatetime], [updateby], [statues]) VALUES (N'14192af7-50e5-454b-b4ac-0842578eefdd', N'aaaaa', N'bbb', N'cc', N'dd', N'cc', N'dd', N'cc', N'dd', N'cc', N'dd', CAST(0x0000A24D00A0B981 AS DateTime), N'admin', CAST(0x0000A24D00A0B981 AS DateTime), N'admin', 1)
/****** Object:  UserDefinedFunction [dbo].[fn_Split]    Script Date: 10/24/2013 23:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

create  FUNCTION [dbo].[fn_Split](@text nvarchar(4000), @delimiter varchar(20) = '' '')

RETURNS @Strings TABLE

(   

  position int IDENTITY PRIMARY KEY,

  value nvarchar(4000)  

)

AS

BEGIN

 

DECLARE @index int

SET @index = -1

 

WHILE (LEN(@text) > 0)

  BEGIN 



    SET @index = CHARINDEX(@delimiter , @text) 

    IF (@index = 0) AND (LEN(@text) > 0) 

      BEGIN  

        INSERT INTO @Strings VALUES (@text)

          BREAK 

      END 

    IF (@index > 1) 

      BEGIN  

        INSERT INTO @Strings VALUES (LEFT(@text, @index - 1))  

        SET @text = RIGHT(@text, (LEN(@text) - @index -2)) 

      END 


    ELSE

      SET @text = RIGHT(@text, (LEN(@text) - @index))

    END

  RETURN

END' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetPageSize]    Script Date: 10/24/2013 23:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetPageSize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[fn_GetPageSize]
(
	
)
RETURNS INT 
AS
BEGIN

	/*
		Pagesize in profile.
	*/
	DECLARE @profilePagesize AS INT
	select @profilePagesize = convert(int,value) from setting where name  = ''pagesize''
    return @profilePagesize
END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetDefSortKey]    Script Date: 10/24/2013 23:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetDefSortKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[fn_GetDefSortKey]
(
	
)
RETURNS nvarchar(256) 
AS
BEGIN

	/*
		Pagesize in profile.
	*/
	DECLARE @sortkey AS nvarchar(50)
	select @sortkey = value from setting where name  = ''sortkey''
    return @sortkey
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_budget_detail_d]
@id uniqueidentifier
as

UPDATE [budget_detail]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_budget_detail_c]
      	  @id uniqueidentifier,
	        	  @budgetid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum int,
	        	  @price decimal,
	        	  @totalprice decimal,
	        	  @remark nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[budget_detail] (

            [id],
            [budgetid],
            [name],
            [gg],
            [daynum],
            [price],
            [totalprice],
            [remark],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @budgetid ,
            @name ,
            @gg ,
            @daynum ,
            @price ,
            @totalprice ,
            @remark ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_budget_d]
@id uniqueidentifier
as

UPDATE [budget]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_budget_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @time nvarchar(100),
	        	  @money decimal,
	        	  @manageruser nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[budget] (

            [id],
            [name],
            [orderno],
            [time],
            [money],
            [manageruser],
            [orderuser],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @orderno ,
            @time ,
            @money ,
            @manageruser ,
            @orderuser ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_activity_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time datetime,
	        	  @orderno nvarchar(100),
	        	  @money decimal,
	        	  @mainuser nvarchar(100),
	        	  @checkuser nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[activity] set



	    	    [name] = @name,

	    	    [time] = @time,

	    	    [orderno] = @orderno,

	    	    [money] = @money,

	    	    [mainuser] = @mainuser,

	    	    [checkuser] = @checkuser,

	    	    [orderuser] = @orderuser,

	    	    [createtime] = @createtime,

	    	    [createby] = @createby,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_activity_d]
@id uniqueidentifier
as

UPDATE [activity]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_activity_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time datetime,
	        	  @orderno nvarchar(100),
	        	  @money decimal,
	        	  @mainuser nvarchar(100),
	        	  @checkuser nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[activity] (

            [id],
            [name],
            [time],
            [orderno],
            [money],
            [mainuser],
            [checkuser],
            [orderuser],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @time ,
            @orderno ,
            @money ,
            @mainuser ,
            @checkuser ,
            @orderuser ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_budget_detail_u]
      	  @id uniqueidentifier,
	        	  @budgetid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum int,
	        	  @price decimal,
	        	  @totalprice decimal,
	        	  @remark nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[budget_detail] set

 

	    	    [budgetid] = @budgetid,

	    	    [name] = @name,

	    	    [gg] = @gg,

	    	    [daynum] = @daynum,

	    	    [price] = @price,

	    	    [totalprice] = @totalprice,

	    	    [remark] = @remark,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_business_money_request_detail_d]
@id uniqueidentifier
as

UPDATE [business_money_request_detail]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_business_money_request_detail_c]
      	  @id uniqueidentifier,
	        	  @businessid uniqueidentifier,
	        	  @money decimal,
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[business_money_request_detail] (

            [id],
            [businessid],
            [money],
            [type],
            [maintype] ,
            [remark],
            [other],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @businessid ,
            @money ,
            @type ,
            @maintype ,
            @remark ,
            @other ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_business_money_request_d]
@id uniqueidentifier
as

UPDATE [business_money_request]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_business_money_request_c]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customername nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @time datetime,
	        	  @money decimal,
	        	  @receivemoney decimal,
	        	  @receivetime datetime,
	        	  @overday int,
	        	  @moneypercentage nvarchar(100),
	        	  @businessmoney decimal,
	        	  @orderuser nvarchar(100),
	        	  @ismanagecheck bit,
	        	  @istopmanagercheck bit,
	        	  @isjz bit,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[business_money_request] (

            [id],
            [orderno],
            [customername],
            [company],
            [projectcontent],
            [time],
            [money],
            [receivemoney],
            [receivetime],
            [overday],
            [moneypercentage],
            [businessmoney],
            [orderuser],
            [ismanagecheck],
            [istopmanagercheck],
            [isjz],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @orderno ,
            @customername ,
            @company ,
            @projectcontent ,
            @time ,
            @money ,
            @receivemoney ,
            @receivetime ,
            @overday ,
            @moneypercentage ,
            @businessmoney ,
            @orderuser ,
            @ismanagecheck ,
            @istopmanagercheck ,
            @isjz ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_budget_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @time nvarchar(100),
	        	  @money decimal,
	        	  @manageruser nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[budget] set


	    	    [name] = @name,

	    	    [orderno] = @orderno,

	    	    [time] = @time,

	    	    [money] = @money,

	    	    [manageruser] = @manageruser,

	    	    [orderuser] = @orderuser,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_business_pay_request_d]
@id uniqueidentifier
as

UPDATE [business_pay_request]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_business_pay_request_c]
      	  @id uniqueidentifier,
      	  @orderno nvarchar(50),
	        	  @customername nvarchar(100),
	        	  @money decimal,
	        	  @balance decimal,
	        	  @hxbalance decimal,
	        	  @receivename nvarchar(100),
	        	  @account nvarchar(100),
	        	  @payway nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @other nvarchar(100),
	        	  @company nvarchar(100),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	  @iscwcheck bit,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[business_pay_request] (

            [id],
            [orderno],
            [customername],
            [money],
            [balance],
            [hxbalance],
            [receivename],
            [account],
            [payway],
            [bank],
            [other],
            [company],
            [ismanagercheck],
            [istopmanagercheck],
            [iscwcheck],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
              @orderno,
            @customername ,
            @money ,
            @balance ,
            @hxbalance ,
            @receivename ,
            @account ,
            @payway ,
            @bank ,
            @other ,
            @company ,
            @ismanagercheck ,
            @istopmanagercheck ,
            @iscwcheck ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_business_money_request_u]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customername nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @time datetime,
	        	  @money decimal,
	        	  @receivemoney decimal,
	        	  @receivetime datetime,
	        	  @overday int,
	        	  @moneypercentage nvarchar(100),
	        	  @businessmoney decimal,
	        	  @orderuser nvarchar(100),
	        	  @ismanagecheck bit,
	        	  @istopmanagercheck bit,
	        	  @isjz bit,
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[business_money_request] set


	    	    [orderno] = @orderno,

	    	    [customername] = @customername,

	    	    [company] = @company,

	    	    [projectcontent] = @projectcontent,

	    	    [time] = @time,

	    	    [money] = @money,

	    	    [receivemoney] = @receivemoney,

	    	    [receivetime] = @receivetime,

	    	    [overday] = @overday,

	    	    [moneypercentage] = @moneypercentage,

	    	    [businessmoney] = @businessmoney,

	    	    [orderuser] = @orderuser,

	    	    [ismanagecheck] = @ismanagecheck,

	    	    [istopmanagercheck] = @istopmanagercheck,

	    	    [isjz] = @isjz,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

create Procedure [dbo].[sp_commonpayment_detail_d]
@id uniqueidentifier
as

UPDATE [commonpayment_detail]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_commonpayment_detail_c]
      	  @id uniqueidentifier,
	        	  @commonpaymentid uniqueidentifier,
	        	  @money decimal(18,2),
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[commonpayment_detail] (

            [id],
            [commonpaymentid],
            [money],
            [type],
            [maintype] ,
            [remark],
            [other],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @commonpaymentid ,
            @money ,
            @type ,
            @maintype ,
            @remark ,
            @other ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



create Procedure [dbo].[sp_commonpayment_c]
      	          @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @time nvarchar(50),
	        	  @money decimal(18,2),
	        	  @orderuser nvarchar(100),
	        	  @ismanagecheck bit,
	        	  @istopmanagercheck bit,
	        	  @isjz bit,
	        	  @iscwcheck bit,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[commonpayment] (

            [id],
            
            [company],

            [time],
            [money],
        
            [orderuser],
            [ismanagercheck],
            [istopmanagercheck],
            [isjz],
            [iscwcheck],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
           
            @company ,
            @time ,
            @money ,
          
            @orderuser ,
            @ismanagecheck ,
            @istopmanagercheck ,
            @isjz ,
            @iscwcheck,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_business_pay_request_u]
      	  @id uniqueidentifier,
      	  @orderno nvarchar(50),
	        	  @customername nvarchar(100),
	        	  @money decimal,
	        	  @balance decimal,
	        	  @hxbalance decimal,
	        	  @receivename nvarchar(100),
	        	  @account nvarchar(100),
	        	  @payway nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @other nvarchar(100),
	        	  @company nvarchar(100),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	  @iscwcheck bit,
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[business_pay_request] set

               [orderno] = @orderno,

	    	    [customername] = @customername,

	    	    [money] = @money,

	    	    [balance] = @balance,

	    	    [hxbalance] = @hxbalance,

	    	    [receivename] = @receivename,

	    	    [account] = @account,

	    	    [payway] = @payway,

	    	    [bank] = @bank,

	    	    [other] = @other,

	    	    [company] = @company,

	    	    [ismanagercheck] = @ismanagercheck,

	    	    [istopmanagercheck] = @istopmanagercheck,

	    	    [iscwcheck] = @iscwcheck,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_business_money_request_detail_u]
      	  @id uniqueidentifier,
	        	  @businessid uniqueidentifier,
	        	  @money decimal,
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[business_money_request_detail] set


	    	    [businessid] = @businessid,

	    	    [money] = @money,
	    	    
	    	    [maintype]  = @maintype ,

	    	    [type] = @type,

	    	    [remark] = @remark,

	    	    [other] = @other,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_commonpayment_detail_u]
      	  @id uniqueidentifier,
	        	  @commonpaymentid uniqueidentifier,
	        	  @money decimal,
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[commonpayment_detail] set


	    	    [commonpaymentid] = @commonpaymentid,

	    	    [money] = @money,

	    	    [type] = @type,
	    	    
	    	    [maintype] = @maintype ,

	    	    [remark] = @remark,

	    	    [other] = @other,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_costdetail_d]
@id uniqueidentifier
as

UPDATE [costdetail]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_costdetail_c]
      	  @id uniqueidentifier,
	        	  @orderid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum nvarchar(100),
	        	  @money decimal,
	        	  @remark nvarchar(1000),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[costdetail] (

            [id],
            [orderid],
            [name],
            [gg],
            [daynum],
            [money],
            [remark],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @orderid ,
            @name ,
            @gg ,
            @daynum ,
            @money ,
            @remark ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create Procedure [dbo].[sp_commonpayment_u]
      @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @time nvarchar(50),
	        	  @money decimal(18,2),
	        	  @orderuser nvarchar(100),
	        	  @ismanagecheck bit,
	        	  @istopmanagercheck bit,
	        	  @isjz bit,
	        	  @iscwcheck bit,
	        	 
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[commonpayment] set


	    	    [company] = @company,

	    	    [time] = @time,

	    	    [money] = @money,

	    	    [orderuser] = @orderuser,

	    	    [ismanagercheck] = @ismanagecheck,

	    	    [istopmanagercheck] = @istopmanagercheck,

	    	    [isjz] = @isjz,

	    	    [iscwcheck] = @iscwcheck,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	    [statues] = @statues

	    	  
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_customer_d]
@id uniqueidentifier
as

UPDATE [customer]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_customer_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @company nvarchar(200),
	        	  @kpname nvarchar(100),
	        	  @sh nvarchar(100),
	        	  @address nvarchar(100),
	        	  @tel nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @account nvarchar(100),
	        	  @remark nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[customer] (

            [id],
            [name],
            [company],
            [kpname],
            [sh],
            [address],
            [tel],
            [bank],
            [account],
            [remark],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @company ,
            @kpname ,
            @sh ,
            @address ,
            @tel ,
            @bank ,
            @account ,
            @remark ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_costdetail_u]
      	  @id uniqueidentifier,
	        	  @orderid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum nvarchar(100),
	        	  @money decimal,
	        	  @remark nvarchar(1000),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[costdetail] set

    	

	    	    [orderid] = @orderid,

	    	    [name] = @name,

	    	    [gg] = @gg,

	    	    [daynum] = @daynum,

	    	    [money] = @money,

	    	    [remark] = @remark,

	    	    [createtime] = @createtime,

	    	    [createby] = @createby,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_jx_target_d]
@id uniqueidentifier
as

UPDATE [jx_target]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_jx_target_c]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	        	  @firstsection nvarchar(100),
	        	  @firstcomplete nvarchar(100),
	        	  @secsection nvarchar(100),
	        	  @seccomplete nvarchar(100),
	        	  @thrsection nvarchar(100),
	        	  @thrcomplete nvarchar(100),
	        	  @foursection nvarchar(100),
	        	  @fourcomplete nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[jx_target] (

            [id],
            [company],
            [businesstype],
            [firstsection],
            [firstcomplete],
            [secsection],
            [seccomplete],
            [thrsection],
            [thrcomplete],
            [foursection],
            [fourcomplete],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @company ,
            @businesstype ,
            @firstsection ,
            @firstcomplete ,
            @secsection ,
            @seccomplete ,
            @thrsection ,
            @thrcomplete ,
            @foursection ,
            @fourcomplete ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_customer_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @company nvarchar(200),
	        	  @kpname nvarchar(100),
	        	  @sh nvarchar(100),
	        	  @address nvarchar(100),
	        	  @tel nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @account nvarchar(100),
	        	  @remark nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[customer] set


	    	    [name] = @name,

	    	    [company] = @company,

	    	    [kpname] = @kpname,

	    	    [sh] = @sh,

	    	    [address] = @address,

	    	    [tel] = @tel,

	    	    [bank] = @bank,

	    	    [account] = @account,

	    	    [remark] = @remark,



	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_kp_d]
@id uniqueidentifier
as

UPDATE [kp]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_kp_c]
      	  @id uniqueidentifier,
	        	  @orderid nvarchar(50),
	        	  @kptt nvarchar(100),
	        	  @type nvarchar(100),
	        	  @project nvarchar(100),
	        	  @money decimal,
	        	  @bcmoney decimal,
	        	  @company nvarchar(100),
	        	  @bjsj decimal,
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @ywuser nvarchar(100),
	        	  @mangeridea nvarchar(100),
	        	  @mangerreason nvarchar(100),
	        	  @topmanageridea nvarchar(100),
	        	  @topmanagerreason nvarchar(100),
	        	  @managercheck bit,
	        	  @customername nvarchar(50),
	        	  @customershortname nvarchar(50),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[kp] (

            [id],
            [orderid],
            [kptt],
            [type],
            [project],
            [money],
            [bcmoney],
            [company],
            [bjsj],
            [remark],
            [other],
            [ywuser],
            [manageridea],
            [managerreason],
            [topmanageridea],
            [topmanagerreason],
            [managercheck],
            [customername] ,
            [customershortname] ,
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @orderid ,
            @kptt ,
            @type ,
            @project ,
            @money ,
            @bcmoney ,
            @company ,
            @bjsj ,
            @remark ,
            @other ,
            @ywuser ,
            @mangeridea ,
            @mangerreason ,
            @topmanageridea ,
            @topmanagerreason ,
            @managercheck,
            @customername ,
            @customershortname ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_jx_target_u]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	        	  @firstsection nvarchar(100),
	        	  @firstcomplete nvarchar(100),
	        	  @secsection nvarchar(100),
	        	  @seccomplete nvarchar(100),
	        	  @thrsection nvarchar(100),
	        	  @thrcomplete nvarchar(100),
	        	  @foursection nvarchar(100),
	        	  @fourcomplete nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[jx_target] set


	    	    [company] = @company,

	    	    [businesstype] = @businesstype,

	    	    [firstsection] = @firstsection,

	    	    [firstcomplete] = @firstcomplete,

	    	    [secsection] = @secsection,

	    	    [seccomplete] = @seccomplete,

	    	    [thrsection] = @thrsection,

	    	    [thrcomplete] = @thrcomplete,

	    	    [foursection] = @foursection,

	    	    [fourcomplete] = @fourcomplete,

	    	    [createtime] = @createtime,

	    	    [createby] = @createby,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_kptype_d]
@id uniqueidentifier
as

UPDATE [kptype]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_kptype_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @type nvarchar(100),
	        	  @projectname nvarchar(50),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[kptype] (

            [id],
            [name],
            [type],
            [projectname],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @type ,
            @projectname,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_kp_u]
      	  @id uniqueidentifier,
	        	  @orderid nvarchar(50),
	        	  @kptt nvarchar(100),
	        	  @type nvarchar(100),
	        	  @project nvarchar(100),
	        	  @money decimal,
	        	  @bcmoney decimal,
	        	  @company nvarchar(100),
	        	  @bjsj decimal,
	        	  @remark nvarchar(100),
	        	  @other nvarchar(100),
	        	  @ywuser nvarchar(100),
	        	  @mangeridea nvarchar(100),
	        	  @mangerreason nvarchar(100),
	        	  @topmanageridea nvarchar(100),
	        	  @topmanagerreason nvarchar(100),
	        	  @managercheck bit,
	        	  @customername nvarchar(50),
	        	  @customershortname nvarchar(50),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[kp] set


	    	    [orderid] = @orderid,

	    	    [kptt] = @kptt,

	    	    [type] = @type,

	    	    [project] = @project,

	    	    [money] = @money,

	    	    [bcmoney] = @bcmoney,

	    	    [company] = @company,

	    	    [bjsj] = @bjsj,

	    	    [remark] = @remark,

	    	    [other] = @other,

	    	    [ywuser] = @ywuser,
	    	    
	    	    [customername] = @customername ,
	    	    
	    	    [customershortname] = @customershortname ,

	    	    [manageridea] = @mangeridea,

	    	    [managerreason] = @mangerreason,

	    	    [topmanageridea] = @topmanageridea,

	    	    [topmanagerreason] = @topmanagerreason,
                  
                 [managercheck] = @managercheck,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_log_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_log_c]
      	  @id uniqueidentifier,
	        	  @msgcontent nvarchar(MAX),
	        	  @type nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[log] (

            [id],
            [msgcontent],
            [type],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @msgcontent ,
            @type ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_kptype_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @type nvarchar(100),
	        	  @projectname nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[kptype] set


	    	    [name] = @name,

	    	    [type] = @type,
	    	    
	    	    [projectname] = @projectname ,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_menu_d]
@id int
as

UPDATE [menu]
   SET statues = 0
 WHERE id = @id
 
 return 0
 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_menu_c]
      	  @id int,
	        	  @name nvarchar(100),
	        	  @url nvarchar(100),
	        	  @parentid int,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[menu] (

            [id],
            [name],
            [url],
            [parentid],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @url ,
            @parentid ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_moneyreport_d]
@id uniqueidentifier
as

UPDATE [moneyreport]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_moneyreport_c]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @money decimal(18,2),
	        	  @jyj decimal(18,2),
	        	  @ysmoney decimal(18,2),
	        	  @ml decimal(18,2),
	        	  @mlv nvarchar(100),
	        	  @othermoney decimal(18,2),
	        	  @yemoney decimal(18,2),
	        	  @yevnvarchar nvarchar(100),
	        	  @dysk decimal(18,2),
	        	  @sqqk decimal(18,2),
	        	  @ssnk decimal(18,2),
	        	  @xj decimal(18,2),
	        	  @dnwqk decimal(18,2),
	        	  @snwqk decimal(18,2),
	        	  @xj2 decimal(18,2),
	        	  @kpmoney decimal(18,2),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[moneyreport] (

            [id],
            [company],
            [money],
            [jyj],
            [ysmoney],
            [ml],
            [mlv],
            [othermoney],
            [yemoney],
            [yevnvarchar],
            [dysk],
            [sqqk],
            [ssnk],
            [xj],
            [dnwqk],
            [snwqk],
            [xj2],
            [kpmoney],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @company ,
            @money ,
            @jyj ,
            @ysmoney ,
            @ml ,
            @mlv ,
            @othermoney ,
            @yemoney ,
            @yevnvarchar ,
            @dysk ,
            @sqqk ,
            @ssnk ,
            @xj ,
            @dnwqk ,
            @snwqk ,
            @xj2 ,
            @kpmoney ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_menu_u]
      	  @id int,
	        	  @name nvarchar(100),
	        	  @url nvarchar(100),
	        	  @parentid int,
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[menu] set

    

	    	    [name] = @name,

	    	    [url] = @url,

	    	    [parentid] = @parentid,



	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_order_d]
@id uniqueidentifier
as

UPDATE [order]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_order_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(500),
	        	  @customername nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @money decimal(18,2),
	        	  @customershortname nvarchar(100),
	        	  @time datetime,
	        	  @balance decimal(18,2),
	        	  @balancereduce decimal(18,2),
	        	  @balancereducereason nvarchar(500),
	        	  @isht bit,
	        	  @iskp bit,
	        	  @other nvarchar(100),
	        	  @remark nvarchar(100),
	        	  @managercheck bit,
	        	  @cwcheck bit,
	        	  @zk decimal(18,2),
	        	  @jsz decimal(18,2),
	        	  @ml decimal(18,2),
	        	  @lrmoney decimal(18,2),
	        	  @lr nvarchar(20),
	        	  @iszd bit,
	        	  @parentorderno nvarchar(100),
	        	  @shouldmoney decimal(18,2),
	        	  @havemoney decimal(18,2),
	        	  @nothavemoney decimal(18,2),
	        	  @havemoneypercentage nvarchar(50),
	        	  @actualmoney decimal(18,2),
	        	  @hxmoney decimal(18,2),
	        	  @kpce decimal(18,2),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[order] (

            [id],
            [name],
            [company],
            [projectcontent],
            [customername],
            [orderno],
            [money],
            [customershortname],
            [time],
            [balance],
            [balancereduce] ,
            [balancereducereason],
            [isht],
            [iskp],
            [other],
            [remark],
            [managercheck],
            [cwcheck],
            [zk],
            [jsz],
            [ml],
            [lrmoney],
            [lr],
            [iszd],
            [parentorderno],
            [shouldmoney] ,
            [havemoney] ,
            [nothavemoney] ,
            [havemoneypercentage] ,
            [actualmoney] ,
            [hxmoney] ,
            [kpce] ,
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @company ,
            @projectcontent,
            @customername ,
            @orderno ,
            @money ,
            @customershortname ,
            @time ,
            @balance ,
            @balancereduce,
            @balancereducereason,
            @isht ,
            @iskp ,
            @other ,
            @remark ,
            @managercheck ,
            @cwcheck ,
            @zk ,
            @jsz ,
            @ml ,
            @lrmoney,
            @lr ,
            @iszd ,
            @parentorderno ,
            @shouldmoney ,
            @havemoney,
            @nothavemoney,
            @havemoneypercentage ,
            @actualmoney ,
            @hxmoney ,
            @kpce ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_moneyreport_u]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @money decimal(18,2),
	        	  @jyj decimal(18,2),
	        	  @ysmoney decimal(18,2),
	        	  @ml decimal(18,2),
	        	  @mlv nvarchar(100),
	        	  @othermoney decimal(18,2),
	        	  @yemoney decimal(18,2),
	        	  @yevnvarchar nvarchar(100),
	        	  @dysk decimal(18,2),
	        	  @sqqk decimal(18,2),
	        	  @ssnk decimal(18,2),
	        	  @xj decimal(18,2),
	        	  @dnwqk decimal(18,2),
	        	  @snwqk decimal(18,2),
	        	  @xj2 decimal(18,2),
	        	  @kpmoney decimal(18,2),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[moneyreport] set


	    	    [company] = @company,

	    	    [money] = @money,

	    	    [jyj] = @jyj,

	    	    [ysmoney] = @ysmoney,

	    	    [ml] = @ml,

	    	    [mlv] = @mlv,

	    	    [othermoney] = @othermoney,

	    	    [yemoney] = @yemoney,

	    	    [yevnvarchar] = @yevnvarchar,

	    	    [dysk] = @dysk,

	    	    [sqqk] = @sqqk,

	    	    [ssnk] = @ssnk,

	    	    [xj] = @xj,

	    	    [dnwqk] = @dnwqk,

	    	    [snwqk] = @snwqk,

	    	    [xj2] = @xj2,

	    	    [kpmoney] = @kpmoney,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g2]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_moneyreport_g2]
      	@startime datetime,
      	@endtime datetime
as


select newid() as id,company,
(select isnull(SUM([money]) - SUM([actualmoney]),0) from [order] where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [money] ,
(select isnull(SUM([money]),0) from [commonpayment]  where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [othermoney],
(select isnull(SUM([actualmoney]),0) from [order] where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [outmoney],
(select isnull(SUM([lrmoney] ),0) from [order] where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [lr] ,
(select isnull(SUM([havemoney] ),0) from [order] where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [skmoney],
(select isnull(SUM([shouldmoney] ),0) from [order]  where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [ysmoney],
( select isnull(SUM([money]),0) from kp  where company = a.company and statues = 1 and [createtime] >= @startime and [createtime]< DATEADD(d,1,@endtime) ) as [kpmoney],
(select isnull(SUM([kpce] ),0) from [order] where company = a.company and statues = 1 and [time] >= @startime and [time]< DATEADD(d,1,@endtime) ) as [kpce],
GETDATE() as createtime,''admin'' as createby,GETDATE() as updatetime,''admin'' as updateby,1 as statues
 from [order] a group by company 
 
 
	 SELECT pagesize = 1, totalrecords = 5' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_ordertz_request_d]
@id uniqueidentifier
as

UPDATE [ordertz_request]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_ordertz_request_c]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customershortname nvarchar(100),
	        	  @company nvarchar(100),
	        	  @time datetime,
	        	  @name nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @money decimal(18,2),
	        	  @balance decimal(18,2),
	        	  @balancereduce decimal(18,2),
	        	  @remark nvarchar(100),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[ordertz_request] (

            [id],
            [orderno],
            [customershortname],
            [company],
            [time],
            [name],
            [projectcontent],
            [money],
            [balance],
            [balancereduce],
            [remark],
            [ismanagercheck],
            [istopmanagercheck],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @orderno ,
            @customershortname ,
            @company ,
            @time ,
            @name ,
            @projectcontent ,
            @money ,
            @balance ,
            @balancereduce,
            @remark ,
            @ismanagercheck ,
            @istopmanagercheck ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_order_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(500),
	        	  @customername nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @money decimal(18,2),
	        	  @customershortname nvarchar(100),
	        	  @time datetime,
	        	  @balance decimal(18,2),
	        	  @balancereduce decimal,
	        	  @balancereducereason nvarchar(500),
	        	  @isht bit,
	        	  @iskp bit,
	        	  @other nvarchar(100),
	        	  @remark nvarchar(100),
	        	  @managercheck bit,
	        	  @cwcheck bit,
	        	  @zk decimal(18,2),
	        	  @jsz decimal(18,2),
	        	  @ml decimal(18,2),
	        	  @lrmoney decimal(18,2),
	        	  @lr nvarchar(20),
	        	  @iszd bit,
	        	  @parentorderno nvarchar(100),
	        	  @shouldmoney decimal(18,2),
	        	  @havemoney decimal(18,2),
	        	  @nothavemoney decimal(18,2),
	        	  @havemoneypercentage nvarchar(50),
	        	  @actualmoney decimal(18,2),
	        	  @hxmoney decimal(18,2),
	        	  @kpce decimal(18,2),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[order] set



	    	    [name] = @name,

	    	    [company] = @company,
	    	    
	    	    [projectcontent] = @projectcontent,

	    	    [customername] = @customername,

	    	    [orderno] = @orderno,
	    	    
	    	    [lrmoney] = @lrmoney ,

	    	    [money] = @money,

	    	    [customershortname] = @customershortname,

	    	    [time] = @time,
	    	    
	    	    [kpce] = @kpce,

	    	    [balance] = @balance,
	    	    
	    	    [balancereduce] = @balancereduce,
	    	    
	    	    [balancereducereason] =@balancereducereason,

	    	    [isht] = @isht,

	    	    [iskp] = @iskp,

	    	    [other] = @other,

	    	    [remark] = @remark,

	    	    [managercheck] = @managercheck,

	    	    [cwcheck] = @cwcheck,

	    	    [zk] = @zk,

	    	    [jsz] = @jsz,

	    	    [ml] = @ml,

	    	    [lr] = @lr,

	    	    [iszd] = @iszd,

	    	    [parentorderno] = @parentorderno,
                
                [havemoney] = @havemoney,
                
                [actualmoney] = @actualmoney ,
                
                [nothavemoney] = @nothavemoney ,
                
                [shouldmoney] = @shouldmoney ,
                
                [havemoneypercentage] = @havemoneypercentage ,
                 
                [hxmoney] = @hxmoney,
	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_payment_request_detail_d]
@id uniqueidentifier
as

UPDATE [payment_request_detail]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_payment_request_detail_c]
      	  @id uniqueidentifier,
	        	  @paymentid uniqueidentifier,
	        	  @money decimal(18,2),
	        	  @username nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @cardno nvarchar(100),
	        	  @detail nvarchar(1000),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[payment_request_detail] (

            [id],
            [paymentid],
            [money],
            [username],
            [bank],
            [cardno],
            [detail],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @paymentid ,
            @money ,
            @username ,
            @bank ,
            @cardno ,
            @detail ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_payment_request_d]
@id uniqueidentifier
as

UPDATE [payment_request]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_payment_request_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @gysname nvarchar(100),
	        	  @company nvarchar(100),
	        	  @msgcontent nvarchar(1000),
	        	  @reqesttime nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @remark2 nvarchar(100),
	        	  @money decimal(18,2),
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @iscwcheck bit,
	        	  @ismanagerusercheck bit,
	        	  @istopmanagerusercheck bit,
	        	  @isjz bit,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[payment_request] (

            [id],
            [name],
            [time],
            [orderno],
            [gysname],
            [company],
            [msgcontent],
            [reqesttime],
            [remark],
            [remark2],
            [money],
            [type],
            [maintype] ,
            [orderuser],
            [iscwcheck],
            [ismanagerusercheck],
            [istopmanagerusercheck],
            [isjz],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @time ,
            @orderno ,
            @gysname ,
            @company ,
            @msgcontent ,
            @reqesttime,
            @remark ,
            @remark2 ,
            @money ,
            @type ,
            @maintype ,
            @orderuser ,
            @iscwcheck ,
            @ismanagerusercheck ,
            @istopmanagerusercheck ,
            @isjz ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_ordertz_request_u]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customershortname nvarchar(100),
	        	  @company nvarchar(100),
	        	  @time datetime,
	        	  @name nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @money decimal(18,2),
	        	  @balance decimal(18,2),
	        	  @balancereduce decimal(18,2),
	        	  @remark nvarchar(100),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[ordertz_request] set

    	  

	    	    [orderno] = @orderno,

	    	    [customershortname] = @customershortname,

	    	    [company] = @company,

	    	    [time] = @time,

	    	    [name] = @name,

	    	    [projectcontent] = @projectcontent,

	    	    [money] = @money,

	    	    [balance] = @balance,
	    	    
	    	    [balancereduce] = @balancereduce ,
	    	    [remark] = @remark,

	    	    [ismanagercheck] = @ismanagercheck,

	    	    [istopmanagercheck] = @istopmanagercheck,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_pushmoneysetting_d]
@id uniqueidentifier
as

UPDATE [pushmoneysetting]
   SET statues = 0
 WHERE id = @id' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_pushmoneysetting_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @percentage nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[pushmoneysetting] (

            [id],
            [name],
            [percentage],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @name ,
            @percentage ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_payment_request_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @gysname nvarchar(100),
	        	  @company nvarchar(100),
	        	  @msgcontent nvarchar(1000),
	        	  @reqesttime nvarchar(50),
	        	  @remark nvarchar(100),
	        	  @remark2 nvarchar(100),
	        	  @money decimal,
	        	  @type nvarchar(100),
	        	  @maintype nvarchar(50),
	        	  @orderuser nvarchar(100),
	        	  @iscwcheck bit,
	        	  @ismanagerusercheck bit,
	        	  @istopmanagerusercheck bit,
	        	  @isjz bit,
	        	
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[payment_request] set



	    	    [name] = @name,

	    	    [time] = @time,
	    	    
	    	    [maintype] = @maintype ,

	    	    [orderno] = @orderno,

	    	    [gysname] = @gysname,

	    	    [company] = @company,

	    	    [msgcontent] = @msgcontent,
	    	    
	    	    [reqesttime] = @reqesttime,

	    	    [remark] = @remark,

	    	    [remark2] = @remark2,

	    	    [money] = @money,

	    	    [type] = @type,

	    	    [orderuser] = @orderuser,

	    	    [iscwcheck] = @iscwcheck,

	    	    [ismanagerusercheck] = @ismanagerusercheck,

	    	    [istopmanagerusercheck] = @istopmanagerusercheck,

	    	    [isjz] = @isjz,

	    
	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_receivemoney_d]
@id uniqueidentifier
as

UPDATE [receivemoney]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_receivemoney_c]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @type nvarchar(100),
	        	  @money decimal(18,2),
	        	  @time nvarchar(100),
	        	  @department nvarchar(100),
	        	  @receivemoney decimal(18,2),
	        	  @reducemoney decimal(18,2),
	        	  @remark nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[receivemoney] (

            [id],
            [orderno],
            [type],
            [money],
            [time],
            [department],
            [receivemoney],
            [reducemoney],
            [remark],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @orderno ,
            @type ,
            @money ,
            @time ,
            @department ,
            @receivemoney,
            @reducemoney ,
            @remark ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_pushmoneysetting_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @percentage nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[pushmoneysetting] set

    	 

	    	    [name] = @name,

	    	    [percentage] = @percentage,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_receivemoney_u]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @type nvarchar(100),
	        	  @money decimal(18,2),
	        	  @time nvarchar(100),
	        	  @department nvarchar(100),
	        	  @receivemoney decimal(18,2),
	        	  @reducemoney decimal(18,2),
	        	  @remark nvarchar(100),
	        
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[receivemoney] set

  

	    	    [orderno] = @orderno,

	    	    [type] = @type,

	    	    [money] = @money,

	    	    [time] = @time,

	    	    [department] = @department,
	    	    
	    	    [receivemoney] = @receivemoney,

	    	    [reducemoney] = @reducemoney,

	    	    [remark] = @remark,


	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_payment_request_detail_u]
      	  @id uniqueidentifier,
	        	  @paymentid uniqueidentifier,
	        	  @money decimal,
	        	  @username nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @cardno nvarchar(100),
	        	  @detail nvarchar(1000),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[payment_request_detail] set


	    	    [paymentid] = @paymentid,

	    	    [money] = @money,

	    	    [username] = @username,

	    	    [bank] = @bank,

	    	    [cardno] = @cardno,

	    	    [detail] = @detail,

	    	
	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_d]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_systemreport_d]
@id uniqueidentifier
as

UPDATE [systemreport]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_c]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_systemreport_c]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @yymoney decimal(18,2),
	        	  @gzjl decimal(18,2),
	        	  @fl decimal(18,2),
	        	  @cl decimal(18,2),
	        	  @bg decimal(18,2),
	        	  @fzwy decimal(18,2),
	        	  @yd decimal(18,2),
	        	  @yw decimal(18,2),
	        	  @zd decimal(18,2),
	        	  @bgzc decimal(18,2),
	        	  @wl decimal(18,2),
	        	  @other decimal(18,2),
	        	  @xj decimal(18,2),
	        	  @hd decimal(18,2),
	        	  @cd decimal(18,2),
	        	  @cdbz decimal(18,2),
	        	  @mtdl decimal(18,2),
	        	  @xj2 decimal(18,2),
	        	  @hj decimal(18,2),
	        	  @gzjjl decimal(18,2),
	        	  @clf decimal(18,2),
	        	  @bgf decimal(18,2),
	        	  @ywf decimal(18,2),
	        	  @sbf decimal(18,2),
	        	  @ydf decimal(18,2),
	        	  @bzf decimal(18,2),
	        	  @other2 decimal(18,2),
	        	  @xj3 decimal(18,2),
	        	  @hd2 decimal(18,2),
	        	  @cd2 decimal(18,2),
	        	  @cdbz2 decimal(18,2),
	        	  @mtdl2 decimal(18,2),
	        	  @xj4 decimal(18,2),
	        	  @yhsxf decimal(18,2),
	        	  @lxsz decimal(18,2),
	        	  @xj5 decimal(18,2),
	        	  @yxs decimal(18,2),
	        	  @qysds decimal(18,2),
	        	  @hj2 decimal(18,2),
	        	  @zhj decimal(18,2),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[systemreport] (

            [id],
            [company],
            [yymoney],
            [gzjl],
            [fl],
            [cl],
            [bg],
            [fzwy],
            [yd],
            [yw],
            [zd],
            [bgzc],
            [wl],
            [other],
            [xj],
            [hd],
            [cd],
            [cdbz],
            [mtdl],
            [xj2],
            [hj],
            [gzjjl],
            [clf],
            [bgf],
            [ywf],
            [sbf],
            [ydf],
            [bzf],
            [other2],
            [xj3],
            [hd2],
            [cd2],
            [cdbz2],
            [mtdl2],
            [xj4],
            [yhsxf],
            [lxsz],
            [xj5],
            [yxs],
            [qysds],
            [hj2],
            [zhj],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @company ,
            @yymoney ,
            @gzjl ,
            @fl ,
            @cl ,
            @bg ,
            @fzwy ,
            @yd ,
            @yw ,
            @zd ,
            @bgzc ,
            @wl ,
            @other ,
            @xj ,
            @hd ,
            @cd ,
            @cdbz ,
            @mtdl ,
            @xj2 ,
            @hj ,
            @gzjjl ,
            @clf ,
            @bgf ,
            @ywf ,
            @sbf ,
            @ydf ,
            @bzf ,
            @other2 ,
            @xj3 ,
            @hd2 ,
            @cd2 ,
            @cdbz2 ,
            @mtdl2 ,
            @xj4 ,
            @yhsxf ,
            @lxsz ,
            @xj5 ,
            @yxs ,
            @qysds ,
            @hj2 ,
            @zhj ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_u]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_role_u]
      	  @id int,
	        	  @rolename nvarchar(100),
	        	  @menu nvarchar(1000),
	    
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[role] set



	    	    [rolename] = @rolename,

	    	    [menu] = @menu,



	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_d]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_targetaward_d]
@id uniqueidentifier
as

UPDATE [targetaward]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_c]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_targetaward_c]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @mainmanager nvarchar(100),
	        	  @type nvarchar(100),
	        	  @targetmoney decimal(18,2),
	        	  @bdmoney decimal(18,2),
	        	  @manager nvarchar(100),
	        	  @firstmoney decimal(18,2),
	        	  @firstpercentage nvarchar(100),
	        	  @secmoney decimal(18,2),
	        	  @secpercentage nvarchar(100),
	        	  @thrmoney decimal(18,2),
	        	  @thrpercentage nvarchar(100),
	        	  @fourmoney decimal(18,2),
	        	  @fourpercentage nvarchar(100),
	        	  @bdpercentage nvarchar(100),
	        	  @targetaward decimal(18,2),
	        	  @bdaward decimal(18,2),
	        	  @remark nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[targetaward] (

            [id],
            [company],
            [mainmanager],
            [type],
            [targetmoney],
            [bdmoney],
            [manager],
            [firstmoney],
            [firstpercentage],
            [secmoney],
            [secpercentage],
            [thrmoney],
            [thrpercentage],
            [fourmoney],
            [fourpercentage],
            [bdpercentage],
            [targetaward],
            [bdaward],
            [remark],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @company ,
            @mainmanager ,
            @type ,
            @targetmoney ,
            @bdmoney ,
            @manager ,
            @firstmoney ,
            @firstpercentage ,
            @secmoney ,
            @secpercentage ,
            @thrmoney ,
            @thrpercentage ,
            @fourmoney ,
            @fourpercentage ,
            @bdpercentage ,
            @targetaward ,
            @bdaward ,
            @remark ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_u]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_systemreport_u]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @yymoney decimal(18,2),
	        	  @gzjl decimal(18,2),
	        	  @fl decimal(18,2),
	        	  @cl decimal(18,2),
	        	  @bg decimal(18,2),
	        	  @fzwy decimal(18,2),
	        	  @yd decimal(18,2),
	        	  @yw decimal(18,2),
	        	  @zd decimal(18,2),
	        	  @bgzc decimal(18,2),
	        	  @wl decimal(18,2),
	        	  @other decimal(18,2),
	        	  @xj decimal(18,2),
	        	  @hd decimal(18,2),
	        	  @cd decimal(18,2),
	        	  @cdbz decimal(18,2),
	        	  @mtdl decimal(18,2),
	        	  @xj2 decimal(18,2),
	        	  @hj decimal(18,2),
	        	  @gzjjl decimal(18,2),
	        	  @clf decimal(18,2),
	        	  @bgf decimal(18,2),
	        	  @ywf decimal(18,2),
	        	  @sbf decimal(18,2),
	        	  @ydf decimal(18,2),
	        	  @bzf decimal(18,2),
	        	  @other2 decimal(18,2),
	        	  @xj3 decimal(18,2),
	        	  @hd2 decimal(18,2),
	        	  @cd2 decimal(18,2),
	        	  @cdbz2 decimal(18,2),
	        	  @mtdl2 decimal(18,2),
	        	  @xj4 decimal(18,2),
	        	  @yhsxf decimal(18,2),
	        	  @lxsz decimal(18,2),
	        	  @xj5 decimal(18,2),
	        	  @yxs decimal(18,2),
	        	  @qysds decimal(18,2),
	        	  @hj2 decimal(18,2),
	        	  @zhj decimal(18,2),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[systemreport] set

 

	    	    [company] = @company,

	    	    [yymoney] = @yymoney,

	    	    [gzjl] = @gzjl,

	    	    [fl] = @fl,

	    	    [cl] = @cl,

	    	    [bg] = @bg,

	    	    [fzwy] = @fzwy,

	    	    [yd] = @yd,

	    	    [yw] = @yw,

	    	    [zd] = @zd,

	    	    [bgzc] = @bgzc,

	    	    [wl] = @wl,

	    	    [other] = @other,

	    	    [xj] = @xj,

	    	    [hd] = @hd,

	    	    [cd] = @cd,

	    	    [cdbz] = @cdbz,

	    	    [mtdl] = @mtdl,

	    	    [xj2] = @xj2,

	    	    [hj] = @hj,

	    	    [gzjjl] = @gzjjl,

	    	    [clf] = @clf,

	    	    [bgf] = @bgf,

	    	    [ywf] = @ywf,

	    	    [sbf] = @sbf,

	    	    [ydf] = @ydf,

	    	    [bzf] = @bzf,

	    	    [other2] = @other2,

	    	    [xj3] = @xj3,

	    	    [hd2] = @hd2,

	    	    [cd2] = @cd2,

	    	    [cdbz2] = @cdbz2,

	    	    [mtdl2] = @mtdl2,

	    	    [xj4] = @xj4,

	    	    [yhsxf] = @yhsxf,

	    	    [lxsz] = @lxsz,

	    	    [xj5] = @xj5,

	    	    [yxs] = @yxs,

	    	    [qysds] = @qysds,

	    	    [hj2] = @hj2,

	    	    [zhj] = @zhj,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g2]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_systemreport_g2]
@time datetime
as

select NEWID() as id, company , 
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''营业费用'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''营业费用'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yymoney,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as gzjl,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''福利费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''福利费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as fl,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as cl,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as bg,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''房租及物业费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = ''房租及物业费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as fzwy,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yd,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yw,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''招待费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''招待费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as zd,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公资产'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公资产'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as bgzc,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as wl,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as other,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''营业费用'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''营业费用'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''福利费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''福利费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''房租及物业费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''房租及物业费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''招待费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''招待费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公资产'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公资产'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as xj,

((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as hd,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as cd,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as cdbz,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as mtdl,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as xj2,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''营业费用'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''营业费用'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''福利费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''福利费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''房租及物业费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''房租及物业费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''招待费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''招待费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公资产'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公资产'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as hj,

((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as gzjjl,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as clf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as bgf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as ywf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''社保费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''社保费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as sbf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as ydf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as bzf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as other2,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''社保费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''社保费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as xj3,

((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as hd2,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as cd2,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as cdbz2,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as mtdl2,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as xj4,

((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''银行手续费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''银行手续费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yhsxf,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''利息收支'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''利息收支'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as lxsz,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''银行手续费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''银行手续费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''利息收支'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''利息收支'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as xj5,

((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''主营业务税金及附加'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''主营业务税金及附加'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yxs,
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''企业所得税'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''企业所得税'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))) as yxs,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''主营业务税金及附加'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''主营业务税金及附加'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''企业所得税'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''企业所得税'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as qysds,

(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''社保费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''社保费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''银行手续费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''银行手续费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''利息收支'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''利息收支'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''主营业务税金及附加'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''主营业务税金及附加'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''企业所得税'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''企业所得税'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))) as hj2,

((((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''营业费用'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''营业费用'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''福利费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''福利费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''房租及物业费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''房租及物业费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''招待费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''招待费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''办公资产'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公资产'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''现金支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''现金支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))))+
(((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''工资及奖金'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''工资及奖金'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''差旅费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''差旅费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''办公费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''办公费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''业务费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''业务费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''社保费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''社保费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''邮电费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''邮电费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''布展物料'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''布展物料'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''其他'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''其他'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''活动费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''活动费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''场地布展费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''场地布展费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''媒体代理'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''媒体代理'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''银行手续费'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''银行手续费'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''利息收支'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''利息收支'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''主营业务税金及附加'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''主营业务税金及附加'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0)))+
((select ISNULL(SUM([money]),0) from [payment_request] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and (ismanagerusercheck = 1 or istopmanagerusercheck = 1) and maintype = N''银行支出'' and type = N''企业所得税'' ) + (select isnull(SUM ([money]),0) from [commonpayment] where company = a.company and statues = 1 and DATEDIFF(y,[createtime],@time) = 0 and  id in (select commonpaymentid from [commonpayment_detail] where type = N''企业所得税'' and maintype = N''银行支出'' and statues = 1 and DATEDIFF(y,[createtime],@time) = 0))))) as zhj,
GETDATE() as createtime,''admin'' as createby,GETDATE() as updatetime,''admin'' as updateby,1 as statues

from [company] a

	 SELECT pagesize = 1, totalrecords = 5' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_d]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_user_d]
@id int

as

UPDATE [user]
   SET statues = 0
 WHERE id = @id
 
 return 0' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_c]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_user_c]

	        	  @username nvarchar(100),
	        	  @password nvarchar(100),
	        	  @roleid int,
	        	  @company nvarchar(50),
	        	  @ip nvarchar(100),
	        	  @lastlogintime datetime,
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[user] (

            [username],
            [password],
            [roleid],
            [company] ,
            [ip],
            [lastlogintime],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (

            @username ,
            @password ,
            @roleid ,
            @company,
            @ip ,
            @lastlogintime ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_u]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_targetaward_u]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @mainmanager nvarchar(100),
	        	  @type nvarchar(100),
	        	  @targetmoney decimal(18,2),
	        	  @bdmoney decimal(18,2),
	        	  @manager nvarchar(100),
	        	  @firstmoney decimal(18,2),
	        	  @firstpercentage nvarchar(100),
	        	  @secmoney decimal(18,2),
	        	  @secpercentage nvarchar(100),
	        	  @thrmoney decimal(18,2),
	        	  @thrpercentage nvarchar(100),
	        	  @fourmoney decimal(18,2),
	        	  @fourpercentage nvarchar(100),
	        	  @bdpercentage nvarchar(100),
	        	  @targetaward decimal(18,2),
	        	  @bdaward decimal(18,2),
	        	  @remark nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[targetaward] set

    	

	    	    [company] = @company,

	    	    [mainmanager] = @mainmanager,

	    	    [type] = @type,

	    	    [targetmoney] = @targetmoney,

	    	    [bdmoney] = @bdmoney,

	    	    [manager] = @manager,

	    	    [firstmoney] = @firstmoney,

	    	    [firstpercentage] = @firstpercentage,

	    	    [secmoney] = @secmoney,

	    	    [secpercentage] = @secpercentage,

	    	    [thrmoney] = @thrmoney,

	    	    [thrpercentage] = @thrpercentage,

	    	    [fourmoney] = @fourmoney,

	    	    [fourpercentage] = @fourpercentage,

	    	    [bdpercentage] = @bdpercentage,

	    	    [targetaward] = @targetaward,

	    	    [bdaward] = @bdaward,

	    	    [remark] = @remark,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_d]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_role_d]
@id int
as

UPDATE [role]
   SET statues = 0
 WHERE id = @id
 
 return 0
 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_c]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_role_c]

	        	  @rolename nvarchar(100),
	        	  @menu nvarchar(1000),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[role] (


            [rolename],
            [menu],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (

            @rolename ,
            @menu ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_c]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



create Procedure [dbo].[sp_user_jx_c]
      	  @id uniqueidentifier,
      	  @name nvarchar(50),
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	        	  @firstsection nvarchar(100),
	        	  @firstcomplete nvarchar(100),
	        	  @secsection nvarchar(100),
	        	  @seccomplete nvarchar(100),
	        	  @thrsection nvarchar(100),
	        	  @thrcomplete nvarchar(100),
	        	  @foursection nvarchar(100),
	        	  @fourcomplete nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[user_jx] (

            [id],
            [name],
            [company],
            [businesstype],
            [firstsection],
            [firstcomplete],
            [secsection],
            [seccomplete],
            [thrsection],
            [thrcomplete],
            [foursection],
            [fourcomplete],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
              @name,
            @company ,
            @businesstype ,
            @firstsection ,
            @firstcomplete ,
            @secsection ,
            @seccomplete ,
            @thrsection ,
            @thrcomplete ,
            @foursection ,
            @fourcomplete ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_u]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_yyreport_u]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @money decimal(18,2),
	        	  @othermoney decimal(18,2),
	        	  @outmoney decimal(18,2),
	        	  @lr nvarchar(100),
	        	  @skmoney decimal(18,2),
	        	  @ysmoney decimal(18,2),
	        	  @kpmoney decimal(18,2),
	        	  @kpce decimal(18,2),
	        	
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[yyreport] set

    	  

	    	    [company] = @company,

	    	    [money] = @money,

	    	    [othermoney] = @othermoney,

	    	    [outmoney] = @outmoney,

	    	    [lr] = @lr,

	    	    [skmoney] = @skmoney,

	    	    [ysmoney] = @ysmoney,

	    	    [kpmoney] = @kpmoney,

	    	    [kpce] = @kpce,



	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_user]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_yyreport_g_user]
@time datetime
as

select NEWID() as id, company,createby as username,
(select isnull(SUM([money]),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(m,[time],@time) = 0) as [money],
(select isnull(SUM(jsz),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(m,[time],@time) = 0) as jyj,
(select isnull(SUM([money]),0)- isnull(SUM([balance]),0)-isnull(SUM([lrmoney]),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(m,[time],@time) = 0) as ysmoney,
(select isnull(SUM([lrmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(m,[time],@time) = 0) as ml,
(select cast(cast(isnull(SUM([lrmoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(m,[time],@time) = 0) as mlv,
(select isnull(SUM([money]),0) from [commonpayment] where company = a.[company] and (ismanagercheck =1 or istopmanagercheck=1)  and statues = 1 and createby = a.createby  and DATEDIFF(m,[time],@time) = 0) as othermoney,
(select isnull(SUM([actualmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(m,[time],@time) = 0) as yefy,
(select  isnull(SUM([money]),0) - isnull(SUM([actualmoney]),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(m,[time],@time) = 0) as yemoney,
(select cast(cast(isnull((SUM([money])-sum([actualmoney]))/SUM([money]),0) * 100 as decimal(18,2)) as varchar(20)) + ''%'' from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as yevnvarchar,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(m,[time],@time) = 0) as dysk,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(y,[time],getdate()) = 0 ) as sqqk,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(y,[time],getdate()) = -1 ) as ssnk,
((select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(m,[time],@time) = 0)+(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(y,[time],getdate()) = 0 )
+(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(y,[time],getdate()) = -1 )) as xj,
(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(y,[time],getdate()) = 0) as dnwqk,
(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and DATEDIFF(y,[time],getdate()) = -1) as snwqk,
((select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby  and  DATEDIFF(y,[time],getdate()) = 0)+(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and createby = a.createby  and statues = 1 and DATEDIFF(y,[time],getdate()) = -1)) as xj2,
(select isnull(SUM([money]),0)- isnull(SUM([kpce]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and createby = a.createby ) as kpmoney,
GETDATE() as createtime,''admin'' as createby,GETDATE() as updatetime,''admin'' as updateby,1 as statues

 from [user]  a where statues = 1



SELECT pagesize = 1, totalrecords = (select COUNT(*) from [user] where [statues] = 1)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_company]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_company]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_yyreport_g_company]
@time datetime
as

select NEWID() as id, company,
(select isnull(SUM([money]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as [money],
(select isnull(SUM(jsz),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as jyj,
(select isnull(SUM([money]),0)- isnull(SUM([balance]),0)-isnull(SUM([lrmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as ysmoney,
(select isnull(SUM([lrmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as ml,
(select cast(cast(isnull(SUM([lrmoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as mlv,
(select isnull(SUM([money]),0) from [commonpayment] where company = a.[company] and (ismanagercheck = 1 or istopmanagercheck = 1) and statues = 1 and DATEDIFF(m,[time],@time) = 0) as othermoney,
(select isnull(SUM([actualmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as yefy,
(select  isnull(SUM([money]),0) - isnull(SUM([actualmoney]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as yemoney,
(select cast(cast(isnull((SUM([money])-sum([actualmoney]))/SUM([money]),0) * 100 as decimal(18,2)) as varchar(20)) + ''%'' from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as yevnvarchar,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0) as dysk,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = 0 ) as sqqk,
(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = -1 ) as ssnk,
((select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(m,[time],@time) = 0)+(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = 0 )
+(select isnull(SUM(havemoney),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = -1 )) as xj,
(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = 0) as dnwqk,
(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = -1) as snwqk,
((select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = 0)+(select isnull(SUM(shouldmoney ),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1 and DATEDIFF(y,[time],getdate()) = -1)) as xj2,
(select isnull(SUM([money]),0)- isnull(SUM([kpce]),0) from [order] where company = a.[company] and managercheck = 1 and statues = 1) as kpmoney,
GETDATE() as createtime,''admin'' as createby,GETDATE() as updatetime,''admin'' as updateby,1 as statues

 from company a 


SELECT pagesize = 1, totalrecords = 5' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_d]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_d]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create Procedure [dbo].[sp_yyreport_d]
@id uniqueidentifier
as

UPDATE [yyreport]
   SET statues = 0
 WHERE id = @id
 
 return 0


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_c]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



Create Procedure [dbo].[sp_yyreport_c]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @money decimal(18,2),
	        	  @othermoney decimal(18,2),
	        	  @outmoney decimal(18,2),
	        	  @lr nvarchar(100),
	        	  @skmoney decimal(18,2),
	        	  @ysmoney decimal(18,2),
	        	  @kpmoney decimal(18,2),
	        	  @kpce decimal(18,2),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as

insert into [dbo].[yyreport] (

            [id],
            [company],
            [money],
            [othermoney],
            [outmoney],
            [lr],
            [skmoney],
            [ysmoney],
            [kpmoney],
            [kpce],
            [createtime],
            [createby],
            [updatetime],
            [updateby],
        [statues]
) values (
              @id ,
            @company ,
            @money ,
            @othermoney ,
            @outmoney ,
            @lr ,
            @skmoney ,
            @ysmoney ,
            @kpmoney ,
            @kpce ,
            @createtime ,
            @createby ,
            @updatetime ,
            @updateby ,
        @statues 

)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_u]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_user_u]
      	  @id int,
	        	  @username nvarchar(100),
	        	  @password nvarchar(100),
	        	  @roleid int,
	        	  @company nvarchar(50),
	        	  @ip nvarchar(100),
	        	  @lastlogintime datetime,
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[user] set


	    	    [username] = @username,

	    	    [password] = @password,

	    	    [roleid] = @roleid,
	    	    
	    	    [company] = @company ,

	    	    [ip] = @ip,

	    	    [lastlogintime] = @lastlogintime,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_u]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create Procedure [dbo].[sp_user_jx_u]
      	  @id uniqueidentifier,
      	  @name nvarchar(50),
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	        	  @firstsection nvarchar(100),
	        	  @firstcomplete nvarchar(100),
	        	  @secsection nvarchar(100),
	        	  @seccomplete nvarchar(100),
	        	  @thrsection nvarchar(100),
	        	  @thrcomplete nvarchar(100),
	        	  @foursection nvarchar(100),
	        	  @fourcomplete nvarchar(100),
	        	  @createtime datetime,
	        	  @createby nvarchar(100),
	        	  @updatetime datetime,
	        	  @updateby nvarchar(100),
	              @statues int
	  as
update [dbo].[user_jx] set

                [name] = @name,
	    	    [company] = @company,

	    	    [businesstype] = @businesstype,

	    	    [firstsection] = @firstsection,

	    	    [firstcomplete] = @firstcomplete,

	    	    [secsection] = @secsection,

	    	    [seccomplete] = @seccomplete,

	    	    [thrsection] = @thrsection,

	    	    [thrcomplete] = @thrcomplete,

	    	    [foursection] = @foursection,

	    	    [fourcomplete] = @fourcomplete,

	    	    [createtime] = @createtime,

	    	    [createby] = @createby,

	    	    [updatetime] = @updatetime,

	    	    [updateby] = @updateby,

	    	     [statues] = @statues
	where id = @id

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_tj]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_tj]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_user_jx_tj]
as
delete user_jx
insert into user_jx
select NEWID() as id, createby,company,name,
(select isnull(SUM([money]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=1 and month([time])<=3 and statues = 1),
(select isnull(SUM([havemoney]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=1 and month([time])<=3 and statues = 1),
(select cast(cast(isnull(SUM([havemoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=1 and month([time])<=3 and statues = 1),
(select isnull(SUM([money]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=4 and month([time])<=6 and statues = 1),
(select isnull(SUM([havemoney]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=4 and month([time])<=6 and statues = 1),
(select cast(cast(isnull(SUM([havemoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=4 and month([time])<=6 and statues = 1),
(select isnull(SUM([money]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=7 and month([time])<=9 and statues = 1),
(select isnull(SUM([havemoney]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=7 and month([time])<=9 and statues = 1),
(select cast(cast(isnull(SUM([havemoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=7 and month([time])<=9 and statues = 1),
(select isnull(SUM([money]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=10 and month([time])<=12 and statues = 1),
(select isnull(SUM([havemoney]),0) from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=10 and month([time])<=12 and statues = 1),
(select cast(cast(isnull(SUM([havemoney])/SUM([money]),0) * 100 as decimal(18,2)) as varchar(10)) + ''%'' from [order] where name = a.[name] and company = a.[company] and createby = a.[createby] and month([time])>=10 and month([time])<=12 and statues = 1),
GETDATE() as createtime,''admin'' as createby,GETDATE() as updatetime,''admin'' as updateby,1 as statues
 from [order] a
group by createby,company,name

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_g]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_user_jx_g]
      	  @id uniqueidentifier,
      	  @name nvarchar(50),
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(50)) + ''''''''
            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] = '''''' + CAST(@company AS nvarchar(100)) + ''''''''
            if @businesstype is not null and LEN(@businesstype)>0  
              SET @filter = @filter + '' AND [businesstype] = '''''' + CAST(@businesstype AS nvarchar(100)) + ''''''''
        
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
      	   [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [businesstype] [nvarchar](100)  null,
	        	  [firstsection] [nvarchar](100)  null,
	        	  [firstmoney] [decimal](18,2) null,
	        	  [firstcomplete] [nvarchar](100)  null,
	        	  [secsection] [nvarchar](100)  null,
	        	  [secmoney] [decimal](18,2) null,
	        	  [seccomplete] [nvarchar](100)  null,
	        	  [thrsection] [nvarchar](100)  null,
	        	  [thrmoney] [decimal](18,2) null,
	        	  [thrcomplete] [nvarchar](100)  null,
	        	  [foursection] [nvarchar](100)  null,
	        	  [fourmoney] [decimal](18,2) null,
	        	  [fourcomplete] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
          ,[name]
      ,[company]
      ,[businesstype]
      ,[firstsection]
      ,[firstmoney]
      ,[firstcomplete]
      ,[secsection]
      ,[secmoney]
      ,[seccomplete]
      ,[thrsection]
      ,[thrmoney]
      ,[thrcomplete]
      ,[foursection]
      ,[fourmoney]
      ,[fourcomplete]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [user_jx]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_yyreport_g]
      	  @id uniqueidentifier,
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
           
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [othermoney] [decimal](18,2)  null,
	        	  [outmoney] [decimal](18,2)  null,
	        	  [lr] [nvarchar](100)  null,
	        	  [skmoney] [decimal](18,2)  null,
	        	  [ysmoney] [decimal](18,2)  null,
	        	  [kpmoney] [decimal](18,2)  null,
	        	  [kpce] [decimal](18,2)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[money]
      ,[othermoney]
      ,[outmoney]
      ,[lr]
      ,[skmoney]
      ,[ysmoney]
      ,[kpmoney]
      ,[kpce]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [yyreport]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_g]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_user_g]
      	  @id int,
	        	  @username nvarchar(100),
	        	  @roleid int,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(10)) + ''''''''
            if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [username] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
           
            if @roleid is not null 
              SET @filter = @filter + '' AND [roleid] = '''''' + CAST(@roleid AS nvarchar(10)) + ''''''''
        
         
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [int]  not null,
	        	  [username] [nvarchar](100)  null,
	        	  [password] [nvarchar](100)  null,
	        	  [roleid] [int]  null,
	        	  [company] [nvarchar](100)  null,
	        	  [ip] [nvarchar](100)  null,
	        	  [lastlogintime] [datetime]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  not null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[username]
      ,[password]
      ,[roleid]
      ,[company]
      ,[ip]
      ,[lastlogintime]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [user]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_g]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_targetaward_g]
      	  @id uniqueidentifier,
	        	 
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
        
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [mainmanager] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [targetmoney] [decimal](18,2)  null,
	        	  [bdmoney] [decimal](18,2)  null,
	        	  [manager] [nvarchar](100)  null,
	        	  [firstmoney] [decimal](18,2)  null,
	        	  [firstpercentage] [nvarchar](100)  null,
	        	  [secmoney] [decimal](18,2)  null,
	        	  [secpercentage] [nvarchar](100)  null,
	        	  [thrmoney] [decimal](18,2)  null,
	        	  [thrpercentage] [nvarchar](100)  null,
	        	  [fourmoney] [decimal](18,2)  null,
	        	  [fourpercentage] [nvarchar](100)  null,
	        	  [bdpercentage] [nvarchar](100)  null,
	        	  [targetaward] [decimal](18,2)  null,
	        	  [bdaward] [decimal](18,2)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[mainmanager]
      ,[type]
      ,[targetmoney]
      ,[bdmoney]
      ,[manager]
      ,[firstmoney]
      ,[firstpercentage]
      ,[secmoney]
      ,[secpercentage]
      ,[thrmoney]
      ,[thrpercentage]
      ,[fourmoney]
      ,[fourpercentage]
      ,[bdpercentage]
      ,[targetaward]
      ,[bdaward]
      ,[remark]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [targetaward]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g]    Script Date: 10/24/2013 23:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_systemreport_g]
      	  @id uniqueidentifier,
	        	 
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
       
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [yymoney] [decimal](18,2)  null,
	        	  [gzjl] [decimal](18,2)  null,
	        	  [fl] [decimal](18,2)  null,
	        	  [cl] [decimal](18,2)  null,
	        	  [bg] [decimal](18,2)  null,
	        	  [fzwy] [decimal](18,2)  null,
	        	  [yd] [decimal](18,2)  null,
	        	  [yw] [decimal](18,2)  null,
	        	  [zd] [decimal](18,2)  null,
	        	  [bgzc] [decimal](18,2)  null,
	        	  [wl] [decimal](18,2)  null,
	        	  [other] [decimal](18,2)  null,
	        	  [xj] [decimal](18,2)  null,
	        	  [hd] [decimal](18,2)  null,
	        	  [cd] [decimal](18,2)  null,
	        	  [cdbz] [decimal](18,2)  null,
	        	  [mtdl] [decimal](18,2)  null,
	        	  [xj2] [decimal](18,2)  null,
	        	  [hj] [decimal](18,2)  null,
	        	  [gzjjl] [decimal](18,2)  null,
	        	  [clf] [decimal](18,2)  null,
	        	  [bgf] [decimal](18,2)  null,
	        	  [ywf] [decimal](18,2)  null,
	        	  [sbf] [decimal](18,2)  null,
	        	  [ydf] [decimal](18,2)  null,
	        	  [bzf] [decimal](18,2)  null,
	        	  [other2] [decimal](18,2)  null,
	        	  [xj3] [decimal](18,2)  null,
	        	  [hd2] [decimal](18,2)  null,
	        	  [cd2] [decimal](18,2)  null,
	        	  [cdbz2] [decimal](18,2)  null,
	        	  [mtdl2] [decimal](18,2)  null,
	        	  [xj4] [decimal](18,2)  null,
	        	  [yhsxf] [decimal](18,2)  null,
	        	  [lxsz] [decimal](18,2)  null,
	        	  [xj5] [decimal](18,2)  null,
	        	  [yxs] [decimal](18,2)  null,
	        	  [qysds] [decimal](18,2)  null,
	        	  [hj2] [decimal](18,2)  null,
	        	  [zhj] [decimal](18,2)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[yymoney]
      ,[gzjl]
      ,[fl]
      ,[cl]
      ,[bg]
      ,[fzwy]
      ,[yd]
      ,[yw]
      ,[zd]
      ,[bgzc]
      ,[wl]
      ,[other]
      ,[xj]
      ,[hd]
      ,[cd]
      ,[cdbz]
      ,[mtdl]
      ,[xj2]
      ,[hj]
      ,[gzjjl]
      ,[clf]
      ,[bgf]
      ,[ywf]
      ,[sbf]
      ,[ydf]
      ,[bzf]
      ,[other2]
      ,[xj3]
      ,[hd2]
      ,[cd2]
      ,[cdbz2]
      ,[mtdl2]
      ,[xj4]
      ,[yhsxf]
      ,[lxsz]
      ,[xj5]
      ,[yxs]
      ,[qysds]
      ,[hj2]
      ,[zhj]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [systemreport]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_role_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_role_g]
      	  @id int,
	        	  @rolename nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(10)) + ''''''''
            if @rolename is not null and LEN(@rolename)>0  
              SET @filter = @filter + '' AND [rolename] = N'''''' + CAST(@rolename AS nvarchar(100)) + ''''''''
         
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [int]  not null,
	        	  [rolename] [nvarchar](100)  null,
	        	  [menu] [nvarchar](1000)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  not null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[rolename]
      ,[menu]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [role]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_requestmoney_g]
      	  @id uniqueidentifier,
	        	  @username nvarchar(100),

	  @statues int,
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [username] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
      
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [username] [nvarchar](100)  null,
	        	  [money] [decimal]  null,
	        	  [msg] [nvarchar](1000)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[username]
      ,[money]
      ,[msg]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [requestmoney]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_payment_request_detail_g]
      	  @id uniqueidentifier,
	        	  @paymentid uniqueidentifier,
	        	 
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @paymentid is not null 
              SET @filter = @filter + '' AND [paymentid] = '''''' + CAST(@paymentid AS nvarchar(40)) + ''''''''
         
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [paymentid] [uniqueidentifier]  null,
	        	  [money] [decimal]  null,
	        	  [username] [nvarchar](100)  null,
	        	  [bank] [nvarchar](100)  null,
	        	  [cardno] [nvarchar](100)  null,
	        	  [detail] [nvarchar](1000)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[paymentid]
      ,[money]
      ,[username]
      ,[bank]
      ,[cardno]
      ,[detail]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [payment_request_detail]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_receivemoney_g]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
           
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [time] [nvarchar](100)  null,
	        	  [department] [nvarchar](100)  null,
	        	  [receivemoney] [decimal](18,2) null,
	        	  [reducemoney] [decimal](18,2) null,
	        	  [remark] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderno]
      ,[type]
      ,[money]
      ,[time]
      ,[department]
      ,[receivemoney]
      ,[reducemoney]
      ,[remark]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [receivemoney]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_pushmoneysetting_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = N'''''' + CAST(@name AS nvarchar(100)) + ''''''''
      
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [percentage] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[percentage]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [pushmoneysetting]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_payment_request_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @orderuser nvarchar(100),
	        	  @iscwcheck bit,
	        	  @ismanagerusercheck bit,
	        	  @istopmanagerusercheck bit,
	        	  @isjz bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
          
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
          
            if @orderuser is not null and LEN(@orderuser)>0  
              SET @filter = @filter + '' AND [orderuser] = '''''' + CAST(@orderuser AS nvarchar(100)) + ''''''''
            if @iscwcheck is not null 
              SET @filter = @filter + '' AND [iscwcheck] = '''''' + CAST(@iscwcheck AS nvarchar(10)) + ''''''''
            if @ismanagerusercheck is not null 
              SET @filter = @filter + '' AND [ismanagerusercheck] = '''''' + CAST(@ismanagerusercheck AS nvarchar(10)) + ''''''''
            if @istopmanagerusercheck is not null 
              SET @filter = @filter + '' AND [istopmanagerusercheck] = '''''' + CAST(@istopmanagerusercheck AS nvarchar(10)) + ''''''''
            if @isjz is not null 
              SET @filter = @filter + '' AND [isjz] = '''''' + CAST(@isjz AS nvarchar(10)) + ''''''''
          
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [time] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [gysname] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [msgcontent] [nvarchar](1000)  null,
	        	  [reqesttime] [nvarchar](50)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [remark2] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [maintype] [nvarchar](100)  null,
	        	  [orderuser] [nvarchar](100)  null,
	        	  [iscwcheck] [bit]  null,
	        	  [ismanagerusercheck] [bit]  null,
	        	  [istopmanagerusercheck] [bit]  null,
	        	  [isjz] [bit]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[time]
      ,[orderno]
      ,[gysname]
      ,[company]
      ,[msgcontent]
      ,[reqesttime]
      ,[remark]
      ,[remark2]
      ,[money]
      ,[type]
      ,[maintype]
      ,[orderuser]
      ,[iscwcheck]
      ,[ismanagerusercheck]
      ,[istopmanagerusercheck]
      ,[isjz]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [payment_request]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_ordertz_request_g]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @username nvarchar(100),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
            if @ismanagercheck is not null 
              SET @filter = @filter + '' AND [ismanagercheck] = '''''' + CAST(@ismanagercheck AS nvarchar(10)) + ''''''''
            if @istopmanagercheck is not null 
              SET @filter = @filter + '' AND [istopmanagercheck] = '''''' + CAST(@istopmanagercheck AS nvarchar(10)) + ''''''''
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [name] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [balance] [decimal](18,2)  null,
	        	  [balancereduce] [decimal](18,2)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [ismanagercheck] [bit]  null,
	        	  [istopmanagercheck] [bit]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderno]
      ,[customershortname]
      ,[company]
      ,[time]
      ,[name]
      ,[projectcontent]
      ,[money]
      ,[balance]
      ,[balancereduce]
      ,[remark]
      ,[ismanagercheck]
      ,[istopmanagercheck]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [ordertz_request]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g2]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_order_g2]
      	 @startime nvarchar(20),
      	 @endtime nvarchar(20),
      	 @orderno nvarchar(64),
      	 @iskp bit,
      	 @issk bit,
      	 @customshortname nvarchar(128),
      	 @projectname nvarchar(64),
      	 @company nvarchar(64),
	     @statues int,
		 @page int,
		 @sortkey nvarchar(64)
as


DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [order].[statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @startime is not null 
              SET @filter = @filter + '' AND [order].[time] >= '''''' + @startime + ''''''''
            if @endtime is not null 
              SET @filter = @filter + '' AND [order].[time] <= '''''' + @endtime + ''''''''
         
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [order].[orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            
            if @iskp is not null
               SET @filter = @filter + '' AND [order].[iskp] = '''''' + CAST(@iskp AS nvarchar(1)) + ''''''''
            if @issk is not null and @issk > 0
               SET @filter = @filter + '' AND [order].[orderno] IN (select orderno from kp where statues = 1) ''
            if @customshortname is not null and LEN(@customshortname)>0
               SET @filter = @filter + '' AND [order].[customershortname] like ''''%'' +@customshortname+ ''%''''''
            if @projectname is not null and LEN(@projectname)>0
               SET @filter = @filter + '' AND [order].[name] like ''''%'' +@projectname+ ''%''''''
            if @company is not null and LEN(@company)>0
               SET @filter = @filter + '' AND [order].[company] like ''''%'' +@company+ ''%''''''
            
            
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	          [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](500)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)   null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [balance] [decimal](18,2)  null,
	        	  [balancereduce] [decimal](18,2)  null,
	        	  [balancereducereason] [nvarchar](500),
	        	  [isht] [bit]  null,
	        	  [iskp] [bit]  null,
	        	  [other] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [managercheck] [bit]  null,
	        	  [cwcheck] [bit]  null,
	        	  [zk] [decimal](18,2)   null,
	        	  [jsz] [decimal](18,2)   null,
	        	  [ml] [decimal](18,2)   null,
	        	  [lrmoney] [decimal](18,2)   null,
	        	  [lr] [nvarchar](20)  null,
	        	  [iszd] [bit]  null,
	        	  [parentorderno] [nvarchar](100)  null,
	        	  [shouldmoney] [decimal](18,2),
	        	  [havemoney] [decimal](18,2),
	        	  [nothavemoney] [decimal](18,2),
	        	  [havemoneypercentage] [nvarchar](50),
	        	  [actualmoney] [decimal](18,2),
	        	  [hxmoney] [decimal](18,2),
	        	  [kpce] [decimal](18,2),
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	             
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY [order].updatetime ) AS RowNum
               ,[id]
      ,[name]
      ,[company]
      ,[projectcontent]
      ,[customername]
      ,[orderno]
      ,[money]
      ,[customershortname]
      ,[time]
      ,[balance]
      ,[balancereduce]
      ,[balancereducereason]
      ,[isht]
      ,[iskp]
      ,[other]
      ,[remark]
      ,[managercheck]
      ,[cwcheck]
      ,[zk]
      ,[jsz]
      ,[ml]
      ,[lrmoney]
      ,[lr]
      ,[iszd]
      ,[parentorderno]
      ,[shouldmoney] 
	  ,[havemoney] 
	  ,[nothavemoney]
	  ,[havemoneypercentage]
	  ,[actualmoney] 
	  ,[hxmoney]
	  ,[kpce] 
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
  
				FROM [order] 
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY orderno,updatetime desc

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)
		' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_topmanagercheck]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_topmanagercheck]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_order_g_topmanagercheck]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @username nvarchar(100),
	        	  @managercheck bit,
	        	  @cwcheck bit,
	        	  @iszd bit,
	        	  @parentorderno nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] like '''''' + CAST(@name AS nvarchar(100)) + ''%''''''
         
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(10)) + ''''''''
            
            if @cwcheck is not null 
              SET @filter = @filter + '' AND [cwcheck] = '''''' + CAST(@cwcheck AS nvarchar(10)) + ''''''''
          
            if @iszd is not null 
              SET @filter = @filter + '' AND [iszd] = '''''' + CAST(@iszd AS nvarchar(10)) + ''''''''
            if @parentorderno is not null and LEN(@parentorderno)>0  
              SET @filter = @filter + '' AND [parentorderno] = '''''' + CAST(@parentorderno AS nvarchar(100)) + ''''''''
            if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](500)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)   null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [balance] [decimal](18,2)  null,
	        	  [balancereduce] [decimal](18,2)  null,
	        	  [balancereducereason] [nvarchar](500),
	        	  [isht] [bit]  null,
	        	  [iskp] [bit]  null,
	        	  [other] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [managercheck] [bit]  null,
	        	  [cwcheck] [bit]  null,
	        	  [zk] [decimal](18,2)   null,
	        	  [jsz] [decimal](18,2)   null,
	        	  [ml] [decimal](18,2)   null,
	        	  [lrmoney] [decimal](18,2)   null,
	        	  [lr] [nvarchar](20)  null,
	        	  [iszd] [bit]  null,
	        	  [parentorderno] [nvarchar](100)  null,
	        	  [shouldmoney] [decimal](18,2),
	        	  [havemoney] [decimal](18,2),
	        	  [nothavemoney] [decimal](18,2),
	        	  [havemoneypercentage] [nvarchar](50),
	        	  [actualmoney] [decimal](18,2),
	        	  [hxmoney] [decimal](18,2),
	        	  [kpce] [decimal](18,2),
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[company]
      ,[projectcontent]
      ,[customername]
      ,[orderno]
      ,[money]
      ,[customershortname]
      ,[time]
      ,[balance]
      ,[balancereduce]
      ,[balancereducereason]
      ,[isht]
      ,[iskp]
      ,[other]
      ,[remark]
      ,[managercheck]
      ,[cwcheck]
      ,[zk]
      ,[jsz]
      ,[ml]
      ,[lrmoney]
      ,[lr]
      ,[iszd]
      ,[parentorderno]
      ,[shouldmoney] 
	  ,[havemoney] 
	  ,[nothavemoney]
	  ,[havemoneypercentage]
	  ,[actualmoney] 
	  ,[hxmoney]
	  ,[kpce]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [order]
				WHERE  '' + @filter + '' and convert(float,replace([lr],''''%'''',''''''''))<=30
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_managercheck]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_managercheck]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_order_g_managercheck]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @username nvarchar(100),
	        	  @managercheck bit,
	        	  @cwcheck bit,
	        	  @iszd bit,
	        	  @parentorderno nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] like '''''' + CAST(@name AS nvarchar(100)) + ''%''''''
         
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(10)) + ''''''''
            
            if @cwcheck is not null 
              SET @filter = @filter + '' AND [cwcheck] = '''''' + CAST(@cwcheck AS nvarchar(10)) + ''''''''
          
            if @iszd is not null 
              SET @filter = @filter + '' AND [iszd] = '''''' + CAST(@iszd AS nvarchar(10)) + ''''''''
            if @parentorderno is not null and LEN(@parentorderno)>0  
              SET @filter = @filter + '' AND [parentorderno] = '''''' + CAST(@parentorderno AS nvarchar(100)) + ''''''''
              
           if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](500)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)   null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [balance] [decimal](18,2)  null,
	        	  [balancereduce] [decimal](18,2)  null,
	        	  [balancereducereason] [nvarchar](500),
	        	  [isht] [bit]  null,
	        	  [iskp] [bit]  null,
	        	  [other] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [managercheck] [bit]  null,
	        	  [cwcheck] [bit]  null,
	        	  [zk] [decimal](18,2)   null,
	        	  [jsz] [decimal](18,2)   null,
	        	  [ml] [decimal](18,2)   null,
	        	  [lrmoney] [decimal](18,2)   null,
	        	  [lr] [nvarchar](20)  null,
	        	  [iszd] [bit]  null,
	        	  [parentorderno] [nvarchar](100)  null,
	        	  [shouldmoney] [decimal](18,2),
	        	  [havemoney] [decimal](18,2),
	        	  [nothavemoney] [decimal](18,2),
	        	  [havemoneypercentage] [nvarchar](50),
	        	  [actualmoney] [decimal](18,2),
	        	  [hxmoney] [decimal](18,2),
	        	  [kpce] [decimal](18,2),
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[company]
      ,[projectcontent]
      ,[customername]
      ,[orderno]
      ,[money]
      ,[customershortname]
      ,[time]
      ,[balance]
      ,[balancereduce]
      ,[balancereducereason]
      ,[isht]
      ,[iskp]
      ,[other]
      ,[remark]
      ,[managercheck]
      ,[cwcheck]
      ,[zk]
      ,[jsz]
      ,[ml]
      ,[lr]
      ,[lrmoney]
      ,[iszd]
      ,[parentorderno]
      ,[shouldmoney] 
	  ,[havemoney] 
	  ,[nothavemoney]
	  ,[havemoneypercentage]
	  ,[actualmoney] 
	  ,[hxmoney]
	  ,[kpce] 
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [order]
				WHERE  '' + @filter + '' and convert(float,replace([lr],''''%'''',''''''''))>30
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_order_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @username nvarchar(100),
	        	  @managercheck bit,
	        	  @cwcheck bit,
	        	  @iszd bit,
	        	  @parentorderno nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] like '''''' + CAST(@name AS nvarchar(100)) + ''%''''''
         
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(10)) + ''''''''
            
            if @cwcheck is not null 
              SET @filter = @filter + '' AND [cwcheck] = '''''' + CAST(@cwcheck AS nvarchar(10)) + ''''''''
          
            if @iszd is not null 
              SET @filter = @filter + '' AND [iszd] = '''''' + CAST(@iszd AS nvarchar(10)) + ''''''''
            if @parentorderno is not null and LEN(@parentorderno)>0  
              SET @filter = @filter + '' AND [parentorderno] = '''''' + CAST(@parentorderno AS nvarchar(100)) + ''''''''
            if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](500)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)   null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [balance] [decimal](18,2)  null,
	        	  [balancereduce] [decimal](18,2)  null,
	        	  [balancereducereason] [nvarchar](500),
	        	  [isht] [bit]  null,
	        	  [iskp] [bit]  null,
	        	  [other] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [managercheck] [bit]  null,
	        	  [cwcheck] [bit]  null,
	        	  [zk] [decimal](18,2)   null,
	        	  [jsz] [decimal](18,2)   null,
	        	  [ml] [decimal](18,2)   null,
	        	  [lrmoney] [decimal](18,2)   null,
	        	  [lr] [nvarchar](20)  null,
	        	  [iszd] [bit]  null,
	        	  [parentorderno] [nvarchar](100)  null,
	        	  [shouldmoney] [decimal](18,2),
	        	  [havemoney] [decimal](18,2),
	        	  [nothavemoney] [decimal](18,2),
	        	  [havemoneypercentage] [nvarchar](50),
	        	  [actualmoney] [decimal](18,2),
	        	  [hxmoney] [decimal](18,2),
	        	  [kpce] [decimal](18,2),
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[company]
      ,[projectcontent]
      ,[customername]
      ,[orderno]
      ,[money]
      ,[customershortname]
      ,[time]
      ,[balance]
      ,[balancereduce]
      ,[balancereducereason]
      ,[isht]
      ,[iskp]
      ,[other]
      ,[remark]
      ,[managercheck]
      ,[cwcheck]
      ,[zk]
      ,[jsz]
      ,[ml]
      ,[lrmoney]
      ,[lr]
      ,[iszd]
      ,[parentorderno]
      ,[shouldmoney] 
	  ,[havemoney] 
	  ,[nothavemoney]
	  ,[havemoneypercentage]
	  ,[actualmoney] 
	  ,[hxmoney]
	  ,[kpce]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [order]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_moneyreport_g]
      	  @id uniqueidentifier,
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
         
            if @statues is not null 
              SET @filter = @filter + '' AND [statues] = '''''' + CAST(@statues AS nvarchar(10)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [jyj] [decimal](18,2)  null,
	        	  [ysmoney] [decimal](18,2)  null,
	        	  [ml] [decimal](18,2)  null,
	        	  [mlv] [nvarchar](100)  null,
	        	  [othermoney] [decimal](18,2)  null,
	        	  [yemoney] [decimal](18,2)  null,
	        	  [yevnvarchar] [nvarchar](100)  null,
	        	  [dysk] [decimal](18,2)  null,
	        	  [sqqk] [decimal](18,2)  null,
	        	  [ssnk] [decimal](18,2)  null,
	        	  [xj] [decimal](18,2)  null,
	        	  [dnwqk] [decimal](18,2)  null,
	        	  [snwqk] [decimal](18,2)  null,
	        	  [xj2] [decimal](18,2)  null,
	        	  [kpmoney] [decimal](18,2)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[money]
      ,[jyj]
      ,[ysmoney]
      ,[ml]
      ,[mlv]
      ,[othermoney]
      ,[yemoney]
      ,[yevnvarchar]
      ,[dysk]
      ,[sqqk]
      ,[ssnk]
      ,[xj]
      ,[dnwqk]
      ,[snwqk]
      ,[xj2]
      ,[kpmoney]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [moneyreport]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_menu_g]
      	  @id int,
	        	  @name nvarchar(100),
	        	  @parentid int,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(10)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
         
            if @parentid is not null 
              SET @filter = @filter + '' AND [parentid] = '''''' + CAST(@parentid AS nvarchar(10)) + ''''''''
     
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
       [id] [int]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [url] [nvarchar](100)  null,
	        	  [parentid] [int]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  not null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[url]
      ,[parentid]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [menu]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)


 ' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_log_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create Procedure [dbo].[sp_log_g]
      	  @id uniqueidentifier,
	        	  
	        	  @type nvarchar(100),
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''

            if @type is not null and LEN(@type)>0  
              SET @filter = @filter + '' AND [type] = '''''' + CAST(@type AS nvarchar(100)) + ''''''''
         
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [msgcontent] [nvarchar](MAX)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[msgcontent]
      ,[type]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [log]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_kptype_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @type nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = N'''''' + CAST(@name AS nvarchar(100)) + ''''''''
            if @type is not null and LEN(@type)>0  
              SET @filter = @filter + '' AND [type] = N'''''' + CAST(@type AS nvarchar(100)) + ''''''''
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [projectname] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[type]
      ,[projectname]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [kptype]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_topmanger]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_topmanger]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_kp_g_topmanger]
      	  @id uniqueidentifier,
	        	  @orderid nvarchar(50),
	        	  @kptt nvarchar(100),
	        	  @type nvarchar(100),
	        	  @project nvarchar(100),
	        	  @company nvarchar(100),
	        	  @ywuser nvarchar(100),
	        	  @managercheck bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderid is not null 
              SET @filter = @filter + '' AND [orderid] = '''''' + CAST(@orderid AS nvarchar(40)) + ''''''''
            if @kptt is not null and LEN(@kptt)>0  
              SET @filter = @filter + '' AND [kptt] = '''''' + CAST(@kptt AS nvarchar(100)) + ''''''''
            if @type is not null and LEN(@type)>0  
              SET @filter = @filter + '' AND [type] = '''''' + CAST(@type AS nvarchar(100)) + ''''''''
            if @project is not null and LEN(@project)>0  
              SET @filter = @filter + '' AND [project] = '''''' + CAST(@project AS nvarchar(100)) + ''''''''

            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] = '''''' + CAST(@company AS nvarchar(100)) + ''''''''
            if @ywuser is not null and LEN(@ywuser)>0  
              SET @filter = @filter + '' AND [ywuser] = '''''' + CAST(@ywuser AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(1)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderid] [nvarchar](100)  null,
	        	  [kptt] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [project] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [bcmoney] [decimal]  null,
	        	  [company] [nvarchar](100)  null,
	        	  [bjsj] [decimal](18,2)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [ywuser] [nvarchar](100)  null,
	        	  [manageridea] [nvarchar](100)  null,
	        	  [managerreason] [nvarchar](100)  null,
	        	  [topmanageridea] [nvarchar](100)  null,
	        	  [topmanagerreason] [nvarchar](100)  null,
	        	  [managercheck] bit null,
	        	  [customername] [nvarchar](100)  null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderid]
      ,[kptt]
      ,[type]
      ,[project]
      ,[money]
      ,[bcmoney]
      ,[company]
      ,[bjsj]
      ,[remark]
      ,[other]
      ,[ywuser]
      ,[manageridea]
      ,[managerreason]
      ,[topmanageridea]
      ,[topmanagerreason]
      ,[managercheck]
      , [customername] 
	  , [customershortname] 
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [kp]
				WHERE  '' + @filter + '' and topmanageridea = ''''1''''
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + '' 

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)
		' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_manger]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_manger]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_kp_g_manger]
      	  @id uniqueidentifier,
	        	  @orderid nvarchar(50),
	        	  @kptt nvarchar(100),
	        	  @type nvarchar(100),
	        	  @project nvarchar(100),
	        	  @company nvarchar(100),
	        	  @ywuser nvarchar(100),
	        	  @managercheck bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderid is not null 
              SET @filter = @filter + '' AND [orderid] = '''''' + CAST(@orderid AS nvarchar(40)) + ''''''''
            if @kptt is not null and LEN(@kptt)>0  
              SET @filter = @filter + '' AND [kptt] = '''''' + CAST(@kptt AS nvarchar(100)) + ''''''''
            if @type is not null and LEN(@type)>0  
              SET @filter = @filter + '' AND [type] = '''''' + CAST(@type AS nvarchar(100)) + ''''''''
            if @project is not null and LEN(@project)>0  
              SET @filter = @filter + '' AND [project] = '''''' + CAST(@project AS nvarchar(100)) + ''''''''

            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] = '''''' + CAST(@company AS nvarchar(100)) + ''''''''
            if @ywuser is not null and LEN(@ywuser)>0  
              SET @filter = @filter + '' AND [ywuser] = '''''' + CAST(@ywuser AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(1)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderid] [nvarchar](100)  null,
	        	  [kptt] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [project] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [bcmoney] [decimal]  null,
	        	  [company] [nvarchar](100)  null,
	        	  [bjsj] [decimal](18,2)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [ywuser] [nvarchar](100)  null,
	        	  [manageridea] [nvarchar](100)  null,
	        	  [managerreason] [nvarchar](100)  null,
	        	  [topmanageridea] [nvarchar](100)  null,
	        	  [topmanagerreason] [nvarchar](100)  null,
	        	  [managercheck] bit null,
	        	  [customername] [nvarchar](100)  null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderid]
      ,[kptt]
      ,[type]
      ,[project]
      ,[money]
      ,[bcmoney]
      ,[company]
      ,[bjsj]
      ,[remark]
      ,[other]
      ,[ywuser]
      ,[manageridea]
      ,[managerreason]
      ,[topmanageridea]
      ,[topmanagerreason]
      ,[managercheck]
      , [customername] 
	  , [customershortname] 
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [kp]
				WHERE  '' + @filter + '' and manageridea = ''''1''''
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + '' 

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)
		' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_kp_g]
      	  @id uniqueidentifier,
	        	  @orderid nvarchar(50),
	        	  @kptt nvarchar(100),
	        	  @username nvarchar(50),
	        	  @type nvarchar(100),
	        	  @project nvarchar(100),
	        	  @company nvarchar(100),
	        	  @ywuser nvarchar(100),
	        	  @managercheck bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderid is not null 
              SET @filter = @filter + '' AND [orderid] = '''''' + CAST(@orderid AS nvarchar(40)) + ''''''''
            if @kptt is not null and LEN(@kptt)>0  
              SET @filter = @filter + '' AND [kptt] = '''''' + CAST(@kptt AS nvarchar(100)) + ''''''''
            if @type is not null and LEN(@type)>0  
              SET @filter = @filter + '' AND [type] = '''''' + CAST(@type AS nvarchar(100)) + ''''''''
            if @project is not null and LEN(@project)>0  
              SET @filter = @filter + '' AND [project] = '''''' + CAST(@project AS nvarchar(100)) + ''''''''

            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] = '''''' + CAST(@company AS nvarchar(100)) + ''''''''
            if @ywuser is not null and LEN(@ywuser)>0  
              SET @filter = @filter + '' AND [ywuser] = '''''' + CAST(@ywuser AS nvarchar(100)) + ''''''''
            if @managercheck is not null 
              SET @filter = @filter + '' AND [managercheck] = '''''' + CAST(@managercheck AS nvarchar(1)) + ''''''''
            if @username is not null and LEN(@username)>0
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(50)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderid] [nvarchar](100)  null,
	        	  [kptt] [nvarchar](100)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [project] [nvarchar](100)  null,
	        	  [money] [decimal](18,2)  null,
	        	  [bcmoney] [decimal]  null,
	        	  [company] [nvarchar](100)  null,
	        	  [bjsj] [decimal](18,2)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [ywuser] [nvarchar](100)  null,
	        	  [manageridea] [nvarchar](100)  null,
	        	  [managerreason] [nvarchar](100)  null,
	        	  [topmanageridea] [nvarchar](100)  null,
	        	  [topmanagerreason] [nvarchar](100)  null,
	        	  [managercheck] bit null,
	        	  [customername] [nvarchar](100)  null,
	        	  [customershortname] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderid]
      ,[kptt]
      ,[type]
      ,[project]
      ,[money]
      ,[bcmoney]
      ,[company]
      ,[bjsj]
      ,[remark]
      ,[other]
      ,[ywuser]
      ,[manageridea]
      ,[managerreason]
      ,[topmanageridea]
      ,[topmanagerreason]
      ,[managercheck]
      , [customername] 
	  , [customershortname] 
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [kp]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + '' 

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_jx_target_g]
      	  @id uniqueidentifier,
	        	  @company nvarchar(100),
	        	  @businesstype nvarchar(100),
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] = '''''' + CAST(@company AS nvarchar(100)) + ''''''''
            if @businesstype is not null and LEN(@businesstype)>0  
              SET @filter = @filter + '' AND [businesstype] = '''''' + CAST(@businesstype AS nvarchar(100)) + ''''''''
        
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [businesstype] [nvarchar](100)  null,
	        	  [firstsection] [nvarchar](100)  null,
	        	  [firstcomplete] [nvarchar](100)  null,
	        	  [secsection] [nvarchar](100)  null,
	        	  [seccomplete] [nvarchar](100)  null,
	        	  [thrsection] [nvarchar](100)  null,
	        	  [thrcomplete] [nvarchar](100)  null,
	        	  [foursection] [nvarchar](100)  null,
	        	  [fourcomplete] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[businesstype]
      ,[firstsection]
      ,[firstcomplete]
      ,[secsection]
      ,[seccomplete]
      ,[thrsection]
      ,[thrcomplete]
      ,[foursection]
      ,[fourcomplete]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [jx_target]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_customer_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @company nvarchar(200),
	        	  @kpname nvarchar(100),
	        	  @sh nvarchar(100),
	        	  @address nvarchar(100),
	        	  @tel nvarchar(100),
	        	  @bank nvarchar(100),
	        	  @account nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] like '''''' + CAST(@name AS nvarchar(100)) + ''%''''''
            if @company is not null and LEN(@company)>0  
              SET @filter = @filter + '' AND [company] like '''''' + CAST(@company AS nvarchar(200)) + ''%''''''
            if @kpname is not null and LEN(@kpname)>0  
              SET @filter = @filter + '' AND [kpname] = '''''' + CAST(@kpname AS nvarchar(100)) + ''''''''
            if @sh is not null and LEN(@sh)>0  
              SET @filter = @filter + '' AND [sh] = '''''' + CAST(@sh AS nvarchar(100)) + ''''''''
            if @address is not null and LEN(@address)>0  
              SET @filter = @filter + '' AND [address] like '''''' + CAST(@address AS nvarchar(100)) + ''%''''''
            if @tel is not null and LEN(@tel)>0  
              SET @filter = @filter + '' AND [tel] = '''''' + CAST(@tel AS nvarchar(100)) + ''''''''
            if @bank is not null and LEN(@bank)>0  
              SET @filter = @filter + '' AND [bank] = '''''' + CAST(@bank AS nvarchar(100)) + ''''''''
            if @account is not null and LEN(@account)>0  
              SET @filter = @filter + '' AND [account] = '''''' + CAST(@account AS nvarchar(100)) + ''''''''
 
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [company] [nvarchar](200)  null,
	        	  [kpname] [nvarchar](100)  null,
	        	  [sh] [nvarchar](100)  null,
	        	  [address] [nvarchar](100)  null,
	        	  [tel] [nvarchar](100)  null,
	        	  [bank] [nvarchar](100)  null,
	        	  [account] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[company]
      ,[kpname]
      ,[sh]
      ,[address]
      ,[tel]
      ,[bank]
      ,[account]
      ,[remark]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [customer]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_costdetail_g]
      	  @id uniqueidentifier,
	        	  @orderid uniqueidentifier,
	        	  @name nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderid is not null 
              SET @filter = @filter + '' AND [orderid] = '''''' + CAST(@orderid AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
        
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderid] [uniqueidentifier]  null,
	        	  [name] [nvarchar](100)  null,
	        	  [gg] [nvarchar](100)  null,
	        	  [daynum] [nvarchar](100)  null,
	        	  [money] [decimal]  null,
	        	  [remark] [nvarchar](1000)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderid]
      ,[name]
      ,[gg]
      ,[daynum]
      ,[money]
      ,[remark]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [costdetail]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_commonpayment_g]
      	  @id uniqueidentifier,
	              @ismanagecheck bit,
	              @istopmanagercheck bit,
	              @isjz bit,
	              @iscwcheck bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
        
            if @ismanagecheck is not null 
              SET @filter = @filter + '' AND [ismanagercheck] = '''''' + CAST(@ismanagecheck AS nvarchar(1)) + ''''''''
            if @istopmanagercheck is not null 
              SET @filter = @filter + '' AND [istopmanagercheck] = '''''' + CAST(@istopmanagercheck AS nvarchar(1)) + ''''''''
            if @isjz is not null 
              SET @filter = @filter + '' AND [isjz] = '''''' + CAST(@isjz AS nvarchar(1)) + ''''''''
            if @iscwcheck is not null 
              SET @filter = @filter + '' AND [iscwcheck] = '''''' + CAST(@iscwcheck AS nvarchar(1)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [company] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [money] [decimal](18,2)  null,
	        	  [orderuser] [nvarchar](100)  null,
	        	  [ismanagercheck] [bit]  null,
	        	  [istopmanagercheck] [bit]  null,
	        	  [isjz] [bit]  null,
	        	  [iscwcheck] [bit]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[company]
      ,[time]
      ,[money]
      ,[orderuser]
      ,[ismanagercheck]
      ,[istopmanagercheck]
      ,[isjz]
      ,[iscwcheck]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [commonpayment]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_commonpayment_detail_g]
      	  @id uniqueidentifier,
	        	  @commonpaymentid uniqueidentifier,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @commonpaymentid is not null 
              SET @filter = @filter + '' AND [commonpaymentid] = '''''' + CAST(@commonpaymentid AS nvarchar(40)) + ''''''''
         
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  null,
	        	  [commonpaymentid] [uniqueidentifier]  null,
	        	  [money] [decimal](18,2)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [maintype] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[commonpaymentid]
      ,[money]
      ,[type]
      ,[maintype]
      ,[remark]
      ,[other]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [commonpayment_detail]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_business_money_request_detail_g]
      	  @id uniqueidentifier,
	        	  @businessid uniqueidentifier,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @businessid is not null 
              SET @filter = @filter + '' AND [businessid] = '''''' + CAST(@businessid AS nvarchar(40)) + ''''''''
         
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  null,
	        	  [businessid] [uniqueidentifier]  null,
	        	  [money] [decimal](18,2)  null,
	        	  [type] [nvarchar](100)  null,
	        	  [maintype] [nvarchar](100)  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[businessid]
      ,[money]
      ,[type]
      ,[maintype] 
      ,[remark]
      ,[other]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [business_money_request_detail]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_business_pay_request_g]
      	  @id uniqueidentifier,
      	  @orderno nvarchar(50),
      	  @username nvarchar(50),
	        	  @ismanagercheck bit,
	        	  @istopmanagercheck bit,
	        	  @iscwcheck bit,
	        	
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderno is not null 
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(40)) + ''''''''
            if @ismanagercheck is not null 
              SET @filter = @filter + '' AND [ismanagercheck] = '''''' + CAST(@ismanagercheck AS nvarchar(10)) + ''''''''
            if @istopmanagercheck is not null 
              SET @filter = @filter + '' AND [istopmanagercheck] = '''''' + CAST(@istopmanagercheck AS nvarchar(10)) + ''''''''
            if @iscwcheck is not null 
              SET @filter = @filter + '' AND [iscwcheck] = '''''' + CAST(@iscwcheck AS nvarchar(10)) + ''''''''
            if @username is not null 
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(40)) + ''''''''
           
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
      	  [orderno] [nvarchar](100)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [money] [decimal]  null,
	        	  [balance] [decimal]  null,
	        	  [hxbalance] [decimal]  null,
	        	  [receivename] [nvarchar](100)  null,
	        	  [account] [nvarchar](100)  null,
	        	  [payway] [nvarchar](100)  null,
	        	  [bank] [nvarchar](100)  null,
	        	  [other] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [ismanagercheck] [bit]  null,
	        	  [istopmanagercheck] [bit]  null,
	        	  [iscwcheck] [bit]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
          ,[orderno]
      ,[customername]
      ,[money]
      ,[balance]
      ,[hxbalance]
      ,[receivename]
      ,[account]
      ,[payway]
      ,[bank]
      ,[other]
      ,[company]
      ,[ismanagercheck]
      ,[istopmanagercheck]
      ,[iscwcheck]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [business_pay_request]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_business_money_request_g]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @username nvarchar(50),
	              @ismanagecheck bit,
	              @istopmanagercheck bit,
	              @isjz bit,
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
             if @username is not null and LEN(@username)>0  
              SET @filter = @filter + '' AND [createby] = '''''' + CAST(@username AS nvarchar(100)) + ''''''''
            if @ismanagecheck is not null 
              SET @filter = @filter + '' AND [ismanagecheck] = '''''' + CAST(@ismanagecheck AS nvarchar(1)) + ''''''''
            if @istopmanagercheck is not null 
              SET @filter = @filter + '' AND [istopmanagercheck] = '''''' + CAST(@istopmanagercheck AS nvarchar(1)) + ''''''''
            if @isjz is not null 
              SET @filter = @filter + '' AND [isjz] = '''''' + CAST(@isjz AS nvarchar(1)) + ''''''''
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [customername] [nvarchar](100)  null,
	        	  [company] [nvarchar](100)  null,
	        	  [projectcontent] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [money] [decimal](18,2)  null,
	        	  [receivemoney] [decimal](18,2)  null,
	        	  [receivetime] [datetime]  null,
	        	  [overday] [int]  null,
	        	  [moneypercentage] [nvarchar](100)  null,
	        	  [businessmoney] [decimal](18,2)  null,
	        	  [orderuser] [nvarchar](100)  null,
	        	  [ismanagecheck] [bit]  null,
	        	  [istopmanagercheck] [bit]  null,
	        	  [isjz] [bit]  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[orderno]
      ,[customername]
      ,[company]
      ,[projectcontent]
      ,[time]
      ,[money]
      ,[receivemoney]
      ,[receivetime]
      ,[overday]
      ,[moneypercentage]
      ,[businessmoney]
      ,[orderuser]
      ,[ismanagecheck]
      ,[istopmanagercheck]
      ,[isjz]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [business_money_request]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_budget_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @manageruser nvarchar(100),
	        	  @orderuser nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
          
            if @manageruser is not null and LEN(@manageruser)>0  
              SET @filter = @filter + '' AND [manageruser] = '''''' + CAST(@manageruser AS nvarchar(100)) + ''''''''
            if @orderuser is not null and LEN(@orderuser)>0  
              SET @filter = @filter + '' AND [orderuser] = '''''' + CAST(@orderuser AS nvarchar(100)) + ''''''''
           
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [time] [nvarchar](100)  null,
	        	  [money] [decimal]  null,
	        	  [manageruser] [nvarchar](100)  null,
	        	  [orderuser] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[orderno]
      ,[time]
      ,[money]
      ,[manageruser]
      ,[orderuser]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [budget]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_budget_detail_g]
      	  @id uniqueidentifier,
	        	  @budgetid uniqueidentifier,
	        	  @name nvarchar(100),
	        
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @budgetid is not null 
              SET @filter = @filter + '' AND [budgetid] = '''''' + CAST(@budgetid AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [budgetid] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [gg] [nvarchar](100)  null,
	        	  [daynum] [int]  null,
	        	  [price] [decimal]  null,
	        	  [totalprice] [decimal]  null,
	        	  [remark] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[budgetid]
      ,[name]
      ,[gg]
      ,[daynum]
      ,[price]
      ,[totalprice]
      ,[remark]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [budget_detail]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_g]    Script Date: 10/24/2013 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[sp_activity_g]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time datetime,
	        	  @orderno nvarchar(100),
	        	  @money decimal,
	        	  @mainuser nvarchar(100),
	        	  @checkuser nvarchar(100),
	        	  @orderuser nvarchar(100),
	              @statues int,
	       
      @page int,
      @sortkey nvarchar(64)
as

DECLARE @pgsize AS INT
     SET @pgsize = dbo.fn_GetPageSize();

IF @sortkey IS NULL OR @sortkey = ''''
     SET @sortkey = dbo.fn_GetDefSortKey();

   DECLARE @rowfilter AS nVARCHAR(4000)
	 SET @rowfilter = CASE  
						WHEN @page > 0 THEN ''WHERE ( RowNum BETWEEN '' + CAST(( + @page - 1)*@pgsize + 1 AS VARCHAR(10)) + '' AND '' + CAST(@page * @pgsize AS VARCHAR(10)) + '')''
						ELSE ''''
					  END
 
     DECLARE @dynsql AS nVARCHAR(4000)
	 
	  /*	
		id + category + name + description + value 
	 */
	 DECLARE @filter AS nVARCHAR(4000)
	       SET @filter = CASE WHEN @statues IS NULL  THEN ''(1=1)''
						 ELSE ''( [statues] = '' + CAST(@statues AS VARCHAR(1)) + '')''
					END 
     
            if @id is not null 
              SET @filter = @filter + '' AND [id] = '''''' + CAST(@id AS nvarchar(40)) + ''''''''
            if @name is not null and LEN(@name)>0  
              SET @filter = @filter + '' AND [name] = '''''' + CAST(@name AS nvarchar(100)) + ''''''''
            if @time is not null 
              SET @filter = @filter + '' AND [time] = '''''' + CAST(@time AS nvarchar(10)) + ''''''''
            if @orderno is not null and LEN(@orderno)>0  
              SET @filter = @filter + '' AND [orderno] = '''''' + CAST(@orderno AS nvarchar(100)) + ''''''''
            if @money is not null 
              SET @filter = @filter + '' AND [money] = '''''' + CAST(@money AS nvarchar(10)) + ''''''''
            if @mainuser is not null and LEN(@mainuser)>0  
              SET @filter = @filter + '' AND [mainuser] = '''''' + CAST(@mainuser AS nvarchar(100)) + ''''''''
            if @checkuser is not null and LEN(@checkuser)>0  
              SET @filter = @filter + '' AND [checkuser] = '''''' + CAST(@checkuser AS nvarchar(100)) + ''''''''
            if @orderuser is not null and LEN(@orderuser)>0  
              SET @filter = @filter + '' AND [orderuser] = '''''' + CAST(@orderuser AS nvarchar(100)) + ''''''''
          
    
	SET @dynsql = ''
			 DECLARE @tmptable TABLE
			 (
	          rownum INT,
      	  [id] [uniqueidentifier]  not null,
	        	  [name] [nvarchar](100)  null,
	        	  [time] [datetime]  null,
	        	  [orderno] [nvarchar](100)  null,
	        	  [money] [decimal]  null,
	        	  [mainuser] [nvarchar](100)  null,
	        	  [checkuser] [nvarchar](100)  null,
	        	  [orderuser] [nvarchar](100)  null,
	        	  [createtime] [datetime]  null,
	        	  [createby] [nvarchar](100)  null,
	        	  [updatetime] [datetime]  null,
	        	  [updateby] [nvarchar](100)  null,
	              [statues] [int]  null
	  			 )

				INSERT INTO @tmptable
				SELECT ROW_NUMBER() OVER (ORDER BY '' + @sortkey + '') AS RowNum
          ,[id]
      ,[name]
      ,[time]
      ,[orderno]
      ,[money]
      ,[mainuser]
      ,[checkuser]
      ,[orderuser]
      ,[createtime]
      ,[createby]
      ,[updatetime]
      ,[updateby]
      ,[statues]
				FROM [activity]
				WHERE  '' + @filter + '' 
			
	 
			 SELECT *
			 FROM @tmptable
			 '' + @rowfilter + '' ORDER BY '' + @sortkey + ''

			 SELECT pagesize = '' + CAST(@pgsize AS VARCHAR(3))+ '', totalrecords = COUNT(*) 
			 FROM @tmptable'';

		PRINT (@dynsql)
		EXEC  (@dynsql)

' 
END
GO
