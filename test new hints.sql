SELECT idcontractstatus, AVG(idcontract)  AS CNT , CASE WHEN idcontractstatus < 15 THEN 'Дела foo'
ELSE 'Дела bar' END Hint
FROM Contract.Contract
GROUP BY idcontractstatus WITH ROLLUP
