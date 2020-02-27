# Einf�hrung

Der *Human Controlled Robot*, kurz HuCon, ist ein Bausatz, der
entwickelt wurde, um Kindern beizubringen, wie sie einen
selbstgebauten Roboter programmieren.

## Programmierung

Die Programmierung erfolgt �ber eine Web-Anwendung
(`Programmierumgebung`), die auf dem HuCon installiert ist und dort
l�uft. Die Kinder ben�tigen f�r den Zugang zu dieser Web-Anwendung und
der Programmierumgebung nur einen Web-Browser (z.B. Firefox, Chrome)
und den HuCon. Der Web-Browser kann auf einem PC, einem Tablet oder
einem Smartphone laufen. Es ist keine zus�tzliche Software n�tig.

## Bausatz

Der HuCon Bausatz umfasst

* einen Omega2+ Prozessor
* mehrere Platinen
* zwei Servomotoren

Bevor der HuCon verwendet werden kann, m�ssen die Teile des Bausatzes
__zusammengesetzt__ werden. Au�erdem wird die Software, die ab Werk in
dem Omega2+ installiert ist (die sog. *Firmware*), durch eine Version
__ersetzt__, in der die Programmierumgebung des HuCon enthalten ist
(*Firmware-Update*; vgl. unten). Anschlie�end ist der HuCon dann voll
einsatzf�hig und kann programmiert werden.

## Vorbereitung

Bevor du den HuCon in Betrieb nimmst, solltest du folgende Dinge zur
Hand haben (Details zu den einzelnen Punkten werden unten im Text
erl�utert):

* __einen PC__ (besser mit Internetanschluss) mit einem
  Terminalprogramm, das f�r die serielle Kommunikation/Schnittstelle
  geeignet ist (z.B. Putty)

* ein __Micro-USB-Kabel__, um den PC mit dem HuCon zu verbinden und
  damit den HuCon gleichzeitig mit Strom zu versorgen

* Optional: eine __Micro-SD-Karte__ (8 GB reichen), um ein
  Firmware-Update zu installieren. Du wirst die Micro-SD-Karte mit
  Hilfe deines PCs beschreiben. Viele PCs haben jedoch kein
  Einschubfach f�r Micro-SD-Karten, sondern nur f�r SD-Karten. Du
  wirst also einen Adapter ben�tigen. Bei vielen Micro-SD-Karten ist
  dieser bereits beim Kauf der Micro-SD-Karte mit dabei.

* Optional: __SSID und Passwort des Heimnetztes__, damit der HuCon mit
  deinem Heimnetzwerk und dem Internet verbunden werden kann.

Ohne die Micro-SD-Karte wirst du i.d.R. nicht in der Lage sein, eine
neue Firmware und die Programmierumgebung auf dem HuCon zu
installieren. Du kannst dann zwar grunds�tzlich auf den HuCon
zugreifen (�ber eine Linux/OpenWrt-Shell), aber du wirst nicht in der
Lage sein, ihn �ber die Web-Oberfl�che zu programmieren.

Ohne den Zugang zu deinem Heimnetzwerk wirst du nicht in der Lage
sein, �ber deinen HuCon ins Internet zu kommen bzw. �ber dein
Heimnetzwerk auf deinen HuCon zuzugreifen. Da kannst dich aber
trotzdem �ber den WLAN AP des HuCon von deinem PC/Web-Browser aus mit
dem HuCon direkt via WLAN verbinden und ihn �ber die Web-Anwendung
programmieren. Einige Funktionen der HuCon-Web-Anwendung werden jedoch
aufgrund der fehlenden Internetverbindung nicht voll funktionieren.

## Inbetriebnahme

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Der HuCon bietet ab Werk einen WLAN Access Point (AP). Sobald der
HuCon gestartet ist, kannst du dich von einem WLAN-f�higen Ger�t
(z.B. PC, Tablet, Smartphone) mit dem HuCon verbinden.

Der WLAN AP hat ab Werk das __voreingestellte__ __Standardpasswort__
`12345678`, das man im Internet leicht via Google finden kann. Sobald
du den HuCon startest (d.h. mit Strom versorgst), k�nnen Leute in
deiner Umgebung ebenfalls auf den WLAN AP deines HuCon zugreifen und
sich mit dem WLAN AP __verbinden__.

