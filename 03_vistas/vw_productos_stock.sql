-- =============================================
-- VISTA: VW_PRODUCTOS_STOCK
-- Muestra los productos con su tipo y stock disponible
-- =============================================

CREATE OR REPLACE VIEW VW_PRODUCTOS_STOCK AS
SELECT
    ID_PRODUCTO,
    NOMBRE,
    TIPO,
    STOCK
FROM PRODUCTOS;
