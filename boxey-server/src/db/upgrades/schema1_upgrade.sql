CREATE TABLE IF NOT EXISTS package (
  u_id text NOT NULL PRIMARY KEY,
  sender text NOT NULL
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
CREATE TABLE IF NOT EXISTS events (
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