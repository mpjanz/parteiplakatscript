#! /bin/sh
  ordner=$(dirname $0)
  cd $ordner
  cp $ordner/daten $ordner/tempdaten~ 
  kreisverband='Leverkusen'
  homepage='www.diePARTEI.net/Leverkusen'
  echo 'um ein Hintergrundbild zu benutzen jetzt eine PNG Datei mit dem Namen hintergrund.png im Verzeichnis des Scripts speichern'
  echo Zeile 1 eingeben
  read zeile1
  echo Zeile 2 eingeben
  read zeile3
  echo Zeile 3 eingeben
  read zeile2
  echo Zeile 4 eingeben
  read zeile4
  echo untertitel eingeben
  read untertitel
  echo Kreisverband eingeben
  read kreisverband
  echo Internetadresse eingeben
  read homepage
  echo Dateinamen eingeben
  read dateiname

    

  sed -i -e "s/Zeile1/$zeile1/g" $ordner/tempdaten~
  sed -i -e "s/Zeile2/$zeile2/g" $ordner/tempdaten~
  sed -i -e "s/Zeile3/$zeile3/g" $ordner/tempdaten~
  sed -i -e "s/Zeile4/$zeile4/g" $ordner/tempdaten~
  sed -i -e "s/untertitel/$untertitel/g" $ordner/tempdaten~
  sed -i -e "s/kreisverband/$kreisverband/g" $ordner/tempdaten~
  sed -i -e "s/internetadresse/$homepage/g" $ordner/tempdaten~


  daten=$(<$ordner/tempdaten~)
  echo $daten > $dateiname'.svg'
  
  rm $ordner/tempdaten~
  
  inkscape --export-png=$ordner/$dateiname --export-pdf=$ordner/$dateiname'.pdf' $ordner/$dateiname'.svg'

  

