USE db_PICASO_OdhranH;

SELECT CONCAT(Forename,' ', Surname) as `Client`, AVG(ProjectValue) as `Average Project Value`
	FROM Project
    JOIN Client USING (ClientID)
    GROUP BY Client;