{{ config(materialized='table', alias='MENU2') }}

SELECT *
FROM {{ source('KOYSURMIAH_LOAD_SAMPLE_DATA_FROM_S3', 'MENU') }}

WHERE MENU_TYPE IN ('Ice Cream','BBQ')