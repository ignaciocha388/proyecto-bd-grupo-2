-- =============================================
-- CURSOR: SP_LISTAR_PRODUCTOS
-- Recorre la tabla PRODUCTOS con un cursor explícito
-- e imprime el nombre y stock de cada producto
-- =============================================

CREATE OR REPLACE PROCEDURE SP_LISTAR_PRODUCTOS
AS
    CURSOR C_PRODUCTOS IS
        SELECT NOMBRE, STOCK
        FROM PRODUCTOS;

    V_NOMBRE PRODUCTOS.NOMBRE%TYPE;
    V_STOCK PRODUCTOS.STOCK%TYPE;
BEGIN
    OPEN C_PRODUCTOS;

    LOOP
        FETCH C_PRODUCTOS INTO V_NOMBRE, V_STOCK;

        EXIT WHEN C_PRODUCTOS%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            V_NOMBRE || ' - Stock: ' || V_STOCK
        );
    END LOOP;

    CLOSE C_PRODUCTOS;
END;
/
