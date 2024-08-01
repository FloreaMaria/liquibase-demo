--liquibase formatted sql
--changeset Maria.Florea:public.imp_idu splitStatement:true endDelimiter:~ runOnChange:true
CREATE OR REPLACE FUNCTION public.imp_idu()
 RETURNS bigint
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
  return 261;
end;
$function$
;

~