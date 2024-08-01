--liquibase formatted sql
--changeset Maria.Florea:public.imp splitStatement:true endDelimiter:~ runOnChange:true
CREATE OR REPLACE FUNCTION public.imp()
 RETURNS bigint
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
  return 262;
end;
$function$
;

~