CREATE TABLE invoicedetail(
idinvoicedetail INT AUTO_INCREMENT PRIMARY KEY,
idinvoice INT NOT NULL,
idbarang VARCHAR (5) NOT NULL,
qty INT NOT NULL,
diskon FLOAT,
CONSTRAINT fk_invoicedetail_invoice FOREIGN KEY (idinvoice)
 REFERENCES invoice (idinvoice)
 ON UPDATE CASCADE
 ON DELETE RESTRICT,
CONSTRAINT fk_invoicedetail_stokbarang FOREIGN KEY (idbarang)
 REFERENCES stokbarang (idbarang)
 ON UPDATE CASCADE
 ON DELETE RESTRICT
);