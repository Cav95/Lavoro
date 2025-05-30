select o.OrderID  , (select p.UnitPrice
					from products p 
                    order by p.UnitPrice
					limit 1 ) as pippo
from orders o ;
					