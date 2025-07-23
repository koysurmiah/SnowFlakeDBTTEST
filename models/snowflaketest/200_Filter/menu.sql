{{ config(
    materialized='table',
    schema='INFORMATION_SCHEMA',
    alias='MENU2'
) }}

SELECT * FROM MENU