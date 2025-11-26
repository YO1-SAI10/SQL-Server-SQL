SELECT SDT.StudentID
      ,SDT.FirstName
      ,SDT.LastName
      ,TST.TestNameJp
      ,TST.TestNameEn
      ,TRT.Score
  FROM Student SDT
       JOIN TestResult TRT ON TRT.StudentID = SDT.StudentID
       JOIN Test       TST ON TST.TestID = TRT.TestID
ORDER BY SDT.StudentID
        ,TST.TestID