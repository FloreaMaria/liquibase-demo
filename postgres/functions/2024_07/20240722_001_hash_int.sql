
--liquibase formatted sql
--changeset Maria.Florea:public.hash_int splitStatement:true endDelimiter:~ runOnChange:true
CREATE OR REPLACE FUNCTION public.hash_int(text)
 RETURNS integer
 LANGUAGE sql
AS $function$
 select abs(('h'||substr(md5($1),1,8))::bit(32)::int);
$function$
;

~