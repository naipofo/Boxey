SELECT package.u_id, sender, event_type 
FROM package
RIGHT JOIN user_package
ON package.u_id = user_package.package_uid
RIGHT JOIN events
ON events.package_uid = package.u_id
WHERE user_id = ?
AND time = (
    SELECT MAX(time)
    FROM events
    WHERE package_uid = user_package.package_uid
)
