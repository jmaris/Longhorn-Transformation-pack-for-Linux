#!/bin/bash
# BY: Dart00

# =============================================================================================================
# Declare Critical Varables:
if [[ `cat /etc/issue` =~ "PCLinuxOS" ]]; then
   TPUT_BOLD=""
   TPUT_CLEAR=""
   TPUT_RED=""
   TPUT_GREEN=""
   TPUT_YELLOW=""
   TPUT_BLUE=""
   TPUT_CLYN=""
else
   TPUT_BOLD="tput bold"
   TPUT_CLEAR="tput sgr0"
   TPUT_RED="tput setf 4"
   TPUT_GREEN="tput setf 2"
   TPUT_YELLOW="tput setf 6"
   TPUT_CLYN="tput setf 3"
fi


case "$LANG" in
 *fr* )
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo -n "* "
tput sgr0
tput bold
echo -n Welcome To The Win2-7 Breadcrumb Changer!
tput setf 2 
echo " *"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
	     ;;
 *pt* )
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo -n "* "
tput sgr0
tput bold
echo -n Bem vindo ao editor do Win2-7 Breadcrumb!
tput setf 2 
echo " *"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
	     ;;
 *es* )
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo -n "* "
tput sgr0
tput bold
echo -n Welcome To The Win2-7 Breadcrumb Changer!
tput setf 2 
echo " *"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
	     ;;
 hr* )
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo -n "* "
tput sgr0
tput bold
echo -n Welcome To The Win2-7 Breadcrumb Changer!
tput setf 2 
echo " *"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
	     ;;
 * )
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo -n "* "
tput sgr0
tput bold
echo -n Welcome To The Win2-7 Breadcrumb Changer!
tput setf 2 
echo " *"
tput sgr0
echo -n "# "
tput setf 2
tput bold
echo "*********************************************"
	     ;;
esac

tput sgr0
echo "#"

# =============================================================================================================
# Declare Variables:

THEME=`gconftool-2 --get "/desktop/gnome/interface/gtk_theme"`

# =============================================================================================================
# Declare Functions:

function STATUSCHECK {

if ! [ "$?" = "0" ]; then
   STATUS="FAIL"
fi

		}

function DISPLAYSTATUS {
echo -n "[ "
   if [ "$STATUS" = "FAIL" ] || [ "$FAIL" = "YES" ]; then
      $TPUT_RED
      echo -n "FAIL"
      ERRORS="YES"
   else
      $TPUT_GREEN
      echo -n " OK "
   fi
$TPUT_CLEAR
$TPUT_BOLD
echo " ]"
$TPUT_CLEAR

STATUS=""
SPACE=""
WARN=""
FAIL=""
		}

function BUSY {
(( SPACE = (60 - `cat /tmp/status.tmp | wc -m`) ))
tput cuf $SPACE
$TPUT_BOLD
tput sc
echo -n "[ "
$TPUT_CLYN
echo -n "BUSY"
$TPUT_CLEAR
$TPUT_BOLD
echo -n " ]"
tput rc
		}

# =============================================================================================================
# Assign Language:
case "$LANG" in
  fr* )
echo -n "# DÃ©tection automatique du langage..."  | tee /tmp/status.tmp ; BUSY
	     ;;
  es* )
echo -n "# Autodetectando Idioma..."  | tee /tmp/status.tmp ; BUSY
	     ;;
  pt* ) 
echo -n "# Auto Detectando idioma..."  | tee /tmp/status.tmp ; BUSY
           ;;
  hr* ) 
echo -n "# Auto Detecting Language..."  | tee /tmp/status.tmp ; BUSY
           ;;
  * ) 
echo -n "# Auto Detecting Language..."  | tee /tmp/status.tmp ; BUSY
           ;;
esac

case "$LANG" in
 *es* )