Du solltest daher umgehend das WLAN AP Passwort �ndern, sobald du den
HuCon das erste Mal angeschaltet hast. Wie du das Passwort �nderst,
erf�hrst du weiter unten in diesem Text.

---------------------------------------------------------------------

Nachdem du den HuCon zusammengesetzt hast, musst du ihn �ber ein
Micro-USB-Kabel mit Strom versorgen. Sobald der HuCon an eine
Stromquelle angeschlossen ist, startet der HuCon. Du kannst den HuCon
jederzeit auch wieder von der Stromquelle trennen. Er schaltet sich
dann sofort aus. Bedenke jedoch, dass beim Ausschalten alle nicht
gesicherten Daten verloren gehen.

Um den HuCon mit Strom zu versorgen, kannst du ihn mit dem
Micro-USB-Kabel sowohl an ein USB-Netzger�t oder einen PC
anschlie�en. Wenn du ihn an einen PC anschlie�t, hast du die
M�glichkeit, anschlie�end �ber das Micro-USB-Kabel (serielle
Schnittstelle) auf den HuCon zuzugreifen, um z.B. eine neue Firmware
zu installieren oder den HuCon �ber das Hausnetz mit dem Internet zu
verbinden.

## Zugang

Du hast grunds�tzlich folgende M�glichkeiten, auf den HuCon
zuzugreifen, um z.B. das Firmware-Update durchzuf�hren.

### Micro-USB-Kabel

Wenn du den HuCon �ber ein Micro-USB-Kabel an deinen PC anschlie�t,
kannst du anschlie�end �ber das Kabel auf die *Konsole* des HuCon
zugreifen. Man nennt diese Konsole auch eine *Linux Shell*. Das
Linux-artige Betriebssystem, das auf dem HuCon bzw. dem Omega2+ l�uft,
hei�t __OpenWrt__.

In die Shell kannst du Befehle eingeben, mit denen du den HuCon
vollst�ndig kontrollieren kannst. F�r den Zugriff auf die Konsole
ben�tigst du weder eine Benutzerkennung noch ein Passwort. Du
verbindest dich automatisch als *Super-User* (`root`). Dieser
Super-User hat alle Rechte auf dem HuCon.

Du hast �ber die Konsole zwar die volle Kontrolle �ber den HuCon, du
kannst bei dieser Art des Zugangs jedoch nicht mit deinem Web-Browser
auf den Web-Server und die Programmierumgebung des HuCon
zugreifen. Dazu ben�tigst du einen Netzwerk-Zugang zu dem HuCon. Wie
du diesen herstellst, wird in den folgenden Abschnitten dieses Texts
erl�utert.

Der Zugang �ber das Micro-USB-Kabel auf die Konsole ist jedoch sehr
wichtig, falls die anderen Zugangsm�glichkeiten, die im folgenden
beschrieben werden, einmal nicht funktionieren. Das kann z.B. der Fall
sein, wenn du einmal versehentlich die WLAN Konfiguration des HuCon
falsch eingestellt hast und dich dann nicht mehr �ber WLAN mit dem
HuCon verbinden kannst.

Du solltest daher den Zugang �ber das Micro-USB-Kabel zumindest
einmalig einrichten und __sicherstellen__, dass dieser Zugang f�r dich
__funktioniert__.

Du kannst dich �brigens gleichzeitig �ber verschiedene Arten mit
deinem HuCon verbinden. D.h., du kannst dich sowohl �ber das
Micro-USB-Kabel mit der Konsole verbinen, als auch �ber WLAN
(vgl. unten).

__Wichtig:__ �ber die Konsole kannst du nun auch das
__voreingestellte__ __Standardpasswort__ des WLAN AP __�ndern__.

### WLAN Access Point (WLAN AP)

Da der HuCon ab Werk einen WLAN AP anbietet, kannst du deine Endger�te
(PC, Tablet, Smartphone oder auch einen anderen HuCon) mit diesem WLAN
AP verbinden. Das f�hrt dazu, dass das verbundene Endger�t in das
__Netzwerk__ __aufgenommen__ wird, das der HuCon bereitstellt. Je mehr
Endger�te sich mit diesem WLAN AP verbinden, desto mehr Teilnehmer hat
dieses Netzwerk.

