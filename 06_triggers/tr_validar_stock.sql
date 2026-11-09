-- =============================================
-- TRIGGER: TR_VALIDAR_STOCK
-- Impide insertar o actualizar productos con stock negativo
-- =============================================

CREATE OR REPLACE TRIGGER TR_VALIDAR_STOCK
BEFORE INSERT OR UPDATE
ON PRODUCTOS
FOR EACH ROW
BEGIN
    IF :NEW.STOCK < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'El stock no puede ser negativo'
        );
    END IF;
END;
/
