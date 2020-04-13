
select OP.PropertyId, P.Name, TP.PaymentAmount, tpf.Code,
tp.StartDate, tp.EndDate, pf.Yield,
(CASE
When tpf.Id = 1 then
tp.PaymentAmount/7 * DATEDIFF(D,tp.StartDate,tp.EndDate
)
When tpf.Id =2
then tp.PaymentAmount/14 * DATEDIFF(D, tp.StartDate, tp.EndDate)
else tp.PaymentAmount*12/365 * DATEDIFF(D,tp.StartDate,tp.EndDate) END) AS SumOfAllPayments
from OwnerProperty OP
inner join Property P on OP.PropertyId=P.Id
inner join TenantProperty TP on P.Id=TP.PropertyId
inner join TenantPaymentFrequencies tpf on tp.PaymentFrequencyId=tpf.Id
inner join PropertyFinance pf on P.Id=pf.PropertyId
where OwnerId= '1426'








