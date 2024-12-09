CREATE DATABASE IF NOT EXISTS postfixadmin;
CREATE DATABASE IF NOT EXISTS roundcubemail;

-- Optional: grant permissions
CREATE USER 'postfixadmin'@'%' IDENTIFIED BY 'Mail.12345';
GRANT ALL PRIVILEGES ON postfixadmin.* TO 'postfixadmin'@'%';
