--èCê≥ÇµÇΩÇÊÅIÅI
--èCê≥ÇµÇΩÇÊÅIÅIÇQ
--èCê≥ÇµÇΩÇÊÅIÅIÇR
SELECT SDT.StudentID
      ,SDT.FirstName
      ,SDT.LastName
      ,TST.TestNameJp
      ,TST.TestNameEn
      ,TRT.Score
  FROM Student SDT
       LEFT JOIN TestResult TRT ON TRT.StudentID = SDT.StudentID
       LEFT JOIN Test       TST ON TST.TestID = TRT.TestID
UNION
SELECT SDT.StudentID
        ,SDT.FirstName
        ,SDT.LastName
        ,TST.TestNameJp
        ,TST.TestNameEn
        ,TRT.Score
  FROM Student SDT
       LEFT JOIN TestResult TRT ON TRT.StudentID = SDT.StudentID
       LEFT JOIN Test       TST ON TST.TestID = TRT.TestID
/* ORDER BY SDT.StudentID
        ,IsNull(TST.TestID,0) */