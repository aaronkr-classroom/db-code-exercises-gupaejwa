1. 시스템 선택: 온라인 쇼핑몰
2. 요구사항 작성 
  1. 사용자 2명 이상: '가나다', '마바사', '아자차' 
  2. 요구사항 5개 이상 
    - 고객 정보를 저장할 수 있어야 한다. 
    - 상품 정보를 저장할 수 있어야 한다. 
    - 주문 정보를 저장할 수 있어야 한다. 
    - 특정 가격 이상의 상품을 조회할 수 있어야 한다. 
    - 특정 고객의 주문 내역을 조회할 수 있어야 한다. 
    - 주문 수량이 많은 순으로 정렬할 수 있어야 한다. 
    - 재고가 있는 상품만 조회할 수 있어야 한다.
3. 데이터 설계 
  1. 엔티티 2개 이상 
    - Customer 
    - Product 
    - Orders 
  2. 속성 정의(3개 이상) 
  Customer  
  - id 
  - name 
  - email 
  - phone 
  - city 
  - join_date 
  Product 
  - id 
  - name  
  - category 
  - price 
  - stock 
  - created_date 
  Order 
  - id 
  - customer_id 
  - product_id 
  - quantity 
  - order_date 
/*
[Entities]
- Customer
- Product
- Orders

[Customer Properties]
- id (SERIAL)
- name (TEXT)
- email (TEXT)
- phone (TEXT)
- city (TEXT)
- join_date (DATE)

[Product Properties]
- id (SERIAL)
- name (TEXT)
- category (TEXT)
- price (INT)
- stock (INT)
- created_date (DATE)

[Orders Properties]
- id (SERIAL)
- customer_id (INT)
- product_id (INT)
- quantity (INT)
- order_date (DATE)
*/

CREATE TABLE Customer (
id SERIAL PRIMARY KEY,
name TEXT,
email TEXT,
phone TEXT,
city TEXT,
join_date DATE
);

CREATE TABLE Product (
id SERIAL PRIMARY KEY,
name TEXT,
category TEXT,
price INT,
stock INT,
created_date DATE
);

CREATE TABLE Orders (
id SERIAL PRIMARY KEY,
customer_id INT, 
product_id INT,
quantity INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customer(id),
FOREIGN KEY (product_id) REFERENCES Product(id)
);

INSERT INTO Customer (name, email, phone, city, join_date)
VALUES
('가나다', 'aaaa@example.com', '010-1111-1111', '충주시', '2026-03-01'),
('마바사', 'bbbb@example.com', '010-2222-2222', '청주시', '2026-03-05'),
('아자차', 'cccc@example.com', '010-3333-3333', '대전시', '2026-03-10');

INSERT INTO Product (name, category, price, stock, created_date)
VALUES
('마우스', '전자기기', 25000, 10, '2026-01-01'),
('키보드', '전자기기', 70000, 5, '2026-02-02'),
('파우치', '패션잡화', 18000, 20, '2026-03-03'),
('텀블러', '생활용품', 12000, 0, '2026-04-04');

INSERT INTO Orders (customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 2, '2026-01-11'),
(1, 3, 1, '2026-01-12'),
(2, 2, 1, '2026-01-13'),
(3, 1, 3, '2026-01-14'),
(2, 4, 2, '2026-01-15');


--  전체 고객 조회
SELECT * FROM Customer;

-- 가격이 20000원 이상인 상품 조회
SELECT * FROM Product
WHERE price >= 20000;

-- 상품 가격 오름차순 조회
SELECT * FROM Product
ORDER BY price ASC;
