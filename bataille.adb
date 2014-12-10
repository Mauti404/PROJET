WITH Ada.Integer_Text_Io, Ada.Text_io,pile1,file1,random;
USE Ada.Integer_Text_io, Ada.Text_io;

PROCEDURE bataille IS

--------------------------------------------------------------------------------------
-----------------------Déclaration des types------------------------------------------
--------------------------------------------------------------------------------------

   TYPE T_valeur IS (sept,huit,neuf,dix,valet,dame,roi,as);
   TYPE T_enseigne IS (pique,trefle,carreau,coeur);

   TYPE carte IS RECORD
      enseigne:T_enseigne;
      valeur:T_valeur;
   END RECORD;

--------------------------------------------------------------------------------------
------------------------Déclaration des sous programmes-------------------------------
--------------------------------------------------------------------------------------

PROCEDURE printCarte (c:in carte) IS

BEGIN

   put(T_valeur'image(c.valeur));put(" de ");put(T_enseigne'image(c.enseigne));new_line;new_line;

END printCarte;

--------------------------------------------------------------------------------------
------------------------Déclaration des variables-------------------------------------
--------------------------------------------------------------------------------------

PACKAGE pile_tab IS NEW pile1(carte,32);
PACKAGE file_tab IS NEW file1(carte,32);

USE pile_tab;
USE file_tab;



--------------------------------------------------------------------------------------
----------------------------Programme principal---------------------------------------
--------------------------------------------------------------------------------------

BEGIN

END bataille;