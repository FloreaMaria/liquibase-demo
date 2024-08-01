--liquibase formatted sql
--changeset Maria.Florea:update_last_modified splitStatement:true endDelimiter:~ runOnChange:true
CREATE OR REPLACE TRIGGER update_last_modified
              BEFORE UPDATE ON public."user"
              FOR EACH ROW
              EXECUTE FUNCTION update_last_modified_column();

~