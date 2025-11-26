SELECT SDT.StudentID
      ,SDT.FirstName
      ,SDT.LastName
      ,TST.TestNameJp
      ,TST.TestNameEn
      ,TRT.Score
  FROM Student    SDT
      ,TestResult TRT
      ,Test       TST
 WHERE TRT.StudentID = SDT.StudentID(+)
   AND TST.TestID    = TRT.TestID
ORDER BY SDT.StudentID
        ,TST.TestID