prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_default_workspace_id=>56010183870716847270
);
end;
/
prompt  WORKSPACE 56010183870716847270
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   18:11 Tuesday June 14, 2022
--   Exported By:     2020-1-60-118@STD.EWUBD.EDU
--   Export Type:     Workspace Export
--   Version:         22.1.1
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>56010183870716847270);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace ZIAUL572...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 56010252665821242567
 ,p_provisioning_company_id => 56010183870716847270
 ,p_short_name => 'ZIAUL572'
 ,p_display_name => 'ZIAUL572'
 ,p_first_schema_provisioned => 'WKSP_ZIAUL572'
 ,p_company_schemas => 'WKSP_ZIAUL572'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'ZIAUL572'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'ZIAUL572'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821681197747218,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821573915747218,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821402753747217,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '56010183764408847270',
  p_user_name                    => '2020-1-60-118@STD.EWUBD.EDU',
  p_first_name                   => 'Ziaul',
  p_last_name                    => 'Haque',
  p_description                  => '',
  p_email_address                => '2020-1-60-118@std.ewubd.edu',
  p_web_password                 => '109B108BB98767E2CEEEA056235102F60B4B3C3E3A00938AC2C33903977E47CC60D9D8B1C484EEABD0FB8153FD90CED0CC554D2C602A6CF414DC56BF45E4C17C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1821402753747217:1821573915747218:1821681197747218:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_ZIAUL572',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202206141801','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 23274931362664981216,
    p_user_id => 56010183764408847270,
    p_password => '109B108BB98767E2CEEEA056235102F60B4B3C3E3A00938AC2C33903977E47CC60D9D8B1C484EEABD0FB8153FD90CED0CC554D2C602A6CF414DC56BF45E4C17C');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 56010252898956242576,
    p_user_id => 56010183764408847270,
    p_password => '573ED171D4220872634F3F556D1BE86E4DEC823C138CC36E08121421E65C0D4231412BB073672031720EDB0841F86A85AF7DE8064F81C0B5A4A866432C57F1ED');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 56010258719264244106,
    p_user_id => 56010183764408847270,
    p_password => '56F7AC1AEEF0971AAED8F18D4AB6E64CB61CB2E49DCDA7591FDC7F788BBA2D4F3C3E6B64A1E9290DD87428FB1C9CE0E12DBE100BD6535CAD775E316FE08FAC9C');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4161570153553285957,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_262121216799808381_CURRENT_REPORT',
    p_attribute_value => '2113442552309866:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10488240661037114616,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_266470409881026219_CURRENT_REPORT',
    p_attribute_value => '6462635633527704:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3558695934713048335,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8658708764651238977,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_79626216072002201_CURRENT_REPORT',
    p_attribute_value => '79632265457995706:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928377560232875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '72328790154483268',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928377647515875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '72328790154483268.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928377779793875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '72328790154483268.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928377879324875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '72328790154483268.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928377937542875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '72328790154483268.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378054153875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '72328790154483268.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378171890875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '72328790154483268.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378262212875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '72328790154483268.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378312485875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '72328790154483268.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378494012875883,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '72328790154483268.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378559471875884,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '72329795312505899',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378652488875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '72329795312505899.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378715133875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '72329795312505899.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378853610875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '72329795312505899.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928378984640875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '72329795312505899.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379079423875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '72329795312505899.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379103526875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '72329795312505899.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379287221875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '72329795312505899.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379355327875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '72329795312505899.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379480659875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '72329795312505899.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379511369875885,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '72330278206509731',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379641162875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '72330278206509731.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379748994875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '72330278206509731.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379889447875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '72330278206509731.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928379999471875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '72330278206509731.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380076346875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '72330278206509731.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380117420875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '72330278206509731.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380270206875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '72330278206509731.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380328142875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '72330278206509731.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380433195875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '72330278206509731.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380555320875886,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '16565172685526446',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380693636875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '16565172685526446.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380793375875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '16565172685526446.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380897353875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '16565172685526446.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928380910559875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '16565172685526446.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381043009875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '16565172685526446.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381122444875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '16565172685526446.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381297912875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '16565172685526446.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381358277875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '16565172685526446.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381466721875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '16565172685526446.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381579825875887,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '72331295244515034',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381683570875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '72331295244515034.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381758977875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '72331295244515034.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381844628875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '72331295244515034.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928381969773875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '72331295244515034.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382058226875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '72331295244515034.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382182216875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '72331295244515034.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382228888875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '72331295244515034.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382323324875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '72331295244515034.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382477739875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '72331295244515034.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382585344875888,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '182005134783173294',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382642944875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '182005134783173294.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382761508875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4472T3',
    p_attribute_value => '182005134783173294.4472',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382892046875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4473T3',
    p_attribute_value => '182005134783173294.4473',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928382972648875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4474T3',
    p_attribute_value => '182005134783173294.4474',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383067630875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4475T3',
    p_attribute_value => '182005134783173294.4475',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383195566875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4476T3',
    p_attribute_value => '182005134783173294.4476',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383240210875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4477T3',
    p_attribute_value => '182005134783173294.4477',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383320977875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4478T3',
    p_attribute_value => '182005134783173294.4478',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383418622875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4479T3',
    p_attribute_value => '182005134783173294.4479',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383573588875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4481T3',
    p_attribute_value => '182005134783173294.4481',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383606502875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4482T3',
    p_attribute_value => '182005134783173294.4482',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383769803875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4483T3',
    p_attribute_value => '182005134783173294.4483',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383837759875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4484T3',
    p_attribute_value => '182005134783173294.4484',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928383968392875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4485T3',
    p_attribute_value => '182005134783173294.4485',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384071150875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4486T3',
    p_attribute_value => '182005134783173294.4486',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384166728875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4487T3',
    p_attribute_value => '182005134783173294.4487',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384261660875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4488T3',
    p_attribute_value => '182005134783173294.4488',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384373904875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4489T3',
    p_attribute_value => '182005134783173294.4489',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384444354875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4491T3',
    p_attribute_value => '182005134783173294.4491',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384507246875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4492T3',
    p_attribute_value => '182005134783173294.4492',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384676982875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4493T3',
    p_attribute_value => '182005134783173294.4493',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384785952875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4494T3',
    p_attribute_value => '182005134783173294.4494',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384878571875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4495T3',
    p_attribute_value => '182005134783173294.4495',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928384965012875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4496T3',
    p_attribute_value => '182005134783173294.4496',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385057110875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4497T3',
    p_attribute_value => '182005134783173294.4497',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385109127875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4498T3',
    p_attribute_value => '182005134783173294.4498',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385261385875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4499T3',
    p_attribute_value => '182005134783173294.4499',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385312361875889,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '72332249557526712',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385400569875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '72332249557526712.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385519591875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '72332249557526712.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385670552875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '72332249557526712.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385731362875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '72332249557526712.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385894103875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '72332249557526712.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928385912650875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '72332249557526712.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386076245875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '72332249557526712.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386161435875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '72332249557526712.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386290861875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '72332249557526712.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386369398875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4541T3',
    p_attribute_value => '182005134783173294.4541',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386418348875890,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4542T3',
    p_attribute_value => '182005134783173294.4542',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386500335875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4543T3',
    p_attribute_value => '182005134783173294.4543',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386622227875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4544T3',
    p_attribute_value => '182005134783173294.4544',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386784251875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '72332775553531661',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386826113875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '72332775553531661.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928386961389875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '72332775553531661.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387082112875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '72332775553531661.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387138251875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '72332775553531661.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387284016875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '72332775553531661.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387383466875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '72332775553531661.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387498107875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '72332775553531661.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387561063875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '72332775553531661.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387641976875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '72332775553531661.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387756628875891,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '77533347140630629',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387844574875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '77533347140630629.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928387987854875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '77533347140630629.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388097095875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '77533347140630629.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388111314875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '77533347140630629.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388201203875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '77533347140630629.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388371042875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '77533347140630629.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388413949875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '77533347140630629.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388566085875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '77533347140630629.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388677767875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '77533347140630629.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388701711875892,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '78840186844083825',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388833840875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '78840186844083825.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928388916206875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '78840186844083825.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389013629875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '78840186844083825.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389173543875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '78840186844083825.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389226879875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '78840186844083825.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389399166875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '78840186844083825.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389460014875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '78840186844083825.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389534727875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '78840186844083825.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389618270875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '78840186844083825.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389738658875893,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '72333216619538152',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389822889875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '72333216619538152.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928389950039875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '72333216619538152.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390057139875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '72333216619538152.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390136214875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '72333216619538152.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390254478875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '72333216619538152.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390302514875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '72333216619538152.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390488096875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '72333216619538152.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390502546875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '72333216619538152.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390648095875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '72333216619538152.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390731466875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '72333757135541211',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390828030875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '72333757135541211.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928390966658875894,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '72333757135541211.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391051870875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '72333757135541211.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391136296875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '72333757135541211.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391271344875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '72333757135541211.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391359748875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '72333757135541211.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391434449875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '72333757135541211.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391547783875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '72333757135541211.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391626284875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '72333757135541211.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391737733875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '72334735125547461',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391871471875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '72334735125547461.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928391944959875895,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '72334735125547461.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392016936875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '72334735125547461.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392182843875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '72334735125547461.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392247353875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '72334735125547461.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392392302875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '72334735125547461.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392465374875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '72334735125547461.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392572433875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '72334735125547461.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5928392680867875896,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '72334735125547461.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10415108559662250045,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'CODE_EDITOR_SETTINGS',
    p_attribute_value => '{"theme":"vs-dark","tabsInsertSpaces":true,"indentSize":"4","tabSize":"4","ruler":false,"minimap":"conditional","accessibilityMode":false,"lineNumbers":true,"whitespace":false,"showSuggestions":true,"bracketPairColorization":false}',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4102477178818739058,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '140:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4102477094808739057,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '361:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3569333991453305141,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '690:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8537264449585512335,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '212:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 56027292249620831508,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '21432',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9212529514807158089,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10488240491305114604,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P4653_R549191974509047647_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10488240565797114608,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P4653_R655680133816025797_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10469470820331642142,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10747761588515157670,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8727437712163194627,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P10011_W8662322380472048898',
    p_attribute_value => '8662325116774048904____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10665350920485560349,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P12_W8662217656917048555',
    p_attribute_value => '8662273161380048863____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9121570595487197602,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P7_W8662184586738047990',
    p_attribute_value => '8662257163069048853____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8662438917578055475,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8661829018551270565,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10882630943106182681,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8669160328386349953,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10993155113008701924,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10777327573723710562,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P970_W9766127603736090',
    p_attribute_value => '13441434626944710____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8726463239372177817,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10467689348984606026,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P51_W441077109644796807',
    p_attribute_value => '441077718682801782____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10464965004071344138,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10469071887760419077,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P78_W169333814048245920',
    p_attribute_value => '169335112738260044____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10830916977656925460,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3559871445731841748,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_GLV_HIDE_EMPTY',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4104819568571042139,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_GLV_HIDE_GLOBAL',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9211571584466128354,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '1325.99',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3595364556919352612,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '0:renderTree_container,0:dynActTree_container,0:procTree_container,0:sharedComp_container,1:grid_layout,1:search,1:help,2:peAttributesTabPanel,2:pePrintingTabPanel,2:peComponentProperties',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2520634264093600274,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 56027288317932831478,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8726463682602177842,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 56032208666967010005,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P59_SORT',
    p_attribute_value => 'UPDATED',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 56038499162091142278,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'TABLE',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10950179708598935607,
    p_user_id => 'ADMIN',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3559892487851847420,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10843503987155948259,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'F4500_1157684150404338202_SPLITTER_STATE',
    p_attribute_value => '280:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9121674589046977317,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P11_W8662199926137048270',
    p_attribute_value => '8662269063215048860____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9121773581761981980,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P14_W8662238847856048839',
    p_attribute_value => '8662294856174048879____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9121650224185974867,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_144429_P3_W8662161629079047433',
    p_attribute_value => '8662246862822048846____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 23275357537010998610,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P1235_W480642409196787876',
    p_attribute_value => '480643318916789165____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9220230837090247391,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9205860593856256425,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8670089196356136460,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4207_W47814307723191364',
    p_attribute_value => '47815210532192150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10872120270976770337,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4850_W663191354226602129',
    p_attribute_value => '663193778295677089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8703323421570817829,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P971_W9832206744401027',
    p_attribute_value => '15125345793568912____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10825762601694527758,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10467688759101605828,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P53_W34954404769221837',
    p_attribute_value => '34956410007247564____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5115204070917859908,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_ENABLE_TOOLTIPS',
    p_attribute_value => 'Y',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2509196097344271604,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '2',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8635808005502881808,
    p_user_id => '2020-1-60-118@STD.EWUBD.EDU',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_H',
    p_attribute_value => '585.99',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10955658309728001889,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP21432_P54_R10819429615240573034_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10955658472739001890,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP21432_P54_R10819434300486573037_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10950001489984929067,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_21432_P33_W10605474484613392413',
    p_attribute_value => '10714444808118475548____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10949370815347919229,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10880439759612099219,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10882215221537378183,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP21432_P54_R10819429615240573034_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10882215347785378184,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP21432_P54_R10819434300486573037_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10864232126524741890,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP_IR_21432_P33_W10605474484613392413',
    p_attribute_value => '10714444808118475548____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10864473076071750573,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP_IR_21432_P3_W10605476975670392438',
    p_attribute_value => '10841423164724091969____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10864219241187735690,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP_IR_21432_P48_W10817678022501290855',
    p_attribute_value => '10817681408145292040____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10864221944466736989,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP_IR_21432_P59_W10821081568410603987',
    p_attribute_value => '10821102194159605379____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10881931761200376878,
    p_user_id => 'CUSTOMER',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10818601122585533642,
    p_user_id => 'IMRAN',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10440658557998186226,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P17_R10440229379331180627_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10672778466461867479,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P30_R10669755321387622113_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10712351053731662949,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P33_R10711836706688417884_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10819878722807578293,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P54_R10819429615240573034_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10819878854583578295,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P54_R10819434300486573037_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10830928176092926843,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P63_R10830891856707922281_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10665077787017779536,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P10010_W56026498436022446996',
    p_attribute_value => '56026507081921447000____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8539345715979328235,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P10021_W56026523053815447005',
    p_attribute_value => '56026524939361447007____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10441347228778411137,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P11_W10437917513819137309',
    p_attribute_value => '10441346789662411135____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10441335110403410743,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P13_W10438351650192371962',
    p_attribute_value => '10441334618219410740____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10473103059679474173,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P23_W10443143895441454708',
    p_attribute_value => '10473102598148474171____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10841423606157091971,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P3_W10605476975670392438',
    p_attribute_value => '10841423164724091969____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10783584784970630670,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P43_W10783569579232628222',
    p_attribute_value => '10783584217078630668____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10817681949412292042,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P48_W10817678022501290855',
    p_attribute_value => '10817681408145292040____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10817713289776301539,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P50_W10818082986733521614',
    p_attribute_value => '10817712783237301537____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10821102625344605381,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P59_W10821081568410603987',
    p_attribute_value => '10821102194159605379____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10825116436530744123,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10440726195825190987,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P6_W10421715630157334971',
    p_attribute_value => '10440725690176190985____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10847661195785308264,
    p_user_id => 'RAFI',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10774933454442613702,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP21432_P15_R10438507537065157932_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10661345701927704275,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP21432_P29_R10657453234129456780_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10672726811653647748,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP21432_P30_R10669755321387622113_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8645192970202026219,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P10010_W56026498436022446996',
    p_attribute_value => '56026507081921447000____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10777993453075511772,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P23_W10443143895441454708',
    p_attribute_value => '10473102598148474171____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10847662567339309331,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P3_W10605476975670392438',
    p_attribute_value => '10841423164724091969____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10835512101565995861,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P48_W10817678022501290855',
    p_attribute_value => '10817681408145292040____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10847775855189087600,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10647129657661275160,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P6_W10443147879329454748',
    p_attribute_value => '10605484544159392797____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10853407201488431092,
    p_user_id => 'RUPIN',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10482098630880679963,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P10010_W56026498436022446996',
    p_attribute_value => '56026507081921447000____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10475686945340502670,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P10021_W56026523053815447005',
    p_attribute_value => '56026524939361447007____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10487360720088863846,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P11_W10437917513819137309',
    p_attribute_value => '10441346789662411135____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10475890113515722109,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P13_W10438351650192371962',
    p_attribute_value => '10441334618219410740____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10483426093837921578,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P23_W10443143895441454708',
    p_attribute_value => '10473102598148474171____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10725264459756891634,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P33_W10605474484613392413',
    p_attribute_value => '10714444808118475548_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10842115204852884172,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P3_W10605476975670392438',
    p_attribute_value => '10841423164724091969____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10842453575968912938,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P48_W10817678022501290855',
    p_attribute_value => '10817681408145292040____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10842484014491920113,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10993448742605494651,
    p_user_id => 'RUPINN',
    p_preference_name => 'APEX_IG_10817736571470311393_CURRENT_REPORT',
    p_attribute_value => '10817737420345311394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10993554352081717328,
    p_user_id => 'RUPINN',
    p_preference_name => 'FSP_IR_21432_P62_W10605475841150392427',
    p_attribute_value => '10825115978486744121____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3545352860950763030,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_21432_P10021_W56026523053815447005',
    p_attribute_value => '56026524939361447007____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10605983887254613359,
    p_user_id => 'IMRAN',
    p_preference_name => 'APEX_IG_10421715591352334971_CURRENT_REPORT',
    p_attribute_value => '10605978279730613139:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10440700224523189037,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P15_R10438507537065157932_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10661361196917704892,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP21432_P29_R10657453234129456780_SORT',
    p_attribute_value => 'sort_4_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10650588096180581632,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P6_W9590556622948347806',
    p_attribute_value => '10649731573619339404____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10669776751871624541,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P30_W10669755474541622113',
    p_attribute_value => '10669776291276624539____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10714445302133475550,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P33_W10605474484613392413',
    p_attribute_value => '10714444808118475548____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10605096250157601520,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P6_W10443145706564454727',
    p_attribute_value => '10605095794086601518____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10605485071164392799,
    p_user_id => 'IMRAN',
    p_preference_name => 'FSP_IR_21432_P6_W10443147879329454748',
    p_attribute_value => '10605484544159392797____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10777987988546510536,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP21432_P17_R10440229379331180627_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10847776183540087765,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP21432_P63_R10830891856707922281_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10647143906873276994,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P11_W10437917513819137309',
    p_attribute_value => '10441346789662411135____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10774963121432391837,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P13_W10438351650192371962',
    p_attribute_value => '10441334618219410740____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10778077650452736082,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P33_W10605474484613392413',
    p_attribute_value => '10714444808118475548____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10785130738956656962,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P43_W10783569579232628222',
    p_attribute_value => '10783584217078630668____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10847662096168308816,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P59_W10821081568410603987',
    p_attribute_value => '10821102194159605379____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10649732084906339406,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_21432_P6_W9590556622948347806',
    p_attribute_value => '10649731573619339404____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10853392681616428975,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP21432_P63_R10830891856707922281_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10842483948893920112,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P59_W10821081568410603987',
    p_attribute_value => '10821102194159605379____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10475673619531500283,
    p_user_id => 'RUPIN',
    p_preference_name => 'FSP_IR_21432_P6_W10421715630157334971',
    p_attribute_value => '10440725690176190985____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '5550444154450D0A20202020280D0A20202020202020202020202053454C45435420702E70726F647563745F69642C0D0A2020202020202020202020202020202020202020702E70726F647563745F6E616D652C0D0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(2) := '202020202020702E636C6F7468696E672C0D0A2020202020202020202020202020202020202020702E636F6C6F722C0D0A2020202020202020202020202020202020202020702E6465706172746D656E742C0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(3) := '20202020702E70726F647563745F64657461696C730D0A20202020202020202020202046524F4D20202070726F64756374732070202920700D0A53455420202020702E636C6F7468696E67203D205375627374722870726F647563745F6E616D652C2049';
