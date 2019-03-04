SELECT idcontractstatus, AVG(idcontract)  AS CNT , CASE WHEN idcontractstatus < 15 THEN 'Дела писос'
ELSE 'Дела заебос' END GHJ
FROM Contract.Contract
GROUP BY idcontractstatus WITH ROLLUP
