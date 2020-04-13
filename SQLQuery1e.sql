 SELECT        OP.PropertyId,  P.Name, TPF.Code, TP.StartDate, TP.EndDate, TP.PaymentAmount, Person.FirstName, Person.LastName
FROM            OwnerProperty AS OP INNER JOIN
                         Property AS P ON OP.PropertyId = P.Id INNER JOIN
                         TenantProperty AS TP ON P.Id = TP.PropertyId INNER JOIN
                         TenantPaymentFrequencies AS TPF ON TPF.Id = TP.PaymentFrequencyId INNER JOIN
                        Person ON OP.Id = Person.Id inner join
						 Tenant as T on T.Id = Person.Id 
						  
WHERE        (OP.OwnerId = '1426')
/*Display all property names, current tenants first and last names and rental payments per week/ fortnight/month for 
the properties in question a).  */

EXEC sp_fkeys 'Property'
EXEC sp_fkeys 'TenantProperty'
EXEC sp_fkeys 'TenantPaymentFrequencies'
EXEC sp_fkeys 'OwnerProperty'
EXEC sp_fkeys 'Person'







