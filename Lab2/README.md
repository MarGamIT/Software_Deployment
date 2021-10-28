# Lab 2
## Vorgehensweise
1. Node/Express Web App erstellt, in meinem Fall einen einfachen Rechner.
2. Tests mit Mocha erstellen


## Nützliche Recherche Links zum Lösen des Lab2
https://mochajs.org/
https://www.py4u.net/discuss/1211824 

## Links
### NodeJS Web App Dev
https://lab2-markus-gamperl-dev.azurewebsites.net/
### NodeJS Web App Production
https://lab2-markus-gamperl.azurewebsites.net/
## Dokumentation zur Freigabe des Releases
Nach erfolgreichem build / test, welches vom main branch des GIT Repos getriggerd wird, wird auf Basis dieses Builds darraufhin der Dev Release durchgeführt. Nach der Stage des Dev Release wird weitergegangen zum Production Release. Der Production Release ist mit einem manuellem Check ausgestattet. Der Production Release muss von Markus Gamperl innerhalb von 2 Tagen 'approved' werden.
## Aufgetretene Probleme
### Permission Denied bei Mocha - Siehe Bild Fehler 3
Problem war, dass die sich die node_modules nicht am Git Repo befinden durften. Mit Löschen und Hinzufügen eines passenden Git ignores wurde des Problem gelöst. Hilfe dazu wurde hier gefunden: https://whatibroke.com/2018/12/28/mocha-tests-sh-1-mocha-permission-denied-aws-codebuild-with-node-js/
### Server Error 502 - Siehe Bild Fehler 4
Lösung des Problems: Umstellung auf Port:8080
### Post Parameter beim Testing wurde nicht erkannt
Folgender Link: https://www.py4u.net/discuss/1211824 half bei der Lösung dieses Problem und des Anpassens des Test Cases.
