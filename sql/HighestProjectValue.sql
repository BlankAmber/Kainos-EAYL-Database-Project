USE db_PICASO_OdhranH;

SELECT CONCAT(Forename,' ', Surname) as `Client`, SUM(ProjectValue) as `Highest Project Value`
	FROM Project
    JOIN Client USING (ClientID)
    GROUP BY Client
    ORDER BY ProjectValue DESC
    LIMIT 1;