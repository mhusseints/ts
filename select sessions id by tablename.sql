SELECT sid, serial#, status, username FROM v$session;


select * from V$ACCESS VA,v$session VS
where VS.SID=VA.SID
AND OBJECT LIKE '%'||:tableName||'%'
AND STATUS = 'ACTIVE';