Sobald ein Endger�t in dem Netzwerk des HuCon aufgenommen ist, kannst
du von diesem Endger�t auf __alle__ __Netzwerk-Dienste__ zugreifen,
die in diesem Netzwerk angeboten werden. Das bedeutet, dass auch
Netzwerk-Dienste, die auf den verbundenen Endger�ten (d.h. den
__Teilnehmern__ des Netzwerks) laufen, von __allen__ __anderen__
__Teilnehmern__ aus angesprochen werden k�nnen. I.d.R. sch�tzen sich
Endger�te vor solchen ungewollten Zugriffen (z.B. durch eine Firewall
auf dem Endger�t). Du solltest dir aber bewusst sein, dass diese
Zugriffe im Prinzip m�glich sind und dass du Ma�nahmen (wie z.B. eine
Firewall) ergreifen musst, damit ungewollte Zugriffe unterbunden
werden.

Das musst du ber�cksichtigen, wenn/falls du dein Endger�t und/oder
deinen HuCon mit Netzwerken verbindest, die du nicht kennst bzw. die
du nicht selber betreibst und deren Teilnehmer du nicht kennst.

Da der HuCon selbst auch immer ein Teilnehmer dieses Netzwerks (d.h.,
seines eigenen WLAN Netzwerks) ist, kannst du somit von deinem
verbundenen Endger�t auch auf die Netzwerk-Dienste des HuCon
zugreifen.

Das bedeutet z.B., dass du mit einem Web-Browser auf deinem Endger�t
(deinem PC) auf den Web-Server des HuCon zugreifen kannst, �ber den du
den HuCon dann programmieren kannst. Der Web-Server ist so ein
Netzwerk-Dienst, der auf dem HuCon l�uft und vom HuCon im Netzwerk
angeboten wird.

Und du kannst von deinem verbundenen PC (Endger�t) aus eine
__Netzwerk-Konsole__ (sog. *Shell*) �ffnen. Dabei handelt es sich
ebenfalls um einen Netzwerk-Dienst, der vom HuCon angeboten wird. �ber
diese Netzwerk-Konsole hast du wiederum alle M�glichkeiten, den HuCon
zu kontrollieren. Zum �ffnen der Netzwerk-Konsole ben�tigst du auf
deinem PC jedoch eine passende Software (z.B. Putty).

Im Gegensatz zu dem Zugang �ber das Micro-USB-Kabel und die Konsole,
musst du dich beim �ffnen der Netzwerk-Konsole jedoch mit
__Benutzernamen__ und __Passwort__ __anmelden__. Solange du noch nicht
selber neue Benutzer auf dem HuCon angelegt hast, musst du dich mit
der vorinstallierten Benutzerkennung `root` und dem
__voreingestellten__ __Standardpasswort__ `onioneer` anmelden.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Du wirst deinen HuCon h�chstwahrscheinlich in Zukunft auch mit
Netzwerken verbinden, bei denen du nicht sicher sein kannst, wer ganz
genau Zugriff auf das Netzwerk hat. Alle Teilnehmer dieser Netzewerke
k�nnen sich dann �ber das Netzwerk, mit dem dein HuCon verbunden ist,
mit `root`/`onioneer` auf der Netzwerk-Konsole __deines__ __HuCon__
__anmelden__ (vgl. oben). Sie h�tten damit dann die __volle__
__Kontrolle__ �ber deinen HuCon. Das ist nat�rlich nicht gut.

Du solltest daher __umgehend__ das `root` Passwort �ndern, sobald du
den HuCon das erste Mal angeschaltet hast. Du kannst das `root`
Passwort (jederzeit und immer wieder) �ber die Netzwerk-Konsole
und/oder die Micro-USB-Kabel gebundene Konsole �ndern.

---------------------------------------------------------------------

