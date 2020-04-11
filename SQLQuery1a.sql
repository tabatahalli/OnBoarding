/* 1. a. Display a list of all property names and their property id’s for Owner Id: 1426.*/

SELECT Property.Name as PropertyName, 
       Property.Id as PropertyId

FROM  OwnerProperty INNER JOIN
	  Owners ON OwnerProperty.OwnerId = Owners.Id INNER JOIN
	  Property ON OwnerProperty.PropertyId = Property.Id

where Owners.Id = 1426


EXEC sp_fkeys 'OwnerProperty'