SELECT package.u_id, sender, event_type 
FROM package
RIGHT JOIN user_package
ON package.u_id = user_package.package_uid
RIGHT JOIN event
ON event.package_uid = package.u_id
WHERE user_id = ?
AND time = (
    SELECT MAX(time)
    FROM event
    WHERE package_uid = user_package.package_uid
)
