﻿IF OBJECT_ID('finance.asset_selector_view') IS NOT NULL
DROP VIEW finance.asset_selector_view;

GO

CREATE VIEW finance.asset_selector_view
AS
SELECT 
    finance.account_scrud_view.account_id AS asset_id,
    finance.account_scrud_view.account_name AS asset_name
FROM finance.account_scrud_view
WHERE account_master_id BETWEEN 10000 AND 14999;

GO