wwv_flow_imp.g_varchar2_table(4) := '6E7374722870726F647563745F6E616D652C202720272C312C31292B312C20496E7374722870726F647563745F6E616D652C202720272C312C2032292B31202D20496E7374722870726F647563745F6E616D652C202720272C312C31292D2032292C0D0A';
wwv_flow_imp.g_varchar2_table(5) := '20202020702E636F6C6F72203D0D0A20202020280D0A20202020202020202020202053454C45435420632E636F6C6F720D0A20202020202020202020202046524F4D2020206A736F6E5F7461626C652028702E70726F647563745F64657461696C732C20';
wwv_flow_imp.g_varchar2_table(6) := '27242720434F4C554D4E53202820636F6C6F7220564152434841523228343030302920706174682027242E636F6C6F7572272920292063292C0D0A20202020702E6465706172746D656E74203D0D0A20202020280D0A2020202020202020202020205345';
wwv_flow_imp.g_varchar2_table(7) := '4C45435420672E6465706172746D656E740D0A20202020202020202020202046524F4D2020206A736F6E5F7461626C652028702E70726F647563745F64657461696C732C2027242720434F4C554D4E532028206465706172746D656E7420564152434841';
wwv_flow_imp.g_varchar2_table(8) := '523228343030302920706174682027242E67656E64657227292029206729';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 8651092930079922875,
    p_flow_id => 4500,
    p_name => '8651092930079922875/Populating new columns',
    p_pathid => null,
    p_filename => 'Populating new columns',
    p_title => 'Populating new columns',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2020-1-60-118@STD.EWUBD.EDU',
    p_created_on => to_date('202205091511','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093090265922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 7
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'UPDATE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093105584922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 9
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093215138922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 16
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            SELECT p.product_id, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093374834922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 50
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                    p.product_name, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093441988922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 87
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                    p.clothing, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093583627922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 120
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                    p.color, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093662208922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 150
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                    p.department, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093704672922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 185
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                    p.product_details '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093802410922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 224
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FROM   products p ) p '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651093905083922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 259
    ,p_length => 141
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'SET    p.clothing = Substr(product_name, Instr(product_name, '' '',1,1)+1, Instr(product_name, '' '',1, 2)+1 - Instr(product_name, '' '',1,1)- 2), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094045094922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 401
    ,p_length => 14
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    p.color = '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094108276922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 416
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094220073922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 423
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            SELECT c.color '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094346974922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 451
    ,p_length => 108
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FROM   json_table (p.product_details, ''$'' COLUMNS ( color VARCHAR2(4000) path ''$.colour'') ) c), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094423782922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 560
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    p.department = '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094529092922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 580
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094667169922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 587
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            SELECT g.department '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 8651094765127922877
    ,p_file_id => 8651092930079922875
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 620
    ,p_length => 111
    ,p_stmt_class => 2
    ,p_stmt_id => 88
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FROM   json_table (p.product_details, ''$'' COLUMNS ( department VARCHAR2(4000) path ''$.gender'') ) g)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 8651407729911923559,
    p_file_id => 8651092930079922875,
    p_job_id => null,
    p_run_by => '2020-1-60-118@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ZIAUL572',
    p_started => to_date('202205091511','YYYYMMDDHH24MI'),
    p_start_time => 149923560,
    p_ended => to_date('202205091511','YYYYMMDDHH24MI'),
    p_end_time => 149923568,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 8651407837649923560
    ,p_result_id => 8651407729911923559
    ,p_file_id => 8651092930079922875
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'UPDATE     (             SELECT p.product_id,                     p.product_name,                     p.clothing,                     p.color,                     p.department,                     p.product_details             FROM   products p ) p SET    p.clothing = Substr(product_name, Instr(product_name, '' '',1,1)+1, Instr(product_name, '' '',1, 2)+1 - Instr(product_name, '' '',1,1)- 2),     p.colo'||
'r =     (             SELECT c.color             FROM   json_table (p.product_details, ''$'' COLUMNS ( color VARCHAR2(4000) path ''$.colour'') ) c),     p.department =     (             SELECT g.department             FROM   json_table (p.product_details, ''$'' COLUMNS ( department VARCHAR2(4000) path ''$.gender'') ) g)'
    ,p_result_size => 0
    ,p_result_rows => 46
    ,p_msg => '46 row(s) updated.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202205091511','YYYYMMDDHH24MI')
    ,p_start_time => 149923560
    ,p_ended => to_date('202205091511','YYYYMMDDHH24MI')
    ,p_end_time => 149923568
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202205091511','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '637265617465207461626C65206F64657461696C7320280D0A6F6E6F20696E7465676572283529206E6F74206E756C6C2C0D0A706E6F20696E7465676572283529206E6F74206E756C6C2C0D0A71747920696E74656765722C0D0A7072696D617279206B';
wwv_flow_imp.g_varchar2_table(2) := '657920286F6E6F2C706E6F292C0D0A666F726569676E206B657920286F6E6F29207265666572656E636573206F72646572732C0D0A0D0A3230300D0A0D0A666F726569676E206B65792028706E6F29207265666572656E636573207061727473293B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 2520631622439599775,
    p_flow_id => 4500,
    p_name => '2520631622439599775/test',
    p_pathid => null,
    p_filename => 'test',
    p_title => 'test',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2020-1-60-118@STD.EWUBD.EDU',
    p_created_on => to_date('202204201621','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632720965599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 2
    ,p_src_line_number => 10
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520631786986599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'create table odetails ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520631804536599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 26
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ono integer(5) not null, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520631949185599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 52
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'pno integer(5) not null, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632063039599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 78
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'qty integer, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632112950599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 92
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'primary key (ono,pno), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632211947599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 116
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'foreign key (ono) references orders, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632380877599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 154
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632486247599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 156
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '200 '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632562057599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 161
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 2520632695499599776
    ,p_file_id => 2520631622439599775
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 163
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'foreign key (pno) references parts)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 2520633721694600272,
    p_file_id => 2520631622439599775,
    p_job_id => null,
    p_run_by => '2020-1-60-118@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ZIAUL572',
    p_started => to_date('202204201621','YYYYMMDDHH24MI'),
    p_start_time => 461600273,
    p_ended => to_date('202204201621','YYYYMMDDHH24MI'),
    p_end_time => 461600273,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 2520633914631600273
    ,p_result_id => 2520633721694600272
    ,p_file_id => 2520631622439599775
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'create table odetails ( ono integer(5) not null, pno integer(5) not null, qty integer, primary key (ono,pno), foreign key (ono) references orders,  200  foreign key (pno) references parts)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 2/12: ORA-00907: missing right parenthesis'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_220100", line 847'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SYS_SQL", line 1658'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_220100", line 833'||wwv_flow.LF||
'ORA-06512: at "APEX_220100.WWV_FLOW_DYNAMIC_EXEC", line 1903'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202204201621','YYYYMMDDHH24MI')
    ,p_start_time => 461600273
    ,p_ended => to_date('202204201621','YYYYMMDDHH24MI')
    ,p_end_time => 461600273
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202204201621','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554477246858935205
 ,p_command => 
'drop TABLE "EBA_CUST_PRODUCT_USES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231516','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554480084372936569
 ,p_command => 
'drop TABLE "EBA_COUNTRY_SUB_REGIONS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231516','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554483938670937866
 ,p_command => 
'drop TABLE "EBA_CUST_USE_CASE"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554486769188939516
 ,p_command => 
'drop TABLE "EBA_CUST_ACL_FEATURES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554487019165939772
 ,p_command => 
'drop TABLE "EBA_CUST_TZ_PREF"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554487775597940572
 ,p_command => 
'drop TABLE "EBA_CUST_ACTIVITIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554489004904942207
 ,p_command => 
'drop TABLE "EBA_CUST_TAGS_TYPE_SUM"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554498446771943148
 ,p_command => 
'drop TABLE "EBA_CUST_TAGS_SUM"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554787277620714042
 ,p_command => 
'drop TABLE "EBA_CUST_VIEWS_LOG"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231516','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554792487705715145
 ,p_command => 
'drop TABLE "EBA_CUST_VERIFICATIONS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231516','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554800901563715847
 ,p_command => 
'drop TABLE "EBA_CUST_ACCESS_LEVELS"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554811310211717268
 ,p_command => 
'drop TABLE "EBA_CUST_ACCESS_LEVELS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554811490771717315
 ,p_command => 
'drop TABLE "EBA_CUST_USERS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554833303063719763
 ,p_command => 
'drop TABLE "EBA_CUST_TYPE"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554833890376720005
 ,p_command => 
'drop TABLE "EBA_CUST_ACTIVITY_FILES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554880200781720973
 ,p_command => 
'drop TABLE "EBA_CUST_ACTIVITY_REF"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554888627210722639
 ,p_command => 
'drop TABLE "EBA_CUST_TAGS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554891563005723967
 ,p_command => 
'drop TABLE "EBA_CUST_ADMINISTRATORS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554892959852724594
 ,p_command => 
'drop TABLE "EBA_CUST_SALES_CHANNEL"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554896535887725750
 ,p_command => 
'drop TABLE "EBA_CUST_REF_PHASE"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554896729564725854
 ,p_command => 
'drop TABLE "EBA_CUST_REF_PHASE"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554898868418726646
 ,p_command => 
'drop TABLE "EBA_CUST_CATEGORIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3554899011256726790
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555132011536943485
 ,p_command => 
'drop TABLE "EBA_CUST_ACTIVITY_TYPES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555297349110944794
 ,p_command => 
'drop TABLE "EBA_CUST_STATUS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555300648664727608
 ,p_command => 
'drop TABLE "EBA_CUST_CLICKS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555301162783727909
 ,p_command => 
'drop TABLE "EBA_CUST_REFERENCE_TYPES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555304668166729118
 ,p_command => 
'drop TABLE "EBA_CUST_PRODUCTS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555400364487950231
 ,p_command => 
'drop TABLE "EBA_CUST_COMPETITORS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555402084929951993
 ,p_command => 
'drop TABLE "EBA_CUST_CONTACTS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555404545847953256
 ,p_command => 
'drop TABLE "EBA_CUST_COUNTRIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555404664123953416
 ,p_command => 
'drop TABLE '||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555404717399953557
 ,p_command => 
'drop TABLE "EBA_CUST_ISSUE_STATUSES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555404923957954192
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555413526391957982
 ,p_command => 
'drop TABLE "EBA_CUST_HISTORY"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555614274824729955
 ,p_command => 
'drop TABLE "EBA_CUST_NOTIFICATIONS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555657948760730635
 ,p_command => 
'drop TABLE "EBA_CUST_CONTACT_TYPES"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555658122805730713
 ,p_command => 
'drop TABLE "EBA_CUST_CONTACT_TYPES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555675993007731017
 ,p_command => 
'drop TABLE "EBA_CUST_LINKS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555765714240733359
 ,p_command => 
'drop TABLE "EBA_CUST_NOTES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555955755323734170
 ,p_command => 
'drop TABLE "EBA_CUST_ISSUES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555957298953734682
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555958129186735781
 ,p_command => 
'drop TABLE "EBA_CUST_INDUSTRIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555968166172736508
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555970232966737410
 ,p_command => 
'drop TABLE "EBA_CUST_GEOGRAPHIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555970552015737587
 ,p_command => 
'drop TABLE "EBA_CUST_CUSTOMER_REFTYPE_REF"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555977097833738299
 ,p_command => 
'drop TABLE "EBA_CUST_FILES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555981150325739397
 ,p_command => 
'drop TABLE "EBA_CUST_CUSTOMERS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555981314446739698
 ,p_command => 
'drop TABLE "EBA_CUST_FEEDBACK_TYPES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555981555047739712
 ,p_command => 
'drop TABLE "EBA_CUST_EMAIL_LOG"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556299795280962384
 ,p_command => 
'drop TABLE "EBA_CUST_FEEDBACK"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556416323646741503
 ,p_command => 
'drop TABLE "EBA_CUST_CUST_COMPETITOR_REF"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556478632855742111
 ,p_command => 
'drop TABLE "EBA_CUST_CUST_PARTNER_REF"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556500271167963475
 ,p_command => 
'drop TABLE "EBA_CUST_ERROR_LOOKUP"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556500466345964156
 ,p_command => 
'drop TABLE "EBA_CUST_ERRORS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556538907224969185
 ,p_command => 
'drop TABLE "HTMLDB_PLAN_TABLE"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556727852906743293
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556729264259743631
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556730382445744378
 ,p_command => 
'drop TABLE "EBA_CUST_IMPL_PARTNERS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556730662876744606
 ,p_command => 
'drop TABLE "EBA_CUST_IMPL_PARTNERS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556733971671745571
 ,p_command => 
'drop TABLE "EBA_CUST_PREFERENCES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556734104026745733
 ,p_command => 
'drop TABLE "EBA_CUST_PRODUCT_STATUSES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556793445796746817
 ,p_command => 
'drop TABLE "EBA_CUST_PRODUCT_FAMILIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3556794076004746883
 ,p_command => 
'drop TABLE "EBA_CUST_PRODUCT_FAMILIES"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 5098706132124326092
 ,p_command => 
'alter table "CART" modify'||wwv_flow.LF||
'("PRODUCT_NO" VARCHAR2(5) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204280518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 5108682221181586934
 ,p_command => 
'alter table "PRODUCTS" drop column'||wwv_flow.LF||
'"OLEVEL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204280602','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8521045404726260936
 ,p_command => 
'create sequence my_users_seq start with 30001 increment by 1;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205090957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8521047142417261309
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''admin'', ''admin123'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205090957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8521601147809042728
 ,p_command => 
''||wwv_flow.LF||
'select *from my_users;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205090958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8536597201125267573
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''rafi'', ''ziaul572'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8536700639227269282
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''imran'', ''imran119'', 1);'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8537015356487494091
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''rupin'', ''rupu247'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091036','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8537327146520284610
 ,p_command => 