Sobald du dich mit dem WLAN AP des HuCon verbunden hast, ist dein
Endger�t zwar nun Teilnehmer des HuCon Netzwerks, aber du hast dann
von deinem Endger�t aus keinen Zugriff auf das Internet mehr. Das
liegt daran, dass dein Endger�t sich immer nur mit __einem__ WLAN AP
zur Zeit verbinden kann und dein HuCon bisher keine Verbindung zum
Internet hat, �ber die er dein Endger�t mit dem Internet verbinden
k�nnte.

Falls du bei deinen Arbeiten mit dem HuCon von deinem Endger�t (PC)
aus __gleichzeitig__ auch auf das Internet zugreifen k�nnen m�chtest,
hast du folgende Optionen:

* du verwendest einfach ein zweites Endger�t f�r den Zugriff auf das
  Internet. Da viele Haushalte heutzutage i.d.R. �ber mehrere
  Internet-f�hige Endger�te inkl. Web-Browser verf�gen, hast du
  wahrscheinlich auch die M�glichkeit, einen zweiten PC, ein
  Smartphone oder ein Tablet zum Surfen im Web zu verwenden. Diese
  Option ist auch dann n�tzlich, falls du Probleme bei der
  Konfiguration der Anbindung deines HuCon an dein Heimnetz WLAN AP
  hast und im Internet nach hilfreicher Dokumentation suchen m�chtest.

* du verbindest dein Endger�t, das mit dem HuCon WLAN AP verbunden
  ist, zus�tzlich �ber ein __Netzwerk-Kabel__ (Ethernet-Kabel) mit
  deinem Heimnetzwerk. Diese Option hast du i.d.R. nur f�r PCs, aber
  z.B. nicht f�r Smartphones, da diese �ber keine Ethernet-Buchse
  verf�gen. Diese Optioen ist h�ufig jedoch unpraktisch, weil viele
  Haushalte heutzutage nicht �ber eine Ethernet-Verkabelung im Haus
  verf�gen und du somit mit deinem PC in der N�he eures Heim-Routers
  sitzen m�sstest (der sich u.U. an einer schlecht zug�nglichen Stelle
  im Haus befindet).

* du verbindest deinen HuCon mit deinem WLAN Heimnetzwerk, wie im
  folgenden beschrieben.

### WLAN Heimnetzwerk

Dein Heimnetzwerk bietet ebenfalls einen WLAN AP an und mit diesem
kann sich der HuCon verbinden. Der HuCon befindet sich anschlie�end in
__zwei__ __Netzwerken__ __gleichzeitig__.

Der HuCon leitet nun alle Daten, die von deinem Endger�t aus ins
Internet oder dein Heimnetzwerk gehen sollen (und von deinem Endger�t
erstmal in das Netz des HuCon gesendet werden), zum WLAN AP deines
Heimnetzwerks weiter. Er __routet__ die Daten (in beide Richtungen).

Um deinen HuCon mit dem WLAN AP deines Heimnetzwerks zu verbinden,
musst du u.U. die __SSID__ des WLAN AP erfragen und du musst das
__Passwort__ des WLAN AP kennen. Beide Angaben ben�tigst du, um sie in
die Konfiguration des HuCon einzutragen.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Bitte bedenke, dass du das __WLAN Passwort__ __unverschl�sselt__ in
den HuCon eintragen wirst und dass damit jeder, der Zugriff auf die
Konsole/Shell deines HuCon hat (weil er vielleicht das
vorkonfigurierte `root` Passwort kennt), damit auch Zugriff auf dein
Heimnetz hat (vgl. oben).

Ebenso bekommt jeder, der das __voreingestellte__ WLAN AP Passwort
deines HuCon kennt, durch das Rouing des HuCon Zugriff auf dein
Heimnetzwerk (vgl. oben).

Dein HuCon verh�lt sich wie ein zweiter Server/Router in deinem
Heimnetz und muss damit �hnlich stark abgesichert werden. Du solltest
daher (wie oben beschrieben) __unbedingt__ sowohl das voreingestellte
__WLAN__ __AP__ __Passwort__ als auch das __voreingestellte__ `root`
__Passwort__ �ndern.

---------------------------------------------------------------------

