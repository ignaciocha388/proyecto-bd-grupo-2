-- =============================================
-- FUNCIÓN: FN_CALCULAR_IVA
-- Calcula el IVA (13%) de un monto
-- =============================================

CREATE OR REPLACE FUNCTION FN_CALCULAR_IVA(
    P_MONTO NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN P_MONTO * 0.13;
END;
/
