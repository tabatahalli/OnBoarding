/* 1. b. Display the current home value for each property in question a).*/
SELECT        Property.Name AS PropertyName, Property.Id AS PropertyId,   PropertyHomeValue.Value as HomeValue
FROM            OwnerProperty INNER JOIN
                         Owners ON OwnerProperty.OwnerId = Owners.Id INNER JOIN
                         Property ON OwnerProperty.PropertyId = Property.Id INNER JOIN
                         PropertyHomeValue ON Property.Id = PropertyHomeValue.PropertyId
WHERE        (Owners.Id = 1426)

