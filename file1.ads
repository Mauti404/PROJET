-------------------------D�claration des types g�n�riques------------------------------

GENERIC

   TYPE T_Inconnu IS PRIVATE;
   N:integer;
   --WITH PROCEDURE Affiche (i : IN T_Inconnu);

PACKAGE file1 IS

-------------------------------D�claration des types-----------------------------------

   TYPE T_Tab IS PRIVATE;

   TYPE file IS PRIVATE;

---------------------------D�claration des fonctions----------------------------------

   FUNCTION LireFile (f : file) RETURN T_Inconnu; -- fait
   PROCEDURE Defiler (f : IN OUT file); -- fait
   PROCEDURE Enfiler (f : IN OUT file; v : T_Inconnu); -- fait
   PROCEDURE InitFile (f: IN OUT file); -- fait
   FUNCTION FileVide (f : file) RETURN boolean; -- fait
   FUNCTION FilePleine (f : file) RETURN boolean; --- fait


----------------------------D�claration des types priv�s------------------------------

PRIVATE

   TYPE T_Tab IS ARRAY (1..N) OF T_Inconnu;

   TYPE file IS RECORD

      T:T_Tab;
      tete:integer;
      taille:integer;

   END RECORD;



END file1;