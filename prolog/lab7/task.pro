domains
  surname, phone = symbol.
  city, street = symbol.
  house, flat = integer.
  address = address(city, street, house, flat). 
  brand, color, plate = symbol.
  price = integer.

predicates
  phoneBook(surname, phone, address).
  car(surname, brand, color, price).
  carOwner(surname, city, phone, brand, color).

clauses
  carOwner(Surname, City, Phone, Brand, Color):-phoneBook(Surname, Phone, address(City, _, _, _)),car(Surname, Brand, Color, _).

  phoneBook(shakhnovich, "9807057788", address(moscow, lenina, 10, 25)).
  phoneBook(shakhnovich, "9807057799", address(spb, lenina, 10, 25)).
  phoneBook(polyakov, "9806046677", address(spb, pushkina, 5, 13)).
  phoneBook(polyakov, "9805924351", address(spb, pushkina, 5, 13)).
  phoneBook(permyakova, "9805035566", address(ekatirinburg, gagarina, 42, 7)).
  phoneBook(stroganov, "9804024455", address(kazan, tolstogo, 15, 3)).
  
  car(shakhnovich, toyota, red, 25000).
  car(shakhnovich, bmw, black, 45000).
  car(permyakova, bmw, white, 18000).
  car(stroganov, ferrari, blue, 12000).
