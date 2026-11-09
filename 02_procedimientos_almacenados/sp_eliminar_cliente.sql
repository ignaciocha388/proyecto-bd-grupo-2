-- =============================================
-- PROCEDIMIENTO: SP_ELIMINAR_CLIENTE
-- Elimina un cliente por su ID
-- =============================================

CREATE OR REPLACE PROCEDURE SP_ELIMINAR_CLIENTE(
    P_ID NUMBER
)
AS
BEGIN
    DELETE FROM CLIENTES
    WHERE ID_CLIENTE = P_ID;
END;
/
