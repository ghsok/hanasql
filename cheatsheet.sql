-- **********************************************
-- workload class stuff
-- **********************************************

select WORKLOAD_CLASS_NAME as name, TOTAL_STATEMENT_MEMORY_LIMIT as memory, 
TOTAL_STATEMENT_THREAD_LIMIT as threads, PRIORITY from WORKLOAD_CLASSES where workload_class_name like 'YMKT%'

select WORKLOAD_MAPPING_NAME as mapping_name, WORKLOAD_CLASS_NAME as class_name from WORKLOAD_MAPPINGS where workload_mapping_name like 'MKT%'

select * from workload_classes
select * from WORKLOAD_MAPPINGS 

select * from sys.m_host_information

create workload mapping "MKT_GSEG_50_80_4" workload class "MKT_GSEG_50_80_4" set 'APPLICATION COMPONENT NAME' = 'MKT_GSEG_50_80_4'
alter workload mapping "MKT_GSEG_50_80_4" workload class "MKT_GSEG_50_80_4" set 'APPLICATION COMPONENT NAME' = 'MKT_GSEG_50_80_4'

CREATE WORKLOAD MAPPING "MyWorkloadMapping" WORKLOAD CLASS "MyWorkloadClass" SET 'APPLICATION NAME' = 'HDBStudio';

select * from WORKLOAD_MAPPINGS where workload_mapping_name like 'MKT%'

grant workload admin to TC_USER

select * from workload_classes
select * from WORKLOAD_MAPPINGS 

drop WORKLOAD MAPPING "MKT_GSEG_50_80_4"

select * from sapanv.t000
select * from sapanv.cuan_tc_wklda_l

-- **********************************************
-- USER statements / manipulations
-- **********************************************

GRANT "DATA ADMIN" TO TC_USER WITH ADMIN OPTION

-- user connect attempts
select * from sys.INVALID_CONNECT_ATTEMPTS 
-- eg. useful to see if user deactivated etc. :
select * from sys.users

ALTER USER SLT_USER RESET CONNECT ATTEMPTS;
ALTER USER SLT_USER drop CONNECT ATTEMPTS;
alter user SLT_USER activate user now;
alter user SLT_USER password HelloWorld NO FORCE_FIRST_PASSWORD_CHANGE ;
SELECT * FROM "SYS"."P_PRINCIPALS_" WHERE NAME = 'SLT_USER'

select * from sys.effective_privileges where user_name = 'SAP_CUAN' 

-- **********************************************
-- invalid / inactive hana content objects check
-- **********************************************

select * from "_SYS_REPO"."INACTIVE_OBJECT" where object_name = 'AT_SEARCH_INITIATIVE'
select * from "_SYS_REPO"."INACTIVE_OBJECT" where object_name = 'CA_C_CONSUMER_LOCAL_BUYING_HISTORY'
select * from "_SYS_REPO"."INACTIVE_OBJECT" where package_id like 'sap.hana-app.cuan%'
select * from "_SYS_REPO"."ACTIVE_OBJECT" where object_name in ( 'AT_SEARCH_INITIATIVE', 'AT_CURRENCY' )
select * from "_SYS_REPO"."ACTIVE_OBJECT" where package_id like 'sap.hana-app.cuan.cpred.hrf%'

-- is_valid check...
select * from SYS.VIEWS where is_valid = 'FALSE' 
select * from SYS.VIEWS where is_valid = 'FALSE' and view_name like 'sap.hana-app.cuan%'
select * from SYS.VIEWS where is_valid = 'TRUE' and view_name like 'sap.hana-app.cuan%'

select * from views where schema_name = '_SYS_BIC' and view_name like 'tmp%' and is_valid = 'FALSE'

-- inaktiv = designtime-objekt im repo geändert, aber nicht aktiviert; 
-- invalidated = runtime-objekt nicht mehr gültig, weil sich abhängige katalogobjekte geändert haben. 
