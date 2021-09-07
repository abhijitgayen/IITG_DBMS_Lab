DROP DATABASE IF EXISTS Graph;
CREATE DATABASE Graph;
USE Graph;
CREATE TABLE nodes(
 x INT NOT NULL,
 y INT NOT NULL,
CONSTRAINT NODE_ID PRIMARY KEY(x,y)
);
CREATE TABLE edges (
 wt INTEGER NOT NULL,
 sx INT NOT NULL,
 sy INT NOT NULL,
 ex INT NOT NULL,
 ey INT NOT NULL,
CONSTRAINT edge_ID PRIMARY KEY(sx,sy,ex,ey),
FOREIGN KEY(sx,sy) REFERENCES nodes(x,y)on delete  CASCADE on UPDATE CASCADE,
FOREIGN KEY(ex,ey) REFERENCES nodes(x,y)on delete  CASCADE on UPDATE CASCADE
);