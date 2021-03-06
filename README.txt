﻿TUM-Vorlagen für LaTeX
======================

Rechteinhaber:
    Technische Universität München
    https://www.tum.de

Gestaltung:
    ediundsepp Gestaltungsgesellschaft, München
    http://www.ediundsepp.de

Technische Umsetzung:
    eWorks GmbH, Frankfurt am Main
    http://www.eworks.de


Grundsätzliches
---------------

Alle Textdateien verwenden als Zeichenkodierung UTF-8. Die PDF-Erstellung
wurde mit der LaTeX-Distribution "TeX Live 2015" unter Microsoft Windows 8.1
getestet. Im Folgenden wird mit "Wurzelverzeichnis" das Verzeichnis
bezeichnet, indem sich diese Datei "_Liesmich.txt" befindet.

Für Hilfe zu den Dokumentenklassen sei auf folgende Webseiten verwiesen:

    "scrlttr2" - Komascript: http://www.komascript.de
        Die Grundlage für die Vorlagen Brief, Fax, Rechnung und Protokoll.

    "sciposter" - http://www.ctan.org/tex-archive/macros/latex/contrib/sciposter
        Ist die Basis für die Plakate in Hoch- und Querformat.

    "beamer" - http://www.ctan.org/tex-archive/macros/latex/contrib/beamer
        Wird von der Präsentationsvorlage genutzt.

Ein gutes Nachschlagewerk ist das LaTeX Wikibook:
    https://en.wikibooks.org/wiki/LaTeX


Dateien und Verzeichnisse
-------------------------

Datei "README.txt": Diese Datei.

Datei "_Settings.tex":

    Diese Datei darf nicht gelöscht werden und sollte für die verwendende Person
    angepasst werden. Alternativ können auch mehrere personenspezifische Dateien
    von dieser Datei abgeleitet und anschließend in den Vorlagen der Pfad zu
    "_Settings.tex" auf die zu verwendende Datei angepasst werden.

Dieser Ordner enthält die folgenden Vorlagen:
    * "Presentation4to3.tex", "Presentation16to9.tex",
      "Examples.tex": für Präsentationen im Seitenverhältnis
      4:3 bzw. 16:9
    
Verzeichnis "Resources":

    Der Ordner "Resources" enthält in seinen Unterverzeichnissen alle für die
    Erstellung von Dokumenten benötigten Dateien. Dateien und Ordner, deren
    Namen mit "_" beginnen gelten für alle Vorlagen. Die Dateien für die
    jeweiligen Vorlagen liegen in den entsprechenden Unterverzeichnissen.


Dokumenterstellung
------------------

Ein neues Dokument sollte durch Kopieren einer Vorlage aus dem Verzeichnis
"Vorlagen" in das Wurzelverzeichnis erstellt werden, dabei empfiehlt es sich
der Datei einen anderen Namen zu geben, sie kann dann bearbeitet werden. Um
ein PDF aus einer Datei mit Namen "<DATEI>.tex" (die Dateiendung ".tex" ist
optional) zu erstellen, führe folgenden Befehl im Wurzelverzeichnis aus:

    latexmk -pdf <DATEI>

Wenn keine Fehler auftreten sind liegt anschließend im Wurzelverzeichnis eine
PDF-Datei namens "<DATEI>.pdf".

Bei der Dokumenterzeugung fallen einige temporäre Dateien an, die die
Erstellung beschleunigen. Sobald eine finale Fassung des Dokuments vorliegt
oder falls referenzierte Dateien nicht als geändert erkannt werden, kann man
sie mit dem folgenden Befehl entfernen:

    latexmk -c