''||wwv_flow.LF||
'insert into my_users values (my_users_seq.nextval, ''seller'', ''seller123'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8537327831840284973
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''guest'', ''guest123'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8537416226785290745
 ,p_command => 
'select *from my_users;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8650970448105132053
 ,p_command => 
'alter table "PRODUCTS" add'||wwv_flow.LF||
'("COLOR" VARCHAR2(200))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091509','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8651010654228913501
 ,p_command => 
'alter table "PRODUCTS" add'||wwv_flow.LF||
'("DEPARTMENT" VARCHAR2(200))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091510','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8651030520736916167
 ,p_command => 
'alter table "PRODUCTS" add'||wwv_flow.LF||
'("CLOTHING" VARCHAR2(200))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091510','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8651514602682148118
 ,p_command => 
'SELECT p.product_name,'||wwv_flow.LF||
'       p.unit_price,'||wwv_flow.LF||
'       p.color,'||wwv_flow.LF||
'       p.department,'||wwv_flow.LF||
'       p.clothing'||wwv_flow.LF||
'FROM   products p;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091512','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8712807146542725793
 ,p_command => 
'select * from products'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411526206694177624
 ,p_command => 
' create table order_details('||wwv_flow.LF||
'      order_id varchar2(5),'||wwv_flow.LF||
'     product_id varchar2(10),'||wwv_flow.LF||
'      oquantity number,'||wwv_flow.LF||
'      primary key (order_id, product_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121817','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411565751100953427
 ,p_command => 
