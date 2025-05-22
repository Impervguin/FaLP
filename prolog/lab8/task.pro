domains
  surname, phone = symbol.
  city, street = symbol.
  house, flat = integer.
  address = address(city, street, house, flat). 
  brand, color = symbol.
  price, deposit = real.
  
  bank = symbol.
  account = integer.
  
  name = symbol.
  landSize = real.
  shipType, buildingType = symbol.
  
  property = car(name, price, brand, color);
      building(name, price, buildingType);
      land(name, price, landSize);
      ship(name, price, shipType).

predicates
  person(surname, phone, address).
  bankDeposit(surname, bank, account, deposit).
  owner(surname, property).
  ownerNamePrice(surname, name, price).
  propertyPrice(surname, property, price).
  totalPropertyPrice(surname, price).

clauses
  ownerNamePrice(Surname, Name, Price) :- 
   owner(Surname, car(Name, Price, _, _));
   owner(Surname, building(Name, Price, _));
   owner(Surname, land(Name, Price, _));
   owner(Surname, ship(Name, Price, _)).
   
  propertyPrice(Surname, car(_, _, _, _), Price) :- owner(Surname, car(_, Price, _, _)).
  propertyPrice(Surname, building(_, _, _), Price) :- owner(Surname, building(_, Price, _)).
  propertyPrice(Surname, land(_, _, _), Price) :- owner(Surname, land(_, Price, _)).
  propertyPrice(Surname, ship(_, _, _), Price) :- owner(Surname, ship(_, Price, _)).
  propertyPrice(_, _, 0).
  
  totalPropertyPrice(Surname, Price) :-
   propertyPrice(Surname, car(_, _, _, _), CPrice), !,
   propertyPrice(Surname, building(_, _, _), BPrice), !,
   propertyPrice(Surname, land(_,_,_), LPrice), !,
   propertyPrice(Surname, ship(_,_,_), SPrice), !,
   Price = CPrice + BPrice + LPrice + Sprice.
  

  person(shakhnovich, "9807057788", address(moscow, lenina, 10, 25)).
  person(shakhnovich, "9807057799", address(spb, lenina, 10, 25)).
  person(polyakov, "9806046677", address(spb, pushkina, 5, 13)).
  person(polyakov, "9805924351", address(spb, pushkina, 5, 13)).
  person(stroganov, "9804024455", address(kazan, tolstogo, 15, 3)).
  
  bankDeposit(shakhnovich, sberbank, 99999999, 100000).
  bankDeposit(shakhnovich, tbank, 1000023, 10000).
  bankDeposit(polyakov, sberbank, 102300, 233333).
  
  owner(shakhnovich, car(car, 100000, ferrari, red)).
  owner(shakhnovich, land(countryside, 123000, 1000)).
  owner(shakhnovich, building(building, 123000, house)).
  owner(shakhnovich, ship(ship, 223450, yacht)).
  owner(polyakov, car(car, 123400, lamborgini, yellow)).
  owner(polyakov, ship(ship, 223450, yacht)).
  owner(stroganov, building(building, 2340213, campus)).