Sobald du den HuCon mit dem WLAN AP deines Heimnetzwerks verbunden
hast, brauchst du dich von deinem Endger�t aus nicht mehr (wie oben
beschrieben) direkt mit dem WLAN AP des HuCon zu verbinden, um auf
dessen Netzwerk-Dienste zuzugreifen. Stattdessen kannst du dich nun
wie gew�hnlich mit dem WLAN AP deines Heimnetzes verbinden und dann
�ber das __Heimnetzwerk__ auf den HuCon zugreifen.

Es ist m�glich, dass der Server/Router deines Heimnetzes so
konfiguriert ist, dass der HuCon zwar Daten ins Heimnetz und damit ins
Internet transportieren kann, dass jedoch kein Zugriff aus dem
Heimnetz auf den HuCon m�glich ist. In diesem Fall musst du mit deinen
Eltern sprechen und sie bitten, den Server/Router entsprechend
umzukonfigurieren.

## Firmware-Update

Nachdem du den Zugang zu einer (Netzwerk-)Konsole/Shell deines HuCon
hergestellt hast (vgl. oben), kannst du die Firmware des HuCon auf den
aktuellen Stand bringen.

Du hast folgende M�glichkeiten:

* du kannst dir eine Firmware-Version f�r den Omega2+ direkt vom
  Hersteller Onion runterladen und diese installieren. Damit hast du
  dann aber __keine__ __vorbereitete__ __Programmierumgebung__ f�r den
  HuCon zur Verf�gung. Du kannst anschlie�end jedoch selber weitere
  Programme installieren, mit deren Hilfe du den Omega2+/HuCon
  programmieren kannst. Diese Option wirst du i.d.R. aber erst nutzen,
  wenn du schon HuCon-Experte geworden bist und mit verschiedenen
  Firmware-Versionen und Programmen experimentieren m�chtest.

* du l�dtst dir die aktuelle Firmware-Version f�r den Omega2+/HuCon
  __inkl.__ __Programmierumgebung__ von unserer Projektseite runter
  und installierst diese. Damit hast du dann alles, was du f�r die
  Programmierung des HuCon brauchst und kannst gleich loslegen.

In jedem Fall ist der prinzipielle Ablauf f�r ein Firmware-Update
immer der gleiche:

* Du l�dtst dir eine Firmware-Version (als Datei) aus dem Internet
  runter. Das kannst du z.B. von deinem PC aus mit einem Web-Browser
  tun.

* Du speicherst diese (Firmware-)Datei auf einer Micro-SD-Karte.

* Du steckst die Micro-SD-Karte in deinen HuCon.

* Du startest auf dem HuCon in einer Konsole/Shell das
  Firmware-Update.

Beim Firmware-Update wird der Inhalt der Firmware-Datei in den
*Flash-Speicher* __des__ __HuCon__ __geschrieben__. Dieser
Flash-Speicher ist ein __permanenter__ __Speicher__, dessen Zustand
auch erhalten bleibt, wenn man den HuCon ausschaltet.

Der Flash-Speicher ersetzt die (beim HuCon fehlende) Festplatte, die
dein PC nutzt, um beim Start von der Festplatte das
sog. __Betriebssystem__ (z.B. Windows) zu laden. Der HuCon l�dt sein
Betriebssystem (und weitere Programme) aus dem Flash-Speicher. Das
Betriebssystem des HuCon hei�t OpenWrt.

Im Flash-Speicher wird aber nicht nur das Betriebssysem des HuCon
gespeichert. Du kannst den Flash-Speicher auch nutzen, um deine
eigenen Daten (z.B. deine Programme) dort zu speichern.

Neben dem __eingebauten__ __Flash-Speicher__ des HuCon kannst du
weitere __externe__ persistente Speichermedien (wie z.B. eine
Micro-SD-Karte) nutzen, um auf ihnen Daten zu speichern.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Beim Firmware-Update __werden__ __alle__ __Daten__ __gel�scht__, die
zuvor im Flash-Speicher standen. Die Daten auf anderen (externen)
Speichermedien sind von einem Firmware-Update nicht betroffen.

