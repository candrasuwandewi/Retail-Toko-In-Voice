SELECT idbarang, namabarang, hargabarang, stok 'stok barang' FROM stokbarang;

SELECT * FROM invoices;

SELECT * FROM invoicedatail;

SELECT namabarang, stok FROM stokbarang;

SELECT idinvoice,kasir FROM invoices WHERE kasir="Rika";

SELECT * FROM stokbarang WHERE stok < 50;

SELECT COUNT(*) AS 'JUMLAH DATA' FROM stokbarang;

SELECT SUM(qty) AS 'TOTAL DISKON' FROM invoicedatail;

SELECT idinvoice, SUM(qty) AS 'TOTAL DISKON' FROM invoicedatail WHERE idinvoice=1;

SELECT idinvoice, SUM(qty) AS 'TOTAL DISKON' FROM invoicedatail GROUP BY idinvoice;