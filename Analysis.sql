/* ================================================================================
PROJECT: Olist Brazil E-commerce Data Analysis
DATABASE: PostgreSQL
DESCRIPTION: Complete business audit including sales growth, delivery logistics, 
             payment methods, and product performance.
================================================================================
*/

-- 1. MONTHLY SALES TREND (Identifying growth and peaks)
-- This query shows how the business scaled from 2016 to 2018.
SELECT 
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(payment_value)::numeric, 2) AS monthly_revenue
FROM orders o
JOIN order_payments op ON o.order_id = op.order_id
WHERE order_status = 'delivered'
GROUP BY month
ORDER BY month;

-- 2. LOGISTICS PERFORMANCE (Delivery lead time by state)
-- Comparing the efficiency of deliveries across different Brazilian states.
SELECT 
    c.customer_state,
    ROUND(AVG(EXTRACT(DAY FROM (order_delivered_customer_date - order_purchase_timestamp)))::numeric, 2) AS avg_delivery_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE order_status = 'delivered' 
  AND order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_days ASC;

-- 3. PAYMENT METHOD SEGMENTATION (Financial preferences)
-- Analysis of how customers pay and which methods generate the most revenue.
SELECT 
    payment_type,
    COUNT(*) AS transaction_count,
    ROUND(SUM(payment_value)::numeric, 2) AS total_revenue,
    ROUND((SUM(payment_value) * 100.0 / SUM(SUM(payment_value)) OVER())::numeric, 2) AS revenue_percentage
FROM order_payments
GROUP BY payment_type
ORDER BY total_revenue DESC;

-- 4. TOP 10 PRODUCT CATEGORIES BY REVENUE
-- Identifying the most profitable product sectors in the marketplace.
SELECT 
    p.product_category_name AS category,
    COUNT(oi.order_id) AS units_sold,
    ROUND(SUM(oi.price)::numeric, 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 5. GEOGRAPHIC CUSTOMER DISTRIBUTION
-- Top 10 cities with the highest number of customers.
SELECT 
    customer_city,
    customer_state,
    COUNT(customer_id) AS customer_count
FROM customers
GROUP BY customer_city, customer_state
ORDER BY customer_count DESC
LIMIT 10;