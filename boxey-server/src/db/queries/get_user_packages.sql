SELECT package.u_id, sender, event_type 
FROM package
RIGHT JOIN recipient_package
ON package.u_id = recipient_package.package_uid
RIGHT JOIN event
ON event.package_uid = package.u_id
WHERE user_id = ?
AND time = (
    SELECT MAX(time)
    FROM event
    WHERE package_uid = recipient_package.package_uid
)
