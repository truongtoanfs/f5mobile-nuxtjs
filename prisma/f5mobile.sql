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
  series_img VARCHAR(255) NOT NULL,
  category_id BIGINT REFERENCES category (id)
);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 14', '/series/iphone-14', '/images/iphone14/avatar_iPhone 14.webp', 1);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 14 plus', '/series/iphone-14plus', '/images/iphone14/avatar_iphone-14-plus.webp', 1);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 14 pro', '/series/iphone-14pro', '/images/iphone14/avatar_iphone-14-pro-max.webp', 1);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 14 promax', '/series/iphone-14promax', '/images/iphone14/avatar_iphone-14-pro.webp', 1);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 13', '/series/iphone-13', '', 2);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 13 mini', '/series/iphone-13mini', '', 2);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 13 pro', '/series/iphone-13pro', '', 2);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 13 promax', '/series/iphone-13promax', '', 2);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 12', '/series/iphone-12', '', 3);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 12 mini', '/series/iphone-12mini', '', 3);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 12 pro', '/series/iphone-12pro', '', 3);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 12 promax', '/series/iphone-12promax', '', 3);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 11', '/series/iphone-11', '', 4);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 11 pro', '/series/iphone-11pro', '', 4);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 11 promax', '/series/iphone-11promax', '', 4);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone X', '/series/iphone-x', '', 5);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone Xs', '/series/iphone-xs', '', 5);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone XS Max', '/series/iphone-xsmax', '', 5);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone XR', '/series/iphone-xr', '', 5);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 7', '/series/iphone-7', '', 6);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 7 Plus', '/series/iphone-7-plus', '', 6);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 8', '/series/iphone-8', '', 6);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Iphone 8 Plus', '/series/iphone-8-plus', '', 6);

INSERT INTO series (series, link, series_img, category_id) VALUES ('Ipad air', '/series/ipad-air', '', 7);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Ipad mini', '/series/ipad-mini', '', 7);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Ipad pro', '/series/ipad-pro', '', 7);
INSERT INTO series (series, link, series_img, category_id) VALUES ('Ipad gen', '/series/ipad-gen', '', 7);

CREATE TABLE series_color (
  series_id BIGINT REFERENCES series (id),
  color_id BIGINT REFERENCES color (id)
);

INSERT INTO series_color (series_id, color_id) VALUES (1, 1);
INSERT INTO series_color (series_id, color_id) VALUES (1, 2);
INSERT INTO series_color (series_id, color_id) VALUES (1, 3);
INSERT INTO series_color (series_id, color_id) VALUES (1, 5);
INSERT INTO series_color (series_id, color_id) VALUES (1, 6);

INSERT INTO series_color (series_id, color_id) VALUES (2, 1);
INSERT INTO series_color (series_id, color_id) VALUES (2, 2);
INSERT INTO series_color (series_id, color_id) VALUES (2, 3);
INSERT INTO series_color (series_id, color_id) VALUES (2, 5);
INSERT INTO series_color (series_id, color_id) VALUES (2, 6);

INSERT INTO series_color (series_id, color_id) VALUES (3, 3);
INSERT INTO series_color (series_id, color_id) VALUES (3, 4);
INSERT INTO series_color (series_id, color_id) VALUES (3, 5);
INSERT INTO series_color (series_id, color_id) VALUES (3, 6);

INSERT INTO series_color (series_id, color_id) VALUES (4, 3);
INSERT INTO series_color (series_id, color_id) VALUES (4, 4);
INSERT INTO series_color (series_id, color_id) VALUES (4, 5);
INSERT INTO series_color (series_id, color_id) VALUES (4, 6);

CREATE TABLE series_status (
  series_id BIGINT REFERENCES series (id),
  status_id BIGINT REFERENCES status (id)
);

INSERT INTO series_status (series_id, status_id) VALUES (1, 1);
INSERT INTO series_status (series_id, status_id) VALUES (2, 1);
INSERT INTO series_status (series_id, status_id) VALUES (3, 1);
INSERT INTO series_status (series_id, status_id) VALUES (4, 1);

CREATE TABLE series_storage (
  series_id BIGINT REFERENCES series (id),
  storage_id BIGINT REFERENCES storage (id)
);

INSERT INTO series_storage (series_id, storage_id) VALUES (1, 2);
INSERT INTO series_storage (series_id, storage_id) VALUES (1, 3);


INSERT INTO series_storage (series_id, storage_id) VALUES (2, 2);
INSERT INTO series_storage (series_id, storage_id) VALUES (2, 3);

INSERT INTO series_storage (series_id, storage_id) VALUES (3, 2);
INSERT INTO series_storage (series_id, storage_id) VALUES (3, 3);

INSERT INTO series_storage (series_id, storage_id) VALUES (4, 2);
INSERT INTO series_storage (series_id, storage_id) VALUES (4, 3);


CREATE TABLE product (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  new_price NUMERIC,
  old_price NUMERIC,
  total BIGINT NOT NULL,
  sold BIGINT NOT NULL,
  description VARCHAR(1000),
  img_url VARCHAR(255) NOT NULL,
  category_id BIGINT REFERENCES category (id),
  series_id BIGINT REFERENCES series (id),
  color_id BIGINT REFERENCES color (id),
  storage_id BIGINT REFERENCES storage (id),
  status_id BIGINT REFERENCES status (id)
);

INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 256GB - 100% Fullbox VN/A', NULL, NULL, 5, 1, '', '/images/iphone14/iPhone 14 den.webp', 1, 1, 3, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 256GB - 100% Fullbox VN/A', 19000000, NULL, 8, 6, '', '/images/iphone14/iPhone 14 trang.webp', 1, 1, 5, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 128GB - 100% Fullbox VN/A', 19000000, NULL, 20, 6, '', '/images/iphone14/iPhone 14 do.webp', 1, 1, 2, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 128GB - 100% Fullbox VN/A', 19000000, NULL, 15, 1, '', '/images/iphone14/iPhone 14 den.webp', 1, 1, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 128GB - 100% Fullbox VN/A', 19000000, NULL, 12, 0, '', '/images/iphone14/iPhone 14 tim.webp', 1, 1, 6, 3, 1);

INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 17500000, NULL, 40, 6, '', '/images/iphone14/iPhone 14 Plus tim.webp', 1, 2, 6, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 17500000, NULL, 21, 18, '', '/images/iphone14/iPhone 14 Plus do.webp', 1, 2, 2, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 17500000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Plus trang.webp', 1, 2, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 17500000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Plus tim.webp', 1, 2, 6, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 21300000, NULL, 40, 6, '', '/images/iphone14/iPhone 14 Plus xanh.webp', 1, 2, 1, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 21300000, NULL, 45, 1, '', '/images/iphone14/iPhone 14 Plus den.webp', 1, 2, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 21300000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Plus trang.webp', 1, 2, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple', 21300000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Plus tim.webp', 1, 2, 6, 3, 1);

INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 21500000, NULL, 45, 1, '', '/images/iphone14/iPhone 14 Pro den.webp', 1, 3, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 21500000, NULL, 21, 18, '', '/images/iphone14/iPhone 14 Pro vang.webp', 1, 3, 4, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 21500000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Pro trang.webp', 1, 3, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 21500000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Pro tim.webp', 1, 3, 6, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 22500000, NULL, 45, 1, '', '/images/iphone14/iPhone 14 Pro den.webp', 1, 3, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 22500000, NULL, 21, 18, '', '/images/iphone14/iPhone 14 Pro vang.webp', 1, 3, 4, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 22500000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Pro trang.webp', 1, 3, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 22500000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Pro tim.webp', 1, 3, 6, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 256GB- 100% Fullbox VN/A', 26400000, NULL, 45, 1, '', '/images/iphone14/iPhone 14 Pro den.webp', 1, 3, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 256GB- 100% Fullbox VN/A', 26400000, NULL, 21, 18, '', '/images/iphone14/iPhone 14 Pro vang.webp', 1, 3, 4, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 256GB- 100% Fullbox VN/A', 26400000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Pro trang.webp', 1, 3, 5, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 256GB- 100% Fullbox VN/A', 26400000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Pro tim.webp', 1, 3, 6, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 24200000, NULL, 45, 1, '', '/images/iphone14/iPhone 14 Pro den.webp', 1, 3, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 24200000, NULL, 21, 18, '', '/images/iphone14/iPhone 14 Pro vang.webp', 1, 3, 4, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 24200000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Pro trang.webp', 1, 3, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 24200000, NULL, 13, 3, '', '/images/iphone14/iPhone 14 Pro tim.webp', 1, 3, 6, 3, 1);

INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 23900000, NULL, 45, 1, '', '/images/iphone14/ip-14-pro-max-den-1.webp', 1, 4, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 23900000, NULL, 21, 18, '', '/images/iphone14/ip-14-pro-max-vang-1.webp', 1, 4, 4, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 23900000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Promax trang.webp', 1, 4, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A', 23900000, NULL, 13, 3, '', '/images/iphone14/ip-14-pro-max-tim-1.webp', 1, 4, 6, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 256GB- 100% Fullbox VN/A', 29300000, NULL, 21, 18, '', '/images/iphone14/ip-14-pro-max-vang-1.webp', 1, 4, 4, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 256GB- 100% Fullbox VN/A', 29300000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Promax trang.webp', 1, 4, 5, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 256GB- 100% Fullbox VN/A', 29300000, NULL, 13, 3, '', '/images/iphone14/ip-14-pro-max-tim-1.webp', 1, 4, 6, 2, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB- 100% Fullbox VN/A', 26400000, NULL, 45, 1, '', '/images/iphone14/ip-14-pro-max-den-1.webp', 1, 4, 3, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB- 100% Fullbox VN/A', 26400000, NULL, 21, 18, '', '/images/iphone14/ip-14-pro-max-vang-1.webp', 1, 4, 4, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB- 100% Fullbox VN/A', 26400000, NULL, 12, 2, '', '/images/iphone14/iPhone 14 Promax trang.webp', 1, 4, 5, 3, 1);
INSERT INTO product (name, new_price, old_price, total, sold, description, img_url, category_id, series_id, color_id, storage_id, status_id)
VALUES ('iPhone 14 Promax 128GB- 100% Fullbox VN/A', 26400000, NULL, 413, 3, '', '/images/iphone14/ip-14-pro-max-tim-1.webp', 1, 4, 6, 3, 1);


SELECT * FROM color WHERE id IN (SELECT color_id FROM series_color WHERE series_color.series_id in (SELECT id FROM series WHERE series.category_id = 1));

SELECT * fROM status
INNER JOIN series_status ON status.id = series_status.status_id
INNER JOIN series ON series.id = series_status.status_id
WHERE series.category_id = 1;