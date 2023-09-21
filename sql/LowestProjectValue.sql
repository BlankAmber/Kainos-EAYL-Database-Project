USE db_PICASO_OdhranH;

SELECT CONCAT(Forename,' ', Surname) as `Client`, SUM(ProjectValue) as `Lowest Project Value`
	FROM Project
    JOIN Client USING (ClientID)
    GROUP BY Client
    ORDER BY ProjectValue ASC
    LIMIT 1;