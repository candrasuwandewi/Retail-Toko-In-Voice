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

SELECT * FROM invoicedatail ORDER BY qty;

SELECT * FROM invoicedatail ORDER BY qty DESC;

SELECT INV.idinvoice, INV.tgl, INV.jam, IDET.idbarang, SB.namabarang, IDET.qty, SB.hargabarang, IDET.diskon, 
SB.hargabarang*IDET.qty-IDET.diskon AS 'subtotal' 
FROM invoicedatail IDET INNER JOIN invoices INV ON IDET.idinvoice = INV.idinvoice 
INNER JOIN stokbarang SB ON IDET.idbarang = SB.idbarang;

SELECT SB.idbarang, SB.namabarang, SUM(IDET.qty) AS total_terjual 
FROM stokbarang SB INNER JOIN invoicedatail IDET ON SB.idbarang = IDET.idbarang GROUP BY SB.idbarang, SB.namabarang ORDER BY total_terjual DESC;

SELECT SB.idbarang, SB.namabarang, COALESCE(SUM(IDET.qty), 0) AS total_terjual
FROM stokbarang SB LEFT JOIN invoicedatail IDET ON SB.idbarang = IDET.idbarang GROUP BY SB.idbarang, SB.namabarang ORDER BY total_terjual DESC;

