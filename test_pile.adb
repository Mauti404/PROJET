WITH Ada.Integer_Text_Io, Ada.Text_io, pile1;
USE Ada.Integer_Text_io, Ada.Text_io;

PROCEDURE test_pile IS

--------------------------------------------------------------------------------------
-----------------------D�claration des types------------------------------------------
--------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------
------------------------D�claration des sous programmes-------------------------------
--------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------
------------------------D�claration des variables-------------------------------------
--------------------------------------------------------------------------------------

PACKAGE pile_tab IS NEW pile1(integer,10);
USE pile_tab;

p:pile;


--------------------------------------------------------------------------------------
----------------------------Programme principal---------------------------------------
--------------------------------------------------------------------------------------

BEGIN



   put("======================================");new_line;
   put("==           Test des piles         ==");new_line;
   put("======================================");new_line;


-- Initialisation d'une pile

   InitPile(p);

--Affichage(LirePile(p));
-- index check failed


-- Empile 3 sur la pile
   Empiler(p,3);

-- Affiche normalement 3
   put(LirePile(p),1);new_line;

-- Empile 4 puis depile

   Empiler(p,4);
   Depiler(p);

-- Affiche normalement 3s
   put(LirePile(p),1);new_line;

-- On v�rifie que la pile marche

   Empiler(p,4);
   Empiler(p,5);
   Empiler(p,6);
   Empiler(p,7);
   Empiler(p,8);

   FOR i IN 1..6 LOOP
      put(LirePile(p),1);new_line;
      Depiler(p);
   END LOOP;


-- La pile est normalement vide

   IF PileVide(p) THEN
      put("La pile est bien vide");new_line;
   END IF;

   IF NOT PilePleine(p) THEN
      put("La pile n'est pas pleine");new_line;
   END IF;

-- On peut donc faire �a :

   WHILE NOT PilePleine(p) LOOP
      Empiler(p,1);
   END LOOP;

   IF PilePleine(p) THEN
      put("La pile est pleine");new_line;
   END IF;

   new_line;put("Affichage d'une pile de 1");new_line;

   WHILE NOT PileVide(p) LOOP
      put(LirePile(p),1);new_line;
      Depiler(p);
   END LOOP;

put("Fin des tests");new_line;


END test_pile;