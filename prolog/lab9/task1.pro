domains
  gender, name = symbol.
  
predicates
  gender(name, gender).
  parent(name, name).
  grandParent(name, name, gender, gender).

clauses
  grandParent(Child, GrandParent, Branch, Gender) :- parent(Child, Parent), gender(Parent, Branch), parent(Parent, GrandParent), gender(GrandParent, Gender).
  
  gender(uranus, m).
  gender(gaia, w).
  gender(chaos, m).
  gender(cronus, m).
  gender(rhea, w).
  gender(zeus, m).
  gender(hera, w).
  gender(hestia, w).
  gender(dementia, w).
  gender(hades, m).
  gender(poseidon, m).
  gender(erebus, m).
  gender(nyx, w).
  gender(aether, m).
  gender(hemera, w).
  gender(coeus, m).
  gender(phoebe, w).
  gender(leto, w).
  gender(apollo, m).
  gender(artemis, w).
  gender(ares, m).
  gender(hephaestus, m).
  
  parent(cronus, gaia).
  parent(cronus, uranus).
  parent(rhea, gaia).
  parent(rhea, uranus).
  parent(coeus, gaia).
  parent(coeus, uranus).
  parent(phoebe, gaia).
  parent(phoebe, uranus).
  parent(erebus, gaia).
  parent(erebus, chaos).
  parent(nyx, gaia).
  parent(nyx, chaos).
  parent(aether, nyx).
  parent(aether, erebus).
  parent(hemera, nyx).
  parent(hemera, erebus).
  parent(leto, coeus).
  parent(leto, phoebe).
  parent(zeus, cronus).
  parent(zeus, rhea).
  parent(hera, cronus).
  parent(hera, rhea).
  parent(hestia, cronus).
  parent(hestia, rhea).
  parent(dementia, cronus).
  parent(dementia, rhea).
  parent(poseidon, cronus).
  parent(poseidon, rhea).
  parent(hades, cronus).
  parent(hades, rhea).
  parent(apollo, zeus).
  parent(apollo, leto).
  parent(artemis, zeus).
  parent(artemis, leto).
  parent(hephaestus, zeus).
  parent(hephaestus, hera).
  parent(ares, zeus).
  parent(ares, hera).
 
