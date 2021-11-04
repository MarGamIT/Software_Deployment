# Lab 2
## UPDATE 04.11.2021
Fehler beim Aufrufen der Website: "The service is unavailable."
Der Fehler tritt auf, da sozusagen die verfügbaren Resourcen vom gewählten App-Service-Plan (Free Tier) aufgebraucht wurden.

Fehler wird hier beschrieben:
1. https://docs.microsoft.com/en-us/answers/questions/412843/cannot-deploy-my-app-services-http-error-503-the-s.html
2. https://stackoverflow.com/questions/36134141/http-error-503-the-service-is-unavailable-in-azure-server-for-rest-services-dep

Nach kurzzeitigen Upgraden des App-Service-Plans war die Website wieder wie gewohnt online. Ich habe sie dann jedoch sofort wieder, aufgrund der evtl. anfallenden Kosten, auf Free Tier (F1) gedowngradet. Das heißt: bei der Korrektur dieses Labs könnte die Website wiederrum nicht erreichbar sein und, folgedessen, müsste ich dann die Website "manuell" erneut online schalten.
## Links
### NodeJS Web App Dev
https://lab2-markus-gamperl-dev.azurewebsites.net/
### NodeJS Web App Production
https://lab2-markus-gamperl.azurewebsites.net/
### NodeJS Web App Source Code
https://github.com/MarGamIT/SimpleCalculator_Lab2
### Geforderte Bilder/Dokumentation
Die geforderten Bilder zu den Pipelines, Fehler, und Buildverlauf befinden sich im Ordner Images.
## Vorgehensweise
1. Node/Express Web App erstellt, in meinem Fall einen einfachen Rechner
2. Tests mit Mocha erstellt
3. Zwei Web Apps anlegen (Dev & Production) inkl. Aktivierung von Azure Insights
4. Build Pipeline erstellen
5. Release Pipeline erstellen
6. Release Pipeline konfigurieren (manueller Check, etc.)
## Nützliche Recherche Links zum Lösen des Lab2
1. https://mochajs.org/
2. https://www.youtube.com/watch?v=8sFTdzz55KU&t=792s
3. https://www.youtube.com/watch?v=BAFCiiOAXB8&t=689s
## Dokumentation zur Freigabe des Releases
Nach erfolgreichem Build & Test durch Buildpipeline wird ein Build erstellt - manuell oder getriggert vom Git main branch - kommt die Release Pipeline zum Einsatz. Auf Basis des erstellten Builds der Build Pipeline wird der zuerst die erste Stage - der Dev Release - automatisch durchgeführt. Danach wird weitergegangen zum Production Release. Der Production Release ist mit einem manuellem Check ausgestattet. Das beudeutet in meinem Fall, dass der Production Release von mir, Markus Gamperl, innerhalb von 2 Tagen 'approved' werden muss. Benachrichtigt wird man dazu auch per Email.
## Aufgetretene Probleme
### Permission Denied bei Mocha - Siehe Bild Fehler 3
Problem war, dass die sich die node_modules nicht am Git Repo befinden durften. Mit Löschen und Hinzufügen eines passenden Git ignores wurde das Problem gelöst. Hilfe dazu wurde hier gefunden: https://whatibroke.com/2018/12/28/mocha-tests-sh-1-mocha-permission-denied-aws-codebuild-with-node-js/
### Server Error 502 - Siehe Bild Fehler 4
Lösung des Problems: Umstellung auf Port: 8080
### Post Parameter beim Testen bzw. Test Case wurde nicht erkannt
Folgender Link: https://www.py4u.net/discuss/1211824 half bei der Lösung dieses Problem und des Anpassens des Test Cases.
