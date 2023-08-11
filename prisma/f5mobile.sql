CREATE TABLE color (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  color VARCHAR(20) NOT NULL,
  value VARCHAR(20) NOT NULL
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
  value VARCHAR(20) NOT NULL
);

INSERT INTO storage (storage, value) VALUES ('512 GB', 512);
INSERT INTO storage (storage, value) VALUES ('256 GB', 256);
INSERT INTO storage (storage, value) VALUES ('128 GB', 128);
INSERT INTO storage (storage, value) VALUES ('64 GB', 64);

CREATE TABLE status (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  status VARCHAR(20) NOT NULL,
  value VARCHAR(20) NOT NULL
);

INSERT INTO status (status, value) VALUES ('Mới 100%', 100);
INSERT INTO status (status, value) VALUES ('Likenew 99%', 99);

CREATE TABLE category (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  category VARCHAR(50) NOT NULL,
  link VARCHAR(50) NOT NULL
);

INSERT INTO category (category, link) VALUES ('14 Series', '/categories/14-14plus-14pro-14promax');
INSERT INTO category (category, link) VALUES ('13 Series', '/categories/13-13mini-13pro-13promax');
INSERT INTO category (category, link) VALUES ('12 Series', '/categories/12-12mini-12pro-12promax');
INSERT INTO category (category, link) VALUES ('11 Series', '/categories/11-11pro-11promax');
INSERT INTO category (category, link) VALUES ('X Series', '/categories/x-xs-xsmax-xr');
INSERT INTO category (category, link) VALUES ('More Iphone...', '/categories/7-8');
INSERT INTO category (category, link) VALUES ('Ipad', '/categories/ipad');
INSERT INTO category (category, link) VALUES ('Apple watch', '/categories/apple-watch');
INSERT INTO category (category, link) VALUES ('Airpods/ phụ kiện', '/categories/accessory');

CREATE TABLE series (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  series VARCHAR(50) NOT NULL,
  link VARCHAR(50) NOT NULL,
  category_id BIGINT REFERENCES category (id)
);

INSERT INTO series (series, link, category_id) VALUES ('Iphone 14', '/series/iphone-14', 1);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 14 plus', '/series/iphone-14plus', 1);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 14 pro', '/series/iphone-14pro', 1);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 14 promax', '/series/iphone-14promax', 1);

INSERT INTO series (series, link, category_id) VALUES ('Iphone 13', '/series/iphone-13', 2);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 13 mini', '/series/iphone-13mini', 2);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 13 pro', '/series/iphone-13pro', 2);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 13 promax', '/series/iphone-13promax', 2);

INSERT INTO series (series, link, category_id) VALUES ('Iphone 12', '/series/iphone-12', 3);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 12 mini', '/series/iphone-12mini', 3);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 12 pro', '/series/iphone-12pro', 3);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 12 promax', '/series/iphone-12promax', 3);

INSERT INTO series (series, link, category_id) VALUES ('Iphone 11', '/series/iphone-11', 4);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 11 pro', '/series/iphone-11pro', 4);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 11 promax', '/series/iphone-11promax', 4);

INSERT INTO series (series, link, category_id) VALUES ('Iphone X', '/series/iphone-x', 4);
INSERT INTO series (series, link, category_id) VALUES ('Iphone Xs', '/series/iphone-xs', 4);
INSERT INTO series (series, link, category_id) VALUES ('Iphone XS Max', '/series/iphone-xsmax', 4);
INSERT INTO series (series, link, category_id) VALUES ('Iphone XR', '/series/iphone-xr', 4);

INSERT INTO series (series, link, category_id) VALUES ('Iphone 7', '/series/iphone-7', 5);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 7 Plus', '/series/iphone-7-plus', 5);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 8', '/series/iphone-8', 5);
INSERT INTO series (series, link, category_id) VALUES ('Iphone 8 Plus', '/series/iphone-8-plus', 5);

INSERT INTO series (series, link, category_id) VALUES ('Ipad air', '/series/ipad-air', 6);
INSERT INTO series (series, link, category_id) VALUES ('Ipad mini', '/series/ipad-mini', 6);
INSERT INTO series (series, link, category_id) VALUES ('Ipad pro', '/series/ipad-pro', 6);
INSERT INTO series (series, link, category_id) VALUES ('Ipad gen', '/series/ipad-gen', 6);