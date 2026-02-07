use telco;
select * from `wa_fn-usec_-telco-customer-churn`;

-- Customers above average tenure
select customerID, tenure
from `wa_fn-usec_-telco-customer-churn`
where tenure > (
    select avg(tenure)
    from `wa_fn-usec_-telco-customer-churn`
);


-- Customers above average MonthlyCharges
select customerID, MonthlyCharges
from `wa_fn-usec_-telco-customer-churn`
where MonthlyCharges > (
    select avg(MonthlyCharges)
    from `wa_fn-usec_-telco-customer-churn`
);


-- Average tenure by PaymentMethod
select PaymentMethod,
avg(tenure) as avg_tenure
from `wa_fn-usec_-telco-customer-churn`
group by PaymentMethod;
