CREATE TABLE IF NOT EXISTS package (
  u_id text NOT NULL PRIMARY KEY,
  sender text NOT NULL,
  destination_id text NOT NULL,
  FOREIGN KEY(destination_id) REFERENCES locker(id)
);
CREATE TABLE IF NOT EXISTS user (
  id integer PRIMARY KEY AUTOINCREMENT,
  nickname text NOT NULL
);
CREATE TABLE IF NOT EXISTS user_package (
  user_id integer NOT NULL,
  package_uid text NOT NULL,
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(package_uid) REFERENCES package(u_id),
  PRIMARY KEY(user_id, package_uid)
);
CREATE TABLE IF NOT EXISTS event (
  u_id text NOT NULL PRIMARY KEY,
  package_uid text NOT NULL,
  event_type text NOT NULL,
  time text NOT NULL,
  FOREIGN KEY(package_uid) REFERENCES package(u_id)
);
CREATE TABLE IF NOT EXISTS session (
  user_id integer NOT NULL,
  secret text NOT NULL,
  FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS locker (
  id text NOT NULL PRIMARY KEY,
  location text NOT NULL,
  location_human text
);
CREATE TABLE IF NOT EXISTS space (
  id integer PRIMARY KEY AUTOINCREMENT,
  locker_id text NOT NULL,
  size integer NOT NULL,
  FOREIGN KEY(locker_id) REFERENCES locker(id)
);
CREATE TABLE IF NOT EXISTS filled_space (
  space_id integer NOT NULL,
  package_uid text NOT NULL,
  unlock_code text NOT NULL,
  FOREIGN KEY(space_id) REFERENCES space(id),
  FOREIGN KEY(package_uid) REFERENCES package(u_id)
);