WORD1="Selector de Breadcrumb:"
WORD2="Actualizar el color del Breadcrumb"
WORD3="Salir"
WORD4="Este script se utiliza para actualizar el color del Breadcrumbs del Escritorio Elementary para que coincida con el tema-gtk actual."
WORD5="Checking Installed Programs..."
WORD6="Aplicando el Breadcrumbs nuevo..."
WORD7="Escritorio Elementary no instalado:"
WORD8="El Escritorio Elementary no está instalado, así que no podemos cambiar el tema de breadcrumbs."
WORD9="Breadcrumbs no instalado:"
WORD10="Win2-7 Breadcrumbs para el Escritorio Elementary no está instalado actualmente. Por favor ejecuta GUIInstall.sh desde la carpeta de Win2-7Pack folder usando la opción instalar o reinstalar para instalarlos."
WORD11="Breadcrumbs están deshabilitados:"
WORD12="La caracteristica del Escritorio Elementary \"Breadcrumbs\" está deshabilitada, por lo que necesitan ser habilitadas. Ejecuta GUIInstall.sh y selecciona Actualizar Apariencia eligiendo Aero."
WORD13="¡Completado el cambio sin errores!"
WORD14="Presiona [ENTER] para cerrar..."
WORD15="Reiniciando Nautilus. Espera por favor..."
WORD16="Reiniciando Nautilus:"
WORD17="Cambio Completo:"
WORD18="Breadcrumbs para el Escritorio Elementary ha sido actualizado exitosamente al color apropiado."
WORD19="Detectando Breadcrumbs..."
WORD20="Reuniendo información del paquete..."
	     ;;
 *fr* )
WORD1="Modificateur de l'arborescence :"
WORD2="Adapter la couleur de l'arborescence"
WORD3="Quitter"
WORD4="Ce script est utilisé pour adapter l'arborescence affichée via Elementary Desktop avec la coumeur adéquate du thème actuellement appliqué."
WORD5="Checking Installed Programs..."
WORD6="Applying New Breadcrumbs..."
WORD7="Elementary Desktop non installé :"
WORD8="Elementary Desktop n'étant pas installé, il n'est pas nécéssaire de changer l'affichage de l'arborescence."
WORD9="Aucune arborescence installée :"
WORD10="L'arborescence du PAck Win2-7 via Elementary Desktop n'est pas installée. Veuillez lancer le script GUIInstall.sh se trouvant dans le répertoire d'installation du Pack Win2-7 Pack et utilisez la fonction 'Installer' ou 'Réinstaller' pour l'activer."
WORD11="L'arborescence est désactivée :"
WORD12="L'option 'Arborescence via Elementary Desktop n'a pas été sélectionnée. Il n'y a aucune modification à apporter. Vous pouvez lancer le script Install.sh et utiliser l'option 'Mise à jour des paramètres' et appliquer le mode Aero."
WORD13="Changements effectués sans erreur !"
WORD14="Pressez [Entrée] pour fermer..."
WORD15="Redémarrage de Nautilus. Veuillez patienter..."
WORD16="Redémarrage de Nautilus :"
WORD17="Changement effectué :"
WORD18="La couleur de l'arborescence via Elementary Desktop a été modifiée avec succès."
WORD19="Détection de l'arborescence..."
WORD20="Collecte des informations des paquets..."
	     ;;
 *pt* )
