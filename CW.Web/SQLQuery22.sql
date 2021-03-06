USE [cw]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_manger]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_manger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g_manger]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_g_topmanger]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_g_topmanger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_g_topmanger]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_log_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_log_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_managercheck]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_managercheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g_managercheck]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g_topmanagercheck]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g_topmanagercheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g_topmanagercheck]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_g2]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_g]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_g]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_tj]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_tj]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_tj]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_company]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_company]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g_company]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_user]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_g_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_g_user]
GO
/****** Object:  StoredProcedure [dbo].[sp_yyreport_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_yyreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_yyreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_jx_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_jx_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_jx_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_user_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_user_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_user_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g2]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_targetaward_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_targetaward_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_targetaward_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_role_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_role_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_role_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_systemreport_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_systemreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_systemreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_receivemoney_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_receivemoney_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_pushmoneysetting_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_pushmoneysetting_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_payment_request_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_payment_request_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ordertz_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ordertz_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g2]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_g2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_g2]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_order_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_order_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_order_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_moneyreport_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_moneyreport_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_menu_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_menu_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_menu_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_log_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_log_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_log_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kptype_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kptype_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kptype_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_kp_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_kp_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_kp_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_jx_target_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_jx_target_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_jx_target_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_customer_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_customer_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_costdetail_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_costdetail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_commonpayment_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_commonpayment_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_pay_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_pay_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_business_money_request_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_activity_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_activity_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_budget_detail_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_d]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_d]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_d]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_c]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_c]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_c]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_u]    Script Date: 11/01/2013 17:07:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_requestmoney_u]
GO
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_u]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_requestmoney_u]
      	  @id uniqueidentifier,
	        	  @username nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_requestmoney_c]
      	  @id uniqueidentifier,
	        	  @username nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_budget_detail_c]
      	  @id uniqueidentifier,
	        	  @budgetid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum int,
	        	  @price decimal(18,2),
	        	  @totalprice decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_budget_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_budget_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_budget_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @orderno nvarchar(100),
	        	  @time nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_activity_u]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_activity_u]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time datetime,
	        	  @orderno nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_activity_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_activity_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_activity_c]
      	  @id uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @time datetime,
	        	  @orderno nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_business_money_request_c]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customername nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @time datetime,
	        	  @money decimal(18,2),
	        	  @receivemoney decimal(18,2),
	        	  @receivetime datetime,
	        	  @overday int,
	        	  @moneypercentage nvarchar(100),
	        	  @businessmoney decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_budget_u]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_c]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
	        	  @balance decimal(18,2),
	        	  @hxbalance decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_u]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_business_money_request_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_business_money_request_u]
      	  @id uniqueidentifier,
	        	  @orderno nvarchar(100),
	        	  @customername nvarchar(100),
	        	  @company nvarchar(100),
	        	  @projectcontent nvarchar(100),
	        	  @time datetime,
	        	  @money decimal(18,2),
	        	  @receivemoney decimal(18,2),
	        	  @receivetime datetime,
	        	  @overday int,
	        	  @moneypercentage nvarchar(100),
	        	  @businessmoney decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_u]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
	        	  @balance decimal(18,2),
	        	  @hxbalance decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_costdetail_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_costdetail_c]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_c]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE Procedure [dbo].[sp_costdetail_c]
      	  @id uniqueidentifier,
	        	  @orderid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_customer_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_customer_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_costdetail_u]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_costdetail_u]
      	  @id uniqueidentifier,
	        	  @orderid uniqueidentifier,
	        	  @name nvarchar(100),
	        	  @gg nvarchar(100),
	        	  @daynum nvarchar(100),
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_jx_target_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_jx_target_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_customer_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kp_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kp_c]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
	        	  @bcmoney decimal(18,2),
	        	  @company nvarchar(100),
	        	  @bjsj decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_jx_target_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kptype_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kptype_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kp_u]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
	        	  @bcmoney decimal(18,2),
	        	  @company nvarchar(100),
	        	  @bjsj decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_log_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kptype_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_menu_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_menu_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_menu_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g2]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_u]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  @money decimal(18,2),
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
/****** Object:  StoredProcedure [dbo].[sp_systemreport_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_systemreport_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_role_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_targetaward_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_targetaward_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_systemreport_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g2]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_targetaward_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_role_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_role_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_jx_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_user]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g_company]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_d]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_c]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_jx_u]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_jx_tj]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_jx_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_yyreport_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_targetaward_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_systemreport_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_role_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_requestmoney_g]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_requestmoney_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_requestmoney_g]
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
	        	  [money] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  [money] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_receivemoney_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_pushmoneysetting_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_payment_request_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ordertz_request_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_g2]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_g_topmanagercheck]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_g_managercheck]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_order_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_moneyreport_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_menu_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_log_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kptype_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_kp_g_topmanger]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  [bcmoney] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_kp_g_manger]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  [bcmoney] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_kp_g]    Script Date: 11/01/2013 17:07:19 ******/
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
	        	  [bcmoney] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_jx_target_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_customer_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_costdetail_g]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_costdetail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_costdetail_g]
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
	        	  [money] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_commonpayment_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_pay_request_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_business_money_request_g]    Script Date: 11/01/2013 17:07:19 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_budget_g]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_budget_g]
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
	        	  [money] [decimal](18,2)  null,
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
/****** Object:  StoredProcedure [dbo].[sp_budget_detail_g]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_budget_detail_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_budget_detail_g]
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
	        	  [price] [decimal](18,2)  null,
	        	  [totalprice] [decimal](18,2)   null,
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
/****** Object:  StoredProcedure [dbo].[sp_activity_g]    Script Date: 11/01/2013 17:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_activity_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[sp_activity_g]
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
	        	  [money] [decimal](18,2)  null,
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


