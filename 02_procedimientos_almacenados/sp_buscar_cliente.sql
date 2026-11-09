-- =============================================
-- PROCEDIMIENTO: SP_BUSCAR_CLIENTE
-- Devuelve los datos de un cliente por su ID
-- mediante un cursor de referencia (SYS_REFCURSOR)
-- =============================================

CREATE OR REPLACE PROCEDURE SP_BUSCAR_CLIENTE(
    P_ID NUMBER,
    CUR_CLIENTE OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN CUR_CLIENTE FOR
    SELECT *
    FROM CLIENTES
    WHERE ID_CLIENTE = P_ID;
END;
/
