refine_original <- read.csv("refine_original.csv")
refine_original <- separate(refine_original, Product.code...number, c("product_code", "product_number"))
refine_original <- unite(refine_original, full_address, address, city, country, sep=",", remove = FALSE)
category <- c("Smartphone", "Smartphone", "Laptop", "Laptop", "Laptop", "Smartphone", "TV", "TV", "Laptop", "Smartphone", "Tablet", "Tablet", "Laptop", "Smartphone", "TV", "TV", "Laptop", "TV", "TV", "Laptop", "Smartphone", "Laptop", "Tablet", "Tablet", "Tablet")
refine_original$category <- category

write.csv(refine_original, file="refine_clear.csv")