' create table product_I('||wwv_flow.LF||
''||wwv_flow.LF||
'      product_id varchar2(5),'||wwv_flow.LF||
'      product_name varchar2(10),'||wwv_flow.LF||
'      unit_price number,'||wwv_flow.LF||
'      primary key (product_id)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411585520347955198
 ,p_command => 
''||wwv_flow.LF||
' create table order1_I('||wwv_flow.LF||
'      order_id varchar2(5),'||wwv_flow.LF||
'      customer_id varchar2(10),'||wwv_flow.LF||
'           order_date date,'||wwv_flow.LF||
'      primary key (order_id)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411708635367181959
 ,p_command => 
' create table Invoice_I('||wwv_flow.LF||
'      order_id varchar2(5),'||wwv_flow.LF||
'     amount number,'||wwv_flow.LF||
'      primary key (order_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121817','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411840716966967086
 ,p_command => 
'select *from product_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121818','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411911247544185006
 ,p_command => 
''||wwv_flow.LF||
'insert into product_I values(''P-001'', ''Apple'', 220);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121818','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411916954397185800
 ,p_command => 
'insert into product_I values(''P-003'', ''oil'', 500);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121818','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10412095190302970846
 ,p_command => 
'create or replace trigger order_invoice_I'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice values (orderID, 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10412223816062202203
 ,p_command => 
'create or replace trigger order_invoice'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121821','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10413028717905213422
 ,p_command => 
'create or replace trigger order_invoice'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_I values (orderID, 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121823','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10413317857988996130
 ,p_command => 
'create or replace trigger order_invoice_I'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_I values (orderID, 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121823','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10413514541168002995
 ,p_command => 
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121824','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10413771232515222766
 ,p_command => 
''||wwv_flow.LF||
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121824','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10413856968209006377
 ,p_command => 
'insert into order1_I values (''O-002'', ''C-102'', '' 08/31/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121825','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10415435022825034651
 ,p_command => 
'create or replace trigger order_invoiceI'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_I values (orderID, 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555413693707958435
 ,p_command => 
'drop TABLE "EBA_CUST_HISTORY"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3555958095572735629
 ,p_command => 
'drop  '||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3596053236836159161
 ,p_command => 
'select * from APEX_APPL_ACL_USERS;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202204231917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8521548239055038961
 ,p_command => 
''||wwv_flow.LF||
'create table my_users ('||wwv_flow.LF||
'user_id number,'||wwv_flow.LF||
'user_name varchar2(20),'||wwv_flow.LF||
'user_password varchar2(20),'||wwv_flow.LF||
'user_activated number default 0,'||wwv_flow.LF||
'primary key(user_id));'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205090957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411705092747181575
 ,p_command => 
' create table order_details_I('||wwv_flow.LF||
'      order_id varchar2(5),'||wwv_flow.LF||
'     product_id varchar2(10),'||wwv_flow.LF||
'      oquantity number,'||wwv_flow.LF||
'      primary key (order_id, product_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121817','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10411810131315963987
 ,p_command => 
'insert into product_I values(''P-002'', ''Rice'', 70);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121818','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10412818593284206737
 ,p_command => 
'create or replace trigger order_invoice'||wwv_flow.LF||
'after insert on order1_I'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice values (orderID, 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121821','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10415756723188256728
 ,p_command => 
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10415872599993039651
 ,p_command => 
'drop TRIGGER "ORDER_INVOICE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10415922834904046731
 ,p_command => 
'insert into order1_I values (''O-002'', ''C-102'', '' 08/31/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121832','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10415968362188263589
 ,p_command => 
'drop TRIGGER "ORDER_INVOICEI"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10416020179919267631
 ,p_command => 
'select *from order1_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121832','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10416066784257269757
 ,p_command => 
'select *from order1_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121832','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10416386467366049213
 ,p_command => 
'select *from invoice_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121832','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10417928984806069975
 ,p_command => 
'create or replace trigger orderdetails_invoice_I '||wwv_flow.LF||
'after insert on order_details_I'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   pid varchar2(5);'||wwv_flow.LF||
'   pPrice number;'||wwv_flow.LF||
'   newAmount number;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   pid := :NEW.product_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'   select unit_price into pPrice'||wwv_flow.LF||
'    from product_I'||wwv_flow.LF||
'     where product_id = pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'    newAmount := pPrice * :NEW.oquantity ;'||wwv_flow.LF||
''||wwv_flow.LF||
'    update invoice_I'||wwv_flow.LF||
'    set amount = amount + newAmount'||wwv_flow.LF||
'    where order_id '||
'= :NEW.order_id;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121836','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418044353935297677
 ,p_command => 
'insert into ORDER_DETAILS_I values (''O-001'', ''P-001'', 5);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418158276422298084
 ,p_command => 
'insert into order_details_I values (''O-001'', ''P-002'', 10);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418173694159299404
 ,p_command => 
'select *from order_details;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418284967769084047
 ,p_command => 
'select *from product_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418286947027084556
 ,p_command => 
'select *from invoice_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418414045227304192
 ,p_command => 
'select *from order_details_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10418460191123308203
 ,p_command => 
'insert into order_details_I values (''O-002'', ''P-002'', 10);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10471125141201670723
 ,p_command => 
'drop TABLE "ORDER_DETAILS"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205121939','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10484743486434980890
 ,p_command => 
'alter table "PRODUCT_I" add'||wwv_flow.LF||
'("IMAGE" BLOB)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205122031','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10650561040732577770
 ,p_command => 
'alter table "PRODUCT_I" drop column'||wwv_flow.LF||
'"IMAGE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10654088566359631428
 ,p_command => 
'alter table "PRODUCT_I" add'||wwv_flow.LF||
'("IMAGE_PRODUCT" BLOB)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10711298522647391866
 ,p_command => 
'create table product_II('||wwv_flow.LF||
'      product_id varchar2(10),'||wwv_flow.LF||
'      product_name varchar2(20),'||wwv_flow.LF||
'      product_price number,'||wwv_flow.LF||
'      product_quantity number,'||wwv_flow.LF||
'      file_image_product_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product_id)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10763865901553444137
 ,p_command => 
'create table customer_I('||wwv_flow.LF||
'      customer_id varchar2(10),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_Photo_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (custo'||
'mer_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131428','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10776685716568678180
 ,p_command => 
'alter table "PRODUCT_II" modify'||wwv_flow.LF||
'("PRODUCT_ID" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10776696804219680052
 ,p_command => 
'alter table "PRODUCT_II" modify'||wwv_flow.LF||
'("PRODUCT_NAME" VARCHAR2(50))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10778118285034742730
 ,p_command => 
'drop TABLE "PRODUCT_I"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10779714761351771429
 ,p_command => 
'alter table "CUSTOMER_I" modify'||wwv_flow.LF||
'("CUSTOMER_ID" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10780042848282553230
 ,p_command => 
'alter table "ORDER1_I" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131523','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10785078227495654189
 ,p_command => 
'alter table "INVOICE_I" add'||wwv_flow.LF||
'("PAYMENT__METHOD" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131540','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10793575260932849419
 ,p_command => 
'select *from product_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131612','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10793631847518854247
 ,p_command => 
''||wwv_flow.LF||
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131613','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10793645183491858738
 ,p_command => 
'alter table "ORDER1_I" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(20) NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131614','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10793847012680090892
 ,p_command => 
'drop TABLE "ORDER1_I"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131616','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10794656752867092263
 ,p_command => 
'drop TABLE "CUSTOMER_I"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131616','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10794685602713098885
 ,p_command => 
'create table customer_I('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product_id)'||
''||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131617','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10794769857833873667
 ,p_command => 
'drop TABLE "INVOICE_I"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131616','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10794773417513874632
 ,p_command => 
'drop TABLE "ORDER_DETAILS_I"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131616','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10797031482639916696
 ,p_command => 
'create table order1_II('||wwv_flow.LF||
'      order_id varchar2(20),'||wwv_flow.LF||
'      customer_id varchar2(10), '||wwv_flow.LF||
'      order_date date,'||wwv_flow.LF||
'      primary key (order_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131623','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10797473331582146874
 ,p_command => 
'create table order_details_II('||wwv_flow.LF||
'      order_id varchar2(20),'||wwv_flow.LF||
'      product_id varchar2(20),'||wwv_flow.LF||
'      quantity number,'||wwv_flow.LF||
'      primary key (order_id, product_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131625','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10797841714979932117
 ,p_command => 
' create table Invoice_II('||wwv_flow.LF||
'      order_id varchar2(20),'||wwv_flow.LF||
'      amount number,'||wwv_flow.LF||
'      payment_method varchar2(20),'||wwv_flow.LF||
'      payment_date date,'||wwv_flow.LF||
'      primary key (order_id)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131626','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10798345395061164578
 ,p_command => 
'alter table "ORDER1_II" modify'||wwv_flow.LF||
'("CUSTOMER_ID" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131628','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10798994227218177358
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131630','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10799802999362186245
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131631','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10800155425567191715
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131632','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10800224821996203648
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131634','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10800300023376974924
 ,p_command => 
'drop TRIGGER "ORDER_INVOICE_II"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131633','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801348126468212896
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
''||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801366501612992875
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
''||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801388508043995730
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131637','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801409214080997425
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(25);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131637','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801485656308215562
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(10);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
''||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
''||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801488170703216438
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
''||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
''||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
''||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131636','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10801604243401221809
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131637','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10802546966852240283
 ,p_command => 
'create or replace trigger order_invoiceII'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131640','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10804105710735038473
 ,p_command => 
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10804365132805260878
 ,p_command => 
'insert into order1_II values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10804475036371045127
 ,p_command => 
'alter table "INVOICE_II" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(20) NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10805773461004290791
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  ORDER_INVOICE '||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131649','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10805997944616291868
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  ORDER_INVOICE '||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131649','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10807277350957081323
 ,p_command => 
'alter table "INVOICE_II" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(5))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10807278569907083072
 ,p_command => 
'alter table "ORDER1_II" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(5))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10808030809499084652
 ,p_command => 
'alter table "ORDER_DETAILS_II" modify'||wwv_flow.LF||
'("ORDER_ID" VARCHAR2(5))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10808709205533316199
 ,p_command => 
''||wwv_flow.LF||
'create table customer_I('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product_id'||
')'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10808899259511102094
 ,p_command => 
''||wwv_flow.LF||
'create table customer_II('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product_i'||
'd)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10808940873125106276
 ,p_command => 
''||wwv_flow.LF||
'create table newcustomer_II('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (produc'||
't_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131655','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10809071343623115849
 ,p_command => 
'create table newcustomer_II('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product'||
'_id)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131657','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10810032080552343506
 ,p_command => 
'create table customer_II('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (customer_i'||
'd)'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131658','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10811346004487158520
 ,p_command => 
'alter table "INVOICE_II" drop column'||wwv_flow.LF||
'"PAYMENT_DATE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131704','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10811624603806166807
 ,p_command => 
'drop TRIGGER "ORDER_INVOICE_II"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10811636563349169177
 ,p_command => 
'drop TRIGGER "ORDER_INVOICE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10811754768459172051
 ,p_command => 
'drop TRIGGER "ORDER_INVOICEII"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131706','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10811978633810183449
 ,p_command => 
'create or replace trigger order_invoice_III'||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10812420483916192251
 ,p_command => 
'alter table "INVOICE_II" drop column'||wwv_flow.LF||
'"PAYMENT_METHOD"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131709','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10813236895716202534
 ,p_command => 
'insert into order1_I values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10813358340476203450
 ,p_command => 
'insert into order1_II values (''O-001'', ''C-101'', '' 08/30/2021'');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10813417046868209617
 ,p_command => 
'select *from order1_I;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131712','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10813420249277210557
 ,p_command => 
'select *from order1_II;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131712','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10813423484214211095
 ,p_command => 
'select *from invoice_II;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131712','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10815161207395460007
 ,p_command => 
'create or replace trigger orderdetails_invoice_III'||wwv_flow.LF||
'after insert on order_details_II'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   pid varchar2(20);'||wwv_flow.LF||
'   pPrice number;'||wwv_flow.LF||
'   newAmount number;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   pid := :NEW.product_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'   select product_price into pPrice'||wwv_flow.LF||
'    from product_II'||wwv_flow.LF||
'     where product_id = pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'    newAmount := pPrice * :NEW.quantity ;'||wwv_flow.LF||
''||wwv_flow.LF||
'    update invoice_II'||wwv_flow.LF||
'    set amount = amount + newAmount'||wwv_flow.LF||
'    where or'||
'der_id = :NEW.order_id;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131717','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10815344463869245340
 ,p_command => 
'insert into ORDER_DETAILS_I values (''O-001'', ''P-001'', 5);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10816437327537472971
 ,p_command => 
'select *from order1_II;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10816871013594477503
 ,p_command => 
'insert into ORDER_DETAILS_II values (''O-001'', ''P-001'', 5);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131720','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10816893403244481958
 ,p_command => 
'select *from order_details_II;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131721','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10817240107473266123
 ,p_command => 
'insert into product_II values(''P-001'', ''Apple'', 220);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131722','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10859114500971578350
 ,p_command => 
'select *from my_user'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205132023','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10859505845064363621
 ,p_command => 
'select *from my_users'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205132025','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10860426940839603757
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''customer'', ''cs123'', 1);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205132028','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10860667462244384256
 ,p_command => 
'select *from my_users'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205132028','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10936735646803722033
 ,p_command => 
'select *from my_users'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205140507','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10988071742043546254
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''harry'', ''harry123'', 1);'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205140725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10992027802947462612
 ,p_command => 
'insert into my_users values (my_users_seq.nextval, ''rupinn'', ''rupinn123'', 1);'||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205140748','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10779740356755776206
 ,p_command => 
'alter table "ORDER1_I" modify'||wwv_flow.LF||
'("CUSTOMER_ID" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131523','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10785134976757658168
 ,p_command => 
'alter table "INVOICE_I" add'||wwv_flow.LF||
'("PAYMENT_DATE" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131540','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10793661086078071623
 ,p_command => 
'select *from product_II;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131612','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10798982103532175615
 ,p_command => 
'create or replace trigger order_invoice_II'||wwv_flow.LF||
'after insert on order1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   orderID varchar2(5);'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131630','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10802713689249250758
 ,p_command => 
'create or replace trigger order_invoiceII'||wwv_flow.LF||
'after insert on ORDER1_II'||wwv_flow.LF||
'for each row '||wwv_flow.LF||
'declare'||wwv_flow.LF||
'      orderID varchar2(20);'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'     orderID := :NEW.order_id; '||wwv_flow.LF||
'     insert into invoice_II values (orderID, 0);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131642','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10808740953414317807
 ,p_command => 
'create table customer_II('||wwv_flow.LF||
'      customer_id varchar2(20),'||wwv_flow.LF||
'      customer_name varchar2(20),'||wwv_flow.LF||
'      customer_address varchar2(50),'||wwv_flow.LF||
'      customer_email varchar2(30),'||wwv_flow.LF||
'       customer_contact number,'||wwv_flow.LF||
'      file_image_customer_blob blob,'||wwv_flow.LF||
'      file_name varchar2(20),'||wwv_flow.LF||
'      file_mimetype varchar2(20),'||wwv_flow.LF||
'      file_updatedate varchar2(20),'||wwv_flow.LF||
'      file_characterset varchar2(20),'||wwv_flow.LF||
'      primary key (product_id'||
')'||wwv_flow.LF||
');'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10814458992652229708
 ,p_command => 
'create or replace trigger orderdetails_invoice_III'||wwv_flow.LF||
'after insert on order_details_II'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   pid varchar2(20);'||wwv_flow.LF||
'   pPrice number;'||wwv_flow.LF||
'   newAmount number;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   pid := :NEW.product_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'   select unit_price into pPrice'||wwv_flow.LF||
'    from product_II'||wwv_flow.LF||
'     where product_id = pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'    newAmount := pPrice * :NEW.oquantity ;'||wwv_flow.LF||
''||wwv_flow.LF||
'    update invoice_II'||wwv_flow.LF||
'    set amount = amount + newAmount'||wwv_flow.LF||
'    where orde'||
'r_id = :NEW.order_id;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10814802270062452437
 ,p_command => 
'create or replace trigger orderdetails_invoice_III'||wwv_flow.LF||
'after insert on order_details_II'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'declare'||wwv_flow.LF||
'   pid varchar2(20);'||wwv_flow.LF||
'   pPrice number;'||wwv_flow.LF||
'   newAmount number;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   pid := :NEW.product_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'   select unit_price into pPrice'||wwv_flow.LF||
'    from product_II'||wwv_flow.LF||
'     where product_id = pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'    newAmount := pPrice * :NEW.quantity ;'||wwv_flow.LF||
''||wwv_flow.LF||
'    update invoice_II'||wwv_flow.LF||
'    set amount = amount + newAmount'||wwv_flow.LF||
'    where order'||
'_id = :NEW.order_id;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10815615213294467540
 ,p_command => 
'insert into ORDER_DETAILS_II values (''O-001'', ''P-001'', 5);'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205131718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ZIAUL572');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8652962303199948372
 ,p_command => 
'CREATE OR replace PACKAGE manage_orders'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create procedure for add a product temporarily'||wwv_flow.LF||
'  PROCEDURE add_product ('||wwv_flow.LF||
'    p_product  IN NUMBER,'||wwv_flow.LF||
'    p_quantity IN NUMBER);'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create procedure for remove a product temporarily'||wwv_flow.LF||
'  PROCEDURE remove_product ('||wwv_flow.LF||
'    p_produc'||
't IN NUMBER);'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create function to get the number of items in the shopping cart'||wwv_flow.LF||
'  FUNCTION Get_quantity'||wwv_flow.LF||
'  RETURN NUMBER;'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create procedure for validate if a product exists in the shopping cart'||wwv_flow.LF||
'  FUNCTION Product_exists('||wwv_flow.LF||
'    p_product IN NUMBER)'||wwv_flow.LF||
'  RETURN NUMBER;'||wwv_flow.LF||
' '||
' --------------------------------------------------------------'||wwv_flow.LF||
'  -- create procedure for clear the cart'||wwv_flow.LF||
'  PROCEDURE clear_cart;'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create function to validate a customer'||wwv_flow.LF||
'  FUNCTION Customer_exists('||wwv_flow.LF||
'    p_customer_email IN VARCHAR2)'||wwv_flow.LF||
'  RETURN NUMBER;'||wwv_flow.LF||
'  --------------------------------------------------------------'||wwv_flow.LF||
'  -- create proced'||
'ure to insert orders'||wwv_flow.LF||
'  PROCEDURE create_order ('||wwv_flow.LF||
'    p_customer       IN VARCHAR2 DEFAULT NULL,'||wwv_flow.LF||
'    p_customer_email IN VARCHAR2,'||wwv_flow.LF||
'    p_store          IN NUMBER,'||wwv_flow.LF||
'    p_order_id       OUT orders.order_id%TYPE,'||wwv_flow.LF||
'    p_customer_id    OUT NUMBER );'||wwv_flow.LF||
'END manage_orders;'
    ,p_created_by => '2020-1-60-118@STD.EWUBD.EDU'
    ,p_created_on => to_date('202205091515','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2020-1-60-118@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202206141800','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2020-1-60-118@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202206141800','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2020-1-60-118@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202206141801','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'IMRAN',
    p_auth_method => 'custom_auth',
    p_app => 21432,
    p_owner => 'WKSP_ZIAUL572',
    p_access_date => to_date('202206141802','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_ZIAUL572';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_ZIAUL572 - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_220100
-- Exported 18:11 Tuesday June 14, 2022 by: 2020-1-60-118@STD.EWUBD.EDU
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 18:11 Tuesday June 14, 2022 by: 2020-1-60-118@STD.EWUBD.EDU
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'ZIAUL572';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
