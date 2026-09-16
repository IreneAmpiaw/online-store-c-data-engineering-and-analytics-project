-- ============================================================
-- ONLINE STORE DATABASE SCHEMA
-- ============================================================

-- ======================
-- CLEAN RESET
-- ======================
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;

-- ======================
-- CATEGORIES
-- ======================
CREATE TABLE categories (
    category_id   SERIAL PRIMARY KEY,
    name          VARCHAR(100) NOT NULL UNIQUE,
    slug          VARCHAR(100) NOT NULL UNIQUE,
    description   TEXT,
    parent_id     INTEGER REFERENCES categories(category_id),
    is_active     BOOLEAN NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE categories IS
'Product categories with hierarchical structure';

-- ======================
-- CUSTOMERS
-- ======================
CREATE TABLE customers (
    customer_id   SERIAL PRIMARY KEY,
    email         VARCHAR(255) NOT NULL UNIQUE,
    first_name    VARCHAR(100) NOT NULL,
    last_name     VARCHAR(100) NOT NULL,
    phone         VARCHAR(20),
    city          VARCHAR(100),
    country       CHAR(2) NOT NULL DEFAULT 'GH',
    is_active     BOOLEAN NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ======================
-- PRODUCTS
-- ======================
CREATE TABLE products (
    product_id    SERIAL PRIMARY KEY,
    category_id   INTEGER NOT NULL REFERENCES categories(category_id),
    sku           VARCHAR(50) NOT NULL UNIQUE,
    name          VARCHAR(200) NOT NULL,
    description   TEXT,
    price         NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    cost          NUMERIC(10, 2) CHECK (cost >= 0),
    stock_qty     INTEGER NOT NULL DEFAULT 0 CHECK (stock_qty >= 0),
    weight_kg     NUMERIC(8,3) CHECK (weight_kg >= 0),
    is_active     BOOLEAN NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ======================
-- ORDERS
-- ======================
CREATE TABLE orders (
    order_id        SERIAL PRIMARY KEY,
    customer_id     INTEGER NOT NULL REFERENCES customers(customer_id),
    status          VARCHAR(20) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending','confirmed','shipped','delivered','cancelled','refunded')),
    total_amount    NUMERIC(12, 2) NOT NULL CHECK (total_amount >= 0),
    shipping_fee    NUMERIC(8,2) NOT NULL CHECK (shipping_fee >= 0),
    discount_amount NUMERIC(8,2) NOT NULL CHECK (discount_amount >= 0), 
    payment_method  VARCHAR(25) NOT NULL,
    shipping_city   VARCHAR(25) NOT NULL,
    ordered_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    shipped_at      TIMESTAMPTZ,
    delivered_at    TIMESTAMPTZ 
);

-- ======================
-- ORDER ITEMS
-- ======================
CREATE TABLE order_items (
    order_item_id  SERIAL PRIMARY KEY,
    order_id       INTEGER NOT NULL REFERENCES orders(order_id),
    product_id     INTEGER NOT NULL REFERENCES products(product_id),
    quantity       INTEGER NOT NULL CHECK (quantity > 0),
    unit_price     NUMERIC(10, 2) NOT NULL CHECK (unit_price >= 0),
    discount_pct   NUMERIC(5,2) NOT NULL CHECK (discount_pct >= 0),
    UNIQUE(order_id, product_id)
);

-- ======================
-- REVIEWS
-- ======================
CREATE TABLE reviews (
    review_id     SERIAL PRIMARY KEY,
    product_id    INTEGER NOT NULL REFERENCES products(product_id),
    customer_id   INTEGER NOT NULL REFERENCES customers(customer_id),
    rating        SMALLINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    title         VARCHAR(200),
    body          TEXT,
    is_verified   BOOLEAN NOT NULL DEFAULT TRUE, 
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(product_id, customer_id)
);