SELECT c.description, n.nutritionValue , n.units 
FROM c
JOIN n IN c.nutrients
where c.foodGroup="Spices and Herbs"
and n.description = "Fructose"