WORD1="Editor do Breadcrumb:"
WORD2="Atualizar cor do Breadcrumb"
WORD3="Sair"
WORD4="Esse script é usado para atualizar o Breadcrumb do Elementary Desktop's para a cor correta do tema atual."
WORD5="Checando programas instalados..."
WORD6="Aplicando novos Breadcrumbs..."
WORD7="O Elementary Desktop não está instalado:"
WORD8="O Elementary Desktop não está instalado, portanto, nenhum Breadcrumb precisa ser mudado."
WORD9="Nenhum Breadcrumb instalado:"
WORD10="Os Win2-7 Elementary Desktop Breadcrumbs não estão atualmente instalados. Por favor execute o script GUIInstall.sh na pasta do pacote Win 2-7 usando a opção Instalar ou Reinstalar para instalá-los."
WORD11="Breadcrumbs estão desativados:"
WORD12="A função Elementary Desktop's Breadcrumbs está desativada, portanto nenhum Breadcrumb precisa ser alterado. Você pode executar GUIInstall.sh e usar Atualizar Aparência e configurá-los para Aero."
WORD13="Mudança concluída sem erros!"
WORD14="Aperte [ENTER] para fechar..."
WORD15="Reiniciando Nautilus. Por favor, aguarde..."
WORD16="Reiniciando Nautilus:"
WORD17="Mudança concluída:"
WORD18="Os Elementary Desktop Breadcrumbs foram corretamente atualizados para a cor apropriada."
WORD19="Detectando Breadcrumbs..."
WORD20="Coletando informações do pacote..."
	     ;;
 hr* )
WORD1="Breadcrumb izmjenjivač:"
WORD2="Update-aj Breadcrumb boju"
WORD3="Izlaz"
WORD4="Ova skripta se koristi kako bi se izmjenio Breadcrumb Elementarnog Desktop-a na ispravnu boju trenutno primjenjene teme."
WORD5="Provjeravam instalirane programe..."
WORD6="Primjenjujem novi Breadcrumb..."
WORD7="Elementarni Desktop nije instaliran:"
WORD8="Elementarni Desktop nije instaliran, stoga breadcrumbs-i se ne trebaju mjenjati."
WORD9="Nema instaliranih Breadcrumbs-a:"
WORD10="Win2-7 Breadcrumbs-i Elementarnog Desktop-a nisu trenutno instalirani. Molim, pokrenite GUIInstall.sh unutar mape Win2-7Pack koristeći opciju Instaliraj ili Reinstaliraj da ih instalirate."
WORD11="Breadcrumbs-i su isključeni:"
WORD12="Mogućnosti Breadcrumbs-a Elementarnog Desktop-a su trenutno isključeni, stoga breadcrumbs-i se ne moraju mjenjati. Možete pokrenuti GUIInstall.sh i upotrijebiti Update-aj Izgled i postaviti ga na Aero."
WORD13="Izmjene završene bez grešaka!"
WORD14="Pritisnite [ENTER] da zatvorite..."
WORD15="Restartanje Nautilus-a. Molim, pričekajte..."
WORD16="Restartanje Nautilus-a:"
WORD17="Promjene završene:"
WORD18="Breadcrumbs-i Elementarnog Desktop-a su uspješno izmjenjeni u ispravnu boju."
WORD19="Detektiram Breadcrumbs-e..."
WORD20="Prikupljam informacije paketa..."
	     ;;
 * )
WORD1="Breadcrumb Changer:"
WORD2="Update Breadcrumb Color"
WORD3="Quit"
WORD4="This script is used to update Elementary Desktop's Breadcrumbs to the correct color of the currently applied Theme."
WORD5="Checking Installed Programs..."
WORD6="Applying New Breadcrumbs..."
WORD7="Elementary Desktop Not Installed:"
WORD8="Elementary Desktop is not installed, so no breadcrumbs need to be changed."
WORD9="No Breadcrumbs Installed:"
WORD10="Win2-7 Elementary Desktop Breadcrumbs are not currently installed. Please run GUIInstall.sh in the Win2-7Pack folder using the Install or Reinstall Option to install them."
WORD11="Breadcrumbs are disabled:"
WORD12="Elementary Desktop's Breadcrumbs feature is currently disabled, so no breadcrumbs need to be changed. You can run GUIInstall.sh and use Update Appearance and set them to Aero."
WORD13="Change Completed Without Errors!"
WORD14="Press [ENTER] To Close..."
WORD15="Restarting Nautilus. Please Wait..."
WORD16="Restarting Nautilus:"
WORD17="Change Complete:"
WORD18="Elementary Desktop Breadcrumbs have been successfully updated to the proper color."
WORD19="Detecting Breadcrumbs..."
WORD20="Gathering Package Information..."
	     ;;
