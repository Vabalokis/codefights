CREATE PROCEDURE automaticNotifications()
    SELECT email
    FROM users
    WHERE role NOT in("admin", "premium")

    ORDER BY email;
