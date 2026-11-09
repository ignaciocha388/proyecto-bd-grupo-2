-- =============================================
-- FUNCIÓN: FN_TOTAL_CON_IVA
-- Devuelve el monto más su IVA, usando FN_CALCULAR_IVA
-- =============================================

CREATE OR REPLACE FUNCTION FN_TOTAL_CON_IVA(
    P_MONTO NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN P_MONTO + FN_CALCULAR_IVA(P_MONTO);
END;
/
