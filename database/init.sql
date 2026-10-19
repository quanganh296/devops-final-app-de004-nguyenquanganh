-- =============================================================================
--  database/init.sql - Khởi tạo dữ liệu cho đề 004: Quản lý kho hàng
--  MySQL tự chạy file này ở LẦN KHỞI ĐỘNG ĐẦU TIÊN khi được mount vào
--  /docker-entrypoint-initdb.d/  (database và user do biến MYSQL_* tạo sẵn)
-- =============================================================================
SET NAMES utf8mb4;

USE ptit_inventory_db;

CREATE TABLE IF NOT EXISTS items (
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    sku             VARCHAR(30) NOT NULL,
    item_name       VARCHAR(150) NOT NULL,
    warehouse       VARCHAR(50) NOT NULL,
    quantity        INT NOT NULL,
    unit            VARCHAR(20) NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO items (sku, item_name, warehouse, quantity, unit) VALUES
    ('SSD-512-NV', 'Ổ cứng SSD NVMe 512GB', 'Kho Hà Nội', 120, 'Cái'),
    ('RAM-16-D4', 'RAM DDR4 16GB', 'Kho Hà Nội', 85, 'Thanh'),
    ('CAB-CAT6-305', 'Cáp mạng Cat6 305m', 'Kho Đà Nẵng', 40, 'Cuộn'),
    ('SW-24P-GB', 'Switch 24 port Gigabit', 'Kho TP.HCM', 18, 'Cái'),
    ('UPS-1KVA', 'Bộ lưu điện 1KVA', 'Kho Hà Nội', 25, 'Bộ'),
    ('MON-24-FHD', 'Màn hình 24 inch Full HD', 'Kho TP.HCM', 60, 'Cái'),
    ('KB-USB-STD', 'Bàn phím USB văn phòng', 'Kho Đà Nẵng', 200, 'Cái'),
    ('RACK-42U', 'Tủ rack 42U', 'Kho Hà Nội', 6, 'Tủ');
