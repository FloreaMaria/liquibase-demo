--liquibase formatted sql
--changeset Maria.Florea:update_last_modified_column splitStatement:true endDelimiter:~ runOnChange:true
CREATE OR REPLACE FUNCTION update_last_modified_column()
              RETURNS TRIGGER AS $$
              BEGIN
                NEW.last_modified = NOW();
                RETURN NEW;
              END;
              $$ LANGUAGE plpgsql;

~