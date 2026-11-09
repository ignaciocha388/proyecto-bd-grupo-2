# Proyecto Base de Datos – Oracle PL/SQL

Sistema de gestión de clientes, productos y pedidos en Oracle Database (XE).

## Conexión

| Dato | Valor |
|---|---|
| URL JDBC | `jdbc:oracle:thin:@localhost:1521/XEPDB1` |
| Usuario | `CALLIZO` |

## Estructura del repositorio

| Carpeta | Contenido | Rúbrica |
|---|---|---|
| `01_tablas/` | CLIENTES, PRODUCTOS, PEDIDOS, DETALLE_PEDIDO | Base del modelo |
| `02_procedimientos_almacenados/` | SP_INSERTAR_CLIENTE, SP_ACTUALIZAR_CLIENTE, SP_ELIMINAR_CLIENTE, SP_BUSCAR_CLIENTE | 2.5% |
| `03_vistas/` | VW_PRODUCTOS_STOCK | 2.5% |
| `04_funciones/` | FN_CALCULAR_IVA, FN_TOTAL_CON_IVA | 2.5% |
| `05_cursores/` | SP_LISTAR_PRODUCTOS (cursor explícito) | 2.5% |
| `06_triggers/` | TR_VALIDAR_STOCK | Extra |

> `SP_BUSCAR_CLIENTE` también usa un cursor de referencia (`SYS_REFCURSOR`).

## Orden de ejecución

1. `01_tablas/tablas.sql`
2. `04_funciones/` (FN_CALCULAR_IVA antes que FN_TOTAL_CON_IVA)
3. `02_procedimientos_almacenados/`
4. `03_vistas/`
5. `05_cursores/`
6. `06_triggers/`

## Ejemplos de uso

```sql
SET SERVEROUTPUT ON;

-- Procedimientos
EXEC SP_INSERTAR_CLIENTE('Ana Pérez', '8888-8888', 'ana@correo.com', 'San José');
EXEC SP_ACTUALIZAR_CLIENTE(1, '7777-7777');

-- Vista
SELECT * FROM VW_PRODUCTOS_STOCK;

-- Funciones
SELECT FN_CALCULAR_IVA(1000), FN_TOTAL_CON_IVA(1000) FROM DUAL;

-- Cursor
EXEC SP_LISTAR_PRODUCTOS;
```
