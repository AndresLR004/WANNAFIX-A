INSERT INTO statuses (id, name, slug) VALUES
(1, 'Activo', 'activo'),
(2, 'Inactivo', 'inactivo');
UPDATE SQLITE_SEQUENCE SET seq = 1 WHERE name = 'statuses';

INSERT INTO categories (name, slug) VALUES
('Electrònica', 'electronica'),
('Roba', 'roba'),
('Joguines', 'joguines'),
('Pintura', 'pintura'),
('Limpieza', 'limpieza'),
('Mecánica', 'mecanica'),
('Otro', 'otro');
UPDATE SQLITE_SEQUENCE SET seq = 7 WHERE name = 'categories';

-- Les contrasenyes són patata
INSERT INTO users (id, name, email, role, verified, password) VALUES
(1, 'Joan Pérez', 'joan@example.com', 'admin', TRUE, 'scrypt:32768:8:1$lwqNpblQ9OiKBfeM$4d63ebdf494cc8e363f14494bca1c5246f6689b45904431f69fbcb535b7e41bd012e9b41c850125d7f8b790cb320579a46427b69eda892517669eba0244b77b4'),
(2, 'Anna García', 'anna@example.com', 'moderator', TRUE, 'scrypt:32768:8:1$lwqNpblQ9OiKBfeM$4d63ebdf494cc8e363f14494bca1c5246f6689b45904431f69fbcb535b7e41bd012e9b41c850125d7f8b790cb320579a46427b69eda892517669eba0244b77b4'),
(3, 'Elia Rodríguez', 'elia@example.com', 'wanner', TRUE, 'scrypt:32768:8:1$lwqNpblQ9OiKBfeM$4d63ebdf494cc8e363f14494bca1c5246f6689b45904431f69fbcb535b7e41bd012e9b41c850125d7f8b790cb320579a46427b69eda892517669eba0244b77b4'),
(4, 'Kevin Salardú', 'kevin@example.com', 'wanner', TRUE, 'scrypt:32768:8:1$lwqNpblQ9OiKBfeM$4d63ebdf494cc8e363f14494bca1c5246f6689b45904431f69fbcb535b7e41bd012e9b41c850125d7f8b790cb320579a46427b69eda892517669eba0244b77b4');
UPDATE SQLITE_SEQUENCE SET seq = 4 WHERE name = 'users';

-- Inserir dades fictícies a la taula products
INSERT INTO services (id, title, description, photo, price, duration_hours, duration_days, category_id, status_id) VALUES
(1,'Reparación de fontanería', 'Reparación de grifos y cañerías', 'fontaneria.jpg', 50.00, 2, 0, 1, 1),
(2, 'Instalación eléctrica', 'Instalación y reparación de circuitos eléctricos', 'electricidad.jpg', 80.00, 0, 1, 2, 1),
(3, 'Pintura de interiores', 'Pintura de paredes y techos', 'pintura.jpg', 120.00, 0, 3, 3, 1),
(4, 'Limpieza de hogar', 'Limpieza profunda de toda la casa', 'limpieza.jpg', 60.00, 4, 0, 4, 1),
(5, 'Reparación de electrodomésticos', 'Reparación de lavadoras, neveras, etc.', 'electrodomesticos.jpg', 70.00, 0, 2, 1, 1);