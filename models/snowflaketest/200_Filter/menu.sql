{{ config(
    materialized='table',
    schema='INFORMATION_SCHEMA',   -- 👈 Your desired schema
    alias='MENU2'
) }}

SELECT * FROM MENU