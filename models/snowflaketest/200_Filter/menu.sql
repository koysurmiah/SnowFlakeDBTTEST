{{ config(materialized='table', alias='MENU2') }}

CREATE OR REPLACE TABLE MENU AS (

SELECT *
FROM {{ source('KOYSURMIAH_LOAD_SAMPLE_DATA_FROM_S3', 'MENU') }})