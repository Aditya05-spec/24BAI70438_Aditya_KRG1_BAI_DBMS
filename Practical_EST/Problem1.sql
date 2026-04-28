CREATE TABLE Supplier_Product (
    sup_id INT,
    prod_id INT,
    PRIMARY KEY (sup_id, prod_id),
    FOREIGN KEY (sup_id) REFERENCES Tbl_Suppliers(sup_id),
    FOREIGN KEY (prod_id) REFERENCES Tbl_Products(prod_id)
);

SELECT DISTINCT s.city, p.category
FROM Tbl_Suppliers s
JOIN Supplier_Product sp ON s.sup_id = sp.sup_id
JOIN Tbl_Products p ON sp.prod_id = p.prod_id;