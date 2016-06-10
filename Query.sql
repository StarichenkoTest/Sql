  select distinct t1.CustomerId from PurchaiseTable t1 left join
  (select distinct CustomerId from PurchaiseTable where ProductName = 'сметана') t2 on t1.CustomerId = t2.CustomerId 
  where t2.CustomerId is null and t1.ProductName = 'молоко'
