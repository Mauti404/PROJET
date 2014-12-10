-------------------------Déclaration des types génériques------------------------------

GENERIC

   TYPE T_Inconnu IS PRIVATE;
   N:integer;
   --WITH PROCEDURE Affiche (i : IN T_Inconnu);

PACKAGE pile1 IS

-------------------------------Déclaration des types-----------------------------------

   TYPE T_Tab IS PRIVATE;

   TYPE pile IS PRIVATE;

---------------------------Déclaration des fonctions----------------------------------

   FUNCTION LirePile (p : pile) RETURN T_Inconnu; -- fait
   PROCEDURE Depiler (p : IN OUT pile); -- fait
   PROCEDURE Empiler (p : IN OUT pile; v : T_Inconnu); -- fait
   FUNCTION PileVide (p :pile) RETURN boolean; -- fait
   FUNCTION PilePleine (p : pile) RETURN boolean; --- fait
   PROCEDURE InitPile (p: IN OUT pile); -- fait

----------------------------Déclaration des types privés------------------------------

PRIVATE

   TYPE T_Tab IS ARRAY (1..N) OF T_Inconnu;

   TYPE pile IS RECORD

      T:T_Tab;
      pointeur:integer;

   END RECORD;




END pile1;
