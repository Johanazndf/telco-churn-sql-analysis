use telco;
select * from `wa_fn-usec_-telco-customer-churn`;

-- Overall churn rate
select
count(*) as total_customers,
sum(case when Churn = 'Yes' then 1 else 0 end) as churned_customers,
sum(case when Churn = 'Yes' then 1 else 0 end) * 100.0 / count(*) as churn_rate
from `wa_fn-usec_-telco-customer-churn`;


-- Churn rate by PaymentMethod
select PaymentMethod,
count(*) as total,
sum(case when Churn = 'Yes' then 1 else 0 end) as churned,
sum(case when Churn = 'Yes' then 1 else 0 end) * 100.0 / count(*) as churn_rate
from `wa_fn-usec_-telco-customer-churn`
group by PaymentMethod;


-- Churn rate by InternetService
select InternetService,
count(*) as total,
sum(case when Churn = 'Yes' then 1 else 0 end) as churned,
sum(case when Churn = 'Yes' then 1 else 0 end) * 100.0 / count(*) as churn_rate
from `wa_fn-usec_-telco-customer-churn`
group by InternetService;
