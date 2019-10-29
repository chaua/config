#!/bin/bash

OPCOES=$1

case $OPCOES in

	(Header-c):
	
echo -e "/* ======================================================================
 * =									=
 * =									=
 * =									=
 * =									=
 * ======================================================================
 * ----------------------------------------------------------------------
 * - Author:	Chaua Queirolo 						-
 * - 									-
 * - Date:	    $(date +%d/%b/%Y)\t					-
 * - Last Modified: $(date +%d/%b/%Y)\t					-
 * -									-
 * - Version:	 0.1							-
 * ---------------------------------------------------------------------- */
 
/* Description:
 *	-
 */\n\n"

;;

	(Header-2):

echo -e "
# =======================================================================
# =									=
# =									=
# =									=
# =									=
# =======================================================================
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# - Author:	Chaua Queirolo 						-
# - Email:	chaua@computer.org					-
# - 									-
# - Date:	   $(date +%d/%b/%Y)\t					-
# - Last Modified: $(date +%d/%b/%Y)\t					-
# -									-
# - Version:	 0.1							-
# ----------------------------------------------------------------------- 
 
# Description:
#	-
#\n\n"
;;

	(Header-latex):

echo -e "% =======================================================================
% =									=
% =									=
% =									=
% =									=
% =======================================================================
% -----------------------------------------------------------------------
% - Author:	Chaua Queirolo 						-
% - Email:	chaua@computer.org					-
% - 									-
% - Date:	   $(date +%d/%b/%Y)\t					-
% - Last Modified: $(date +%d/%b/%Y)\t					-
% -									-
% - Version:	 0.1							-
% -----------------------------------------------------------------------\n\n"
;;


	(Funcao-c):
	
echo -e "/* ======================================================================
 * =									=
 * =									=
 * =									=
 * ======================================================================
 * ----------------------------------------------------------------------
 * -									-
 * ---------------------------------------------------------------------- */\n\n"
;;
	
	(Funcao-c2):


echo -e "	/* --------------------------------------------------------------
	 * --------------------------------------------------------------
	 * -								-
	 * -------------------------------------------------------------- 
	 * -------------------------------------------------------------- */\n\n"
;;


	(Funcao-tex):
	
echo -e "% -----------------------------------------------------------------------
% -									-
% -----------------------------------------------------------------------\n\n"
;;


	(Funcao-bash):
	
echo -e "# =======================================================================
# =									=
# =									=
# =									=
# =======================================================================
# -----------------------------------------------------------------------
# -									-
# -----------------------------------------------------------------------\n\n"
;;



esac

