SELECT PaymentMethod,
	COUNT(*) AS  TotalOrders,
	SUM(TotalPrice) AS TotalRevenue,
	AVG(TotalPrice) AS AverageRevenue
FROM  DatasetfordataAnalytics
WHERE OrderStatus = 'Delivered'
GROUP BY PaymentMethod
ORDER BY TotalRevenue DESC;