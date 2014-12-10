WITH Ada.Integer_Text_Io, Ada.Text_io;
USE Ada.Integer_Text_io, Ada.Text_io;

PACKAGE BODY pile1 IS

--------------------------------------------------------------------------------------
------------------------Déclaration des sous programmes-------------------------------
--------------------------------------------------------------------------------------

FUNCTION LirePile (p : pile) RETURN T_Inconnu IS

BEGIN

   RETURN p.T(p.pointeur);

END LirePile;

--------------------------------------------------------------------------------------

FUNCTION PileVide (p : pile) RETURN boolean IS
BEGIN

   RETURN p.pointeur=0;

END PileVide;

--------------------------------------------------------------------------------------

FUNCTION PilePleine (p:pile) RETURN boolean IS
BEGIN

   RETURN p.pointeur=N;

END PilePleine;


--------------------------------------------------------------------------------------

PROCEDURE Depiler (p : IN OUT pile) IS

BEGIN


   p.pointeur:=p.pointeur-1;


END depiler;

--------------------------------------------------------------------------------------

PROCEDURE Empiler (p : IN OUT pile ; v : T_Inconnu) IS

BEGIN

-- Vu en Algo prog : Ne pas mettre de vérification si la pile est pleine
   p.pointeur:=p.pointeur+1;
   p.T(p.pointeur):=v;

END Empiler;

--------------------------------------------------------------------------------------

PROCEDURE InitPile (p: IN OUT pile) IS
BEGIN

   p.pointeur:=0;

END InitPile;



--------------------------------------------------------------------------------------


END pile1;