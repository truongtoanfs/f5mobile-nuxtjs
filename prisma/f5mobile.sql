CREATE TABLE color (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  color VARCHAR(20) NOT NULL,
  value VARCHAR(20) NOT NULL,
);

INSERT INTO color (color, value) VALUES ('Xanh Blue', 'blue');
INSERT INTO color (color, value) VALUES ('Đỏ', 'red');
INSERT INTO color (color, value) VALUES ('Đen', 'black');
INSERT INTO color (color, value) VALUES ('Vàng', 'yellow');
INSERT INTO color (color, value) VALUES ('Trắng', 'white');
INSERT INTO color (color, value) VALUES ('Tím', 'purple');

CREATE TABLE storage (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  storage VARCHAR(20) NOT NULL,
  value VARCHAR(20) NOT NULL,
);

INSERT INTO storage (storage, value) VALUES ('512 GB', 512);
INSERT INTO storage (storage, value) VALUES ('256 GB', 256);
INSERT INTO storage (storage, value) VALUES ('128 GB', 128);
INSERT INTO storage (storage, value) VALUES ('64 GB', 64);

CREATE TABLE status (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  status VARCHAR(20) NOT NULL,
  value VARCHAR(20) NOT NULL,
);

INSERT INTO status (status, value) VALUES ('Mới 100%', 100);
INSERT INTO status (status, value) VALUES ('Likenew 99%', 99);