 Datenbereinigung mit Alteryx

Im Rahmen des Datenbereinigungsprozesses für das Coffee Shop-Datenset habe ich zunächst das Input Data-Tool verwendet, um eine direkte Verbindung zur Quelldatei im CSV-Format herzustellen. Mit dem Select-Tool habe ich die Felder storeID und productID in den Ganzzahltyp (Int) konvertiert, um die typologische Konsistenz sicherzustellen, und irrelevante Spalten, die als "unknown" gekennzeichnet waren, abgewählt. Das Data Cleansing-Tool wurde eingesetzt, um Zeichenfolgen zu normalisieren, indem überflüssige Leerzeichen, Tabulatoren, Zeilenumbrüche sowie Leerzeichen am Anfang und Ende entfernt wurden. Eine neue Spalte mit dem Namen Total Amount wurde mit dem Formula-Tool erstellt, indem die Transaktionsmenge (transaction qty) mit dem Stückpreis (unit price) multipliziert wurde. Anschließend wurde das Sort-Tool verwendet, um die Datensätze aufsteigend nach Transaktionsdatum und -zeit zu sortieren. Schließlich wurden die bereinigten und angereicherten Daten mit dem Output Data-Tool in eine SQL Server-Datenbank exportiert, um sie später analytisch nutzen zu können.
<img width="14509" height="70" alt="image" src="https://github.com/user-attachments/assets/16b1c9a4-b144-42ca-9206-5511f90d1ac8" />
Ergebnis

Bereinigte Datei, bereit zur Aufnahme in eine SQL-Datenbank.