esac

DISPLAYSTATUS

# =============================================================================================================
# Info Screen:

if ! `zenity --question --title="$WORD1" --ok-label="$WORD2" --cancel-label="$WORD3" --text="$WORD4 ($THEME)"` ; then
   exit
fi

# =============================================================================================================
# Info Screen:

echo -n "# $WORD20"  | tee /tmp/status.tmp ; BUSY

if apt-get -v > "/dev/null" 2>&1 ; then
PMAN="APT"
fi

if urpmf --version > "/dev/null" 2>&1 ; then
PMAN="URPMI"
fi

DISPLAYSTATUS

# =============================================================================================================
# Elementary Desktop is not installed:

echo -n "# $WORD5"  | tee /tmp/status.tmp ; BUSY

# Elementry Desktop (Ubuntu Based):
if [ "$PMAN" = "APT" ]; then
   if ! grep -q "elementarydesktop" "/etc/apt/sources.list"; then
      FAIL=YES
      DISPLAYSTATUS
      zenity --info --title="$WORD7" --text="$WORD8"
      exit
   fi
fi

# Elementry Desktop (Mandriva):
if [ "$PMAN" = "URPMI" ]; then
   rpm -qa > /tmp/packages.tmp 
   if ! grep -q "nautilus-elementary" "/tmp/packages.tmp" ; then
      FAIL=YES
   fi
   rm -f /tmp/packages.tmp
   DISPLAYSTATUS
   zenity --info --title="$WORD7" --text="$WORD8"
   exit
fi

DISPLAYSTATUS

# =============================================================================================================
# Detect Installed Breadcrumbs:

echo -n "# $WORD19"  | tee /tmp/status.tmp ; BUSY

if ! [ `gconftool-2 --get /apps/win2-7pack/breadcrumb_theme` = "Installed" ]; then
FAIL=YES
DISPLAYSTATUS
zenity --error --title="$WORD9" --text="$WORD10"
exit
fi

# =============================================================================================================
# Elementary Desktop breadcrumbs are not in use:

if ! [ `gconftool-2 --get /apps/nautilus/preferences/pathbar_like_breadcrumbs` = "true" ]; then
FAIL=YES
DISPLAYSTATUS
zenity --info --title="$WORD11" --text="$WORD12"
exit
fi

DISPLAYSTATUS

# =============================================================================================================
# Change Color:

echo -n "# $WORD6"  | tee /tmp/status.tmp ; BUSY

rm -f -r "$HOME/.themes/nautilus" ; STATUSCHECK

case $THEME in
  "Win2-7Murrine-AeroBlack" )
      cp -r $HOME/.themes/breadcrumbsWin2-7Black/nautilus $HOME/.themes/ ; STATUSCHECK
           ;;
  "Win2-7Murrine-AeroPink" )
      cp -r $HOME/.themes/breadcrumbsWin2-7Pink/nautilus $HOME/.themes/ ; STATUSCHECK
           ;;
  "Win2-7Murrine-AeroBlue" )
      cp -r $HOME/.themes/breadcrumbsWin2-7Blue/nautilus $HOME/.themes/ ; STATUSCHECK
           ;;
  * )
      cp -r $HOME/.themes/breadcrumbsWin2-7/nautilus $HOME/.themes/ ; STATUSCHECK
           ;;
esac

DISPLAYSTATUS

# =============================================================================================================
# Restart Nautilus:

echo -n "# $WORD15" | tee /tmp/status.tmp ; BUSY
killall nautilus ; STATUSCHECK
sleep 8

DISPLAYSTATUS

# =============================================================================================================
# Change Complete:

echo -n "# "

tput bold
tput setf 2
echo "$WORD13"

tput sgr0

zenity --info --title="$WORD17" --text="$WORD18 ($THEME)"

echo "#"
echo "# $WORD14"
read key
exit 0
