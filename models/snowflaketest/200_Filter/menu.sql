{{ config(
    materialized='table',
    schema='MY_NEW_SCHEMA',
    alias='MENU2'
) }}

SELECT * FROM MENU