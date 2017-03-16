DELIMITER //
/* Try to create TNM database (tnmdb). */
CREATE DATABASE IF NOT EXISTS tnmdb //

/* Create TNM user */
GRANT ALL PRIVILEGES ON tnmdb.* TO tnmuser@localhost IDENTIFIED BY 'd4NaZ9j3k' //

/* Create user used for allocating identifiers in the sequence table */
GRANT ALL PRIVILEGES ON tnmdb.* TO sequser@localhost IDENTIFIED BY 'd4NaZ9j3k' //

DELIMITER ;