Du solltest daher unbedingt eine __Datensicherung__ (ein *Backup*) von
jenen Daten machen, die du vielleicht schon im Flash-Speicher abgelegt
hast. Dies sind vor allem auch die __Konfigurationsdaten__ unter
`/etc/config`, in denen u.a. die Angaben zu HuCon-WLAN AP und
WLAN-Anbindung zu deinem Heimnetz stehen.

Das Firmware-Update-Tool des HuCon ist in der Lage, eine solche
Datensicherung f�r dich durchzuf�hren. Bei der Datensicherung handelt
es sich um eine Datei, in der alle gesicherten Daten (d.h. die
einzelnen Dateien) zusammegefasst sind.

Diese Datensicherungsdatei musst du irgendwo speichern, wo du sp�ter
auf sie zugreifen kannst, falls du eine Datenr�cksicherung (einen
*Restore*) durchf�hren m�chtest. Du kannst die Datensicherungsdatei
z.B. auf der Micro-SD-Karte speichern, auf der du auch die
Firmware-Datei gespeichert hast.

Um f�r den Fall der F�lle vorbereitet zu sein, solltest du dich damit
vertraut machen, wie du aus der Datensicherungsdatei einzelne Dateien
wiederherstellst (d.h. zur�ck sicherst). Ansonsten nutzt dir die
Datensicherungsdatei nichts, falls du nach einem missgl�ckten
Firmware-Update die Datensicherung ben�tigst, um deinen HuCon wieder
funktionsf�hig zu bekommen.

---------------------------------------------------------------------

## Weitere Software installieren

Nachdem du die Firmware im Flash-Speicher des HuCon auf den
gew�nschten Stand gebracht hast, kannst du nun weitere
Software/Programme installieren, falls du m�chtest.

Wenn du den HuCon das erste Mal in Betrieb nimmst, wirst du das aber
eher nicht tun und kannst diesen Abschnitt gerne �berspringen und
sp�ter nochmal hier weiterlesen, wenn du dich mit dem HuCon vertraut
gemacht hast.

Viele Programme werden in Form von vorbereiteten __Paketen__
angeboten. Diese Pakete k�nnen von einem __Paketmanager__ genutzt
werden, um das gew�nschte Programm auf deinem HuCon zu
installieren. Der Paketmanager von OpenWrt hei�t `opkg`.

Die Pakete enthalten nicht nur die eigentlichen Programme, die du
installieren m�chtest, sondern zus�tzliche Information dar�ber, ob du
weitere Software (h�ufig sog. Bibliotheken) ben�tigst, um das Programm
�berhaupt verwenden zu k�nnen. Der Paketmanager nutzt die
Informationen �ber diese __Abh�ngigkeiten__, um w�hrend der
Installation automatisch die ben�tigte Software inkl. aller
Abh�ngigkeiten aus dem Internet zu laden und diese insgesamt auf
deinem HuCon zu installieren.

W�hrend der Installation der Pakete/Abh�ngigkeiten ben�tigt `opkg`
daher einen Internetzugang. D.h., du musst deinen HuCon erst �ber dein
Heimnetz mit dem Internet verbinden (vgl. oben), bevor du die Software
installieren kannst.

Es gibt zwar auch die M�glichkeit, dem `opkg`die
(Installations-)Pakete z.B. �ber eine Micro-SD-Karte zur Verf�gung zu
stellen (sog. Offline-Installation), das ist aber
umst�ndlicher/komplizierter. In diesem Fall musst du selber alle
n�tigen Installationspakete (`ipk`-Dateien) aus dem Internet
runterladen (z.B. �ber deinen PC) und diese dann auf der
Micro-SD-Karte speichern.

### Installation via Quelltext

Programme werden aber nicht nur in Form von vorbereiteten Paketen
angeboten, sondern h�ufig als __(Programm-) Quelltext__. Es kann auch
vorkommen, dass du zwar ein Paket findest, das du suchst, dass die
Paket-Version aber nicht zu deinem HuCon passt (z.B. weil das Paket zu
alt ist).

In diesem Fall musst du den Quelltext aus dem Internet runterladen und
auf deinem HuCon speichern. Jenachdem in welcher Programmiersprache
das Programm geschrieben ist, musst du es nun noch __bauen__
(bzw. kompilieren) und installieren. Die
__Bau-/Installations-Anleitung__ ist i.d.R. Teil des Quelltextes.

