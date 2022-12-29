-- Adı şu şekilde olanlar: tAmEr, yAsEmin, tAnEr (A ile E arasında tek bir karakter olanlar)
Select FirstName From Employees
WHERE FirstName like '%A%' and FirstName like '%E%' and FirstName like '%A[A-Z]E%'

-- Adının içerisinde A ile E arasında iki tane karakter olanlar
Select FirstName From Employees
WHERE FirstName like '%A%' and FirstName like '%E%' and FirstName like '%A[A-Z][A-Z]E%'

-- Adının ilk harfi M olmayanlar
Select FirstName From Employees
WHERE FirstName NOT LIKE 'M%'

-- Adı T ile bitmeyenler
Select FirstName From Employees
WHERE FirstName NOT LIKE '%T'

-- Adının ilk harfi A ile I aralığında bulunmayanlar
Select FirstName From Employees
WHERE FirstName NOT LIKE '[A-I]%'

-- Adının 2. harfi A veya T olmayanlar
Select FirstName From Employees
WHERE FirstName NOT LIKE '_[AT]%' 

-- Adının ilk iki harfi LA, LN, AA veya AN olanlar
Select FirstName From Employees
WHERE FirstName LIKE 'LA%' or FirstName like 'LN%' or FirstName like 'AA%' or FirstName like 'AN%'

-- Adının içerisinde _ geçen isimleri listeleyiniz ( içeride kayıt yok diye yazmamazlık yapmayınız, bi zahmet 2 satır datayı güncelleyin :))
Select FirstName From Employees
WHERE FirstName LIKE '%[_]%'



