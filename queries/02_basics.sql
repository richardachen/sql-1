-- SELECT S.StudentID, S.FirstName, S.LastName,
-- 	C.CollegeID, C.Name
-- FROM Students S
-- INNER JOIN Colleges C
-- ON S.CollegeID = C.CollegeID

-- SELECT S1.StudentID, S1.FirstName, S1.LastName, S1.FriendID, concat(S2.FirstName, ' ', S2.LastName) AS Buddy
-- FROM Students S1
-- INNER JOIN Students S2
-- ON S1.FriendID = S2.StudentID

-- SELECT B.BookID, B.Title, B.PubDate, CB.CollegeID, CB.BookID, Col.CollegeID, Col.Name, Col.Students, Col.City, Col.Region, Col.Country
SELECT *
FROM Books B
JOIN CollegeBooks CB
ON B.BookID = CB.BookID
JOIN Colleges Col
ON CB.CollegeID = Col.CollegeID