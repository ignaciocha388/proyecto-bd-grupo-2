-- =============================================
-- PROCEDIMIENTO: SP_ACTUALIZAR_CLIENTE
-- Actualiza el teléfono de un cliente por su ID
-- =============================================

CREATE OR REPLACE PROCEDURE SP_ACTUALIZAR_CLIENTE(
    P_ID NUMBER,
    P_TELEFONO VARCHAR2
)
AS
BEGIN
    UPDATE CLIENTES
    SET TELEFONO = P_TELEFONO
    WHERE ID_CLIENTE = P_ID;
END;
/
