-- Phân tích: 
-- Lỗi ở đây là do sum(total_price) không phải là một thuộc tính trong bảng nên khi ta dùng nó với where thì gây ra sai 

-- Sửa code: 
SELECT city, SUM(total_price) AS revenue
FROM Bookings
WHERE status = 'COMPLETED'
GROUP BY city
HAVING SUM(total_price) > 0;