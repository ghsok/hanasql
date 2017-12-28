-- workload class stuff
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
