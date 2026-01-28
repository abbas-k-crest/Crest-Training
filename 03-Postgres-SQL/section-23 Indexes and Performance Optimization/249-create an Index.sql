-- Index

-- Create index

CREATE INDEX idx_products_unit_price ON products (unit_price);

CREATE INDEX idx_products_product_name ON products (product_name)

-- Multiple columns

CREATE INDEX idx_products_product_id_unit_price ON products (product_id, unit_price);