use telco;
select * from `wa_fn-usec_-telco-customer-churn`;

-- Total revenue by Contract
select Contract,
sum(cast(TotalCharges as float)) as total_revenue
from `wa_fn-usec_-telco-customer-churn`
group by Contract;


-- InternetService generating highest revenue
select InternetService,
sum(cast(TotalCharges as float)) as total_revenue
from `wa_fn-usec_-telco-customer-churn`
group by InternetService
order by total_revenue desc limit 1;


-- PaymentMethod generating lowest revenue
select PaymentMethod,
sum(cast(TotalCharges as float)) as total_revenue
from `wa_fn-usec_-telco-customer-churn`
group by PaymentMethod
order by total_revenue asc limit 1;


-- Top 5 customers by TotalCharges
select customerID,
cast(TotalCharges as float) as total_charges
from `wa_fn-usec_-telco-customer-churn`
order by cast(TotalCharges as float) desc
limit 5;
