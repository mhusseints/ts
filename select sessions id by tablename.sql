SELECT sid, serial#, status, username FROM v$session;


select * from V$ACCESS VA,v$session VS
where VS.SID=VA.SID
AND OBJECT LIKE '%PAT_PROC%'
AND STATUS = 'ACTIVE';