Zum Bauen ben�tigst du auch ein Programm: einen Compiler (z.B. `gcc`)
und h�ufig auch ein Build-Tool (wie z.B. `make`). Auch f�r diese gibt
es i.d.R. (Installations-) Pakete. Einige Compiler und Build-Tools
sind u.U. auch schon in der Firmware des HuCon enthalten, so dass du
sie gar nicht selber zu installieren brauchst.

Es gibt Programmiersprachen, deren Quellen man nicht zu kompilieren
braucht (z.B. JavaScript). Stattdessen verwendet man einen
__Interpreter__ (z.B. NodeJS f�r JavaScript). In solchen F�llen
brauchst du den Interpreter nur einmal zu installieren. Alle
(JavaScript-) Programme, die du dann ausf�hren m�chtest, kannst du
einfach irgendwo ablegen (z.B. Flash-Speiche oder Micro-SD-Karte). Zum
Ausf�hren des Programms rufst du dann den Interprter auf und gibst
dabei an, welche Quelldatei der Interpreter ausf�hren soll.

### Das Dateisystem erweitern

Ein __Dateisystem__ ist ein Speicher, in dem __Verzeichnisse__ und
__Dateien__ permanent abgelegt werden k�nnen. Unter Windows spricht
man h�ufig von *Laufwerk C:*.

Das Firmware-Image des HuCon enth�lt schon ein solches Dateisystem. Da
es im Flash-Speicher des HuCon liegt, bleibt der Zustand des
Dateisystems (also die Inhalt der Verzeichnisse und Dateien) auch
erhalten, wenn man die Stromversorgung unterbricht. Wenn man den Strom
wieder anschaltet, sind alle Dateien noch da. Genau wie auf der
Festplatte deines PC.

Programme, die du �ber den Paketmanager `opkg` installierst, werden an
einer __vorbestimmten__ Stelle im Dateisystem
abgelegt/installiert. Dieser Teil des Dateisystems befindet sich
ebenfalls auf dem internen Flash-Speicher des HuCon.

Wenn du nun sehr viele Programme installierst oder viele Dateien auf
dem HuCon im Dateisystem abspeicherst, wird dir irgendwann der
Speicherplatz in dem Flash-Speicher ausgehen.

Es gibt aber das Tool __Extroot__ [1], mit dem du den Speicher deiner
Micro-SD-Karte in das Dateisystem *einh�ngen* kannst. So kannst du den
verf�gbaren Speicher des Dateisystems __erheblich__ __vergr��ern__, so
dass du mehr Programme �ber den `opkg` installieren kannst. Du musst
dann aber nat�rlich immer deine Micro-SD-Karte in den HuCon
einstecken, wenn du jene Programme und Daten nutzen m�chtest, die sich
in dem *eingeh�ngten* Teil des Dateisystems befinden.

[1] https://openwrt.org/docs/guide-user/additional-software/extroot_configuration

## Geschafft!

__GRATULATION!__ __Du hast es geschafft!__

Wenn du hier angekommen bist, hast du

* den HuCon zusammengebaut

* ihn mit Strom versorgt

* Zugang zu deinem HuCon �ber ein Micro-USB-Kabel hergestellt

* das voreingestellte WLAN AP Passwort des HuCon ge�ndert

* das voreingestellte `root` Passwort ge�ndert

* mit Hilfe einer Micro-SD-Karte eine neue Firmware-Version installiert

* deinen PC mit dem WLAN AP des HuCon verbunden

* den HuCon mit dem WLAN AP deines Heimnetzwerk verbunden

* Zugang von deinem PC zu den Netzwerkdiensten deines HuCon sowohl
  �ber den WLAN AP des HuCon als auch �ber dein Heimnetzwerk
  hergestellt

* vielleicht sogar mit `opkg` ein paar zus�tzliche Programmpakete
  installiert

Wenn du alles richtig eingestellt hast, kannst du nun von deinem PC
aus einen Web-Browser nutzen, um dich mit dem Web-Server des HuCon zu
verbinden und deinen HuCon �ber die Web-Oberfl�che programmieren.

__Viel Spa� dabei!__
