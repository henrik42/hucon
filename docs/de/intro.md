# Einführung

Der *Human Controlled Robot*, kurz HuCon, ist ein Bausatz, der
entwickelt wurde, um Kindern beizubringen, wie sie einen
selbstgebauten Roboter programmieren.

## Programmierung

Die Programmierung erfolgt über eine Web-Anwendung
(**Programmierumgebung**), die auf dem HuCon installiert ist und dort
läuft. Die Kinder benötigen für den Zugang zu dieser Web-Anwendung und
der Programmierumgebung nur einen Web-Browser (z.B. Firefox oder
Chrome) und den HuCon. Der Web-Browser kann auf einem PC, einem Tablet
oder einem Smartphone laufen. Es ist keine zusätzliche Software nötig.

## Bausatz

Der HuCon Bausatz umfasst

* einen [Omega2+](https://onion.io/omega2/) Prozessor
* mehrere Platinen
* zwei Servomotoren

Bevor der HuCon verwendet werden kann, müssen die Teile des Bausatzes
__zusammengesetzt__ werden. Außerdem wird die Software, die ab Werk in
dem Omega2+ installiert ist (die
sog. [Firmware](https://github.com/OnionIoT/source)), durch eine
Version __ersetzt__, in der die Programmierumgebung des HuCon
enthalten ist
([Firmware-Update](https://docs.onion.io/omega2-docs/Firmware-Flashing-from-USB-storage.html);
vgl. unten). Anschließend ist der HuCon dann voll einsatzfähig und
kann programmiert werden.

## Vorbereitung

Bevor du den HuCon in Betrieb nimmst, solltest du folgende Dinge zur
Hand haben (Details zu den einzelnen Punkten werden unten im Text
erläutert):

* __einen PC__ (besser mit Internetanschluss) mit einem
  Terminalprogramm, das für die serielle Kommunikation/Schnittstelle
  geeignet ist (z.B. [MobaXterm](https://mobaxterm.mobatek.net/) oder
  [Putty](https://www.putty.org/))

* ein __Micro-USB-Kabel__, um den PC mit dem HuCon zu verbinden und
  damit den HuCon
  [gleichzeitig mit Strom zu versorgen](https://de.wikipedia.org/wiki/Universal_Serial_Bus#Spannungsversorgung)

* (optional) eine __Micro-SD-Karte__ (8 GB reichen), um ein
  Firmware-Update zu installieren und Datensicherungen zu
  erstellen. Du wirst die Micro-SD-Karte mit Hilfe deines PCs
  beschreiben. Viele PCs haben jedoch kein Einschubfach für
  Micro-SD-Karten, sondern nur für SD-Karten. Du wirst also einen
  [Adapter](https://de.wikipedia.org/wiki/MicroSD#Kompatibilit%C3%A4t)
  benötigen. Bei vielen Micro-SD-Karten ist dieser bereits beim Kauf
  der Micro-SD-Karte mit dabei.

* (optional)
  __[SSID und Passwort des Heimnetztes](https://de.wikipedia.org/wiki/Service_Set#SSID,_ESSID_und_BSSID)__,
  damit der HuCon mit deinem Heimnetzwerk und dem Internet verbunden
  werden kann.

Ohne die Micro-SD-Karte wirst du i.d.R. nicht in der Lage sein, eine
neue Firmware und die Programmierumgebung auf dem HuCon zu
installieren. Du kannst dann zwar grundsätzlich auf den HuCon
zugreifen (über eine
[Linux/OpenWrt-Shell](https://openwrt.org/docs/techref/hardware/port.serial)),
aber du wirst nicht in der Lage sein, ihn über die Web-Oberfläche zu
programmieren.

Ohne den Zugang zu deinem Heimnetzwerk wirst du nicht in der Lage
sein, über deinen HuCon ins Internet zu kommen bzw. über dein
Heimnetzwerk auf deinen HuCon zuzugreifen. Da kannst dich aber
trotzdem über den WLAN AP des HuCon von deinem PC/Web-Browser aus mit
dem HuCon direkt via WLAN verbinden und ihn über die Web-Anwendung
programmieren. Einige Funktionen der HuCon-Web-Anwendung werden jedoch
aufgrund der fehlenden Internetverbindung nicht voll funktionieren.

## Inbetriebnahme

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Der HuCon bietet ab Werk einen WLAN Access Point (AP). Sobald der
HuCon gestartet ist, kannst du dich von einem WLAN-fähigen Gerät
(z.B. PC, Tablet, Smartphone) mit dem HuCon verbinden.

Der WLAN AP hat ab Werk das __voreingestellte__ __Standardpasswort__
`12345678`, das man im Internet leicht via Google finden kann. Sobald
du den HuCon startest (d.h. mit Strom versorgst), können Leute in
deiner Umgebung ebenfalls auf den WLAN AP deines HuCon zugreifen und
sich mit dem WLAN AP __verbinden__.

Du solltest daher umgehend das WLAN AP Passwort ändern, sobald du den
HuCon das erste Mal angeschaltet hast. Wie du das Passwort änderst,
erfährst du weiter unten in diesem Text.

---------------------------------------------------------------------

Nachdem du den HuCon zusammengesetzt hast, musst du ihn über ein
Micro-USB-Kabel mit Strom versorgen. Sobald der HuCon an eine
Stromquelle angeschlossen ist, startet der HuCon. Du kannst den HuCon
jederzeit auch wieder von der Stromquelle trennen. Er schaltet sich
dann sofort aus. Bedenke jedoch, dass beim Ausschalten alle nicht
gesicherten Daten verloren gehen.

Um den HuCon mit Strom zu versorgen, kannst du ihn mit dem
Micro-USB-Kabel sowohl an ein USB-Netzgerät oder einen PC
anschließen. Wenn du ihn an einen PC anschließt, hast du die
Möglichkeit, anschließend über das Micro-USB-Kabel (serielle
Schnittstelle) auf den HuCon zuzugreifen, um z.B. eine neue Firmware
zu installieren oder den HuCon über das Hausnetz mit dem Internet zu
verbinden.

## Zugang

Du hast grundsätzlich folgende Möglichkeiten, auf den HuCon
zuzugreifen, um z.B. das Firmware-Update durchzuführen.

### Micro-USB-Kabel

Wenn du den HuCon über ein Micro-USB-Kabel an deinen PC anschließt,
kannst du anschließend über das Kabel auf die *Konsole* des HuCon
zugreifen. Man nennt diese Konsole auch eine *Linux Shell*. Das
Linux-artige Betriebssystem, das auf dem HuCon bzw. dem Omega2+ läuft,
heißt __OpenWrt__.

In die Shell kannst du Befehle eingeben, mit denen du den HuCon
vollständig kontrollieren kannst. Für den Zugriff auf die Konsole
benötigst du weder eine Benutzerkennung noch ein Passwort. Du
verbindest dich automatisch als *Super-User* (`root`). Dieser
Super-User hat alle Rechte auf dem HuCon.

Du hast über die Konsole zwar die volle Kontrolle über den HuCon, du
kannst bei dieser Art des Zugangs jedoch nicht mit deinem Web-Browser
auf den Web-Server und die Programmierumgebung des HuCon
zugreifen. Dazu benötigst du einen Netzwerk-Zugang zu dem HuCon. Wie
du diesen herstellst, wird in den folgenden Abschnitten dieses Texts
erläutert.

Der Zugang über das Micro-USB-Kabel auf die Konsole ist jedoch sehr
wichtig, falls die anderen Zugangsmöglichkeiten, die im folgenden
beschrieben werden, einmal nicht funktionieren. Das kann z.B. der Fall
sein, wenn du einmal versehentlich die WLAN Konfiguration des HuCon
falsch eingestellt hast und dich dann nicht mehr über WLAN mit dem
HuCon verbinden kannst.

Du solltest daher den Zugang über das Micro-USB-Kabel zumindest
einmalig einrichten und __sicherstellen__, dass dieser Zugang für dich
__funktioniert__.

Du kannst dich übrigens gleichzeitig über verschiedene Arten mit
deinem HuCon verbinden. D.h., du kannst dich sowohl über das
Micro-USB-Kabel mit der Konsole verbinen, als auch über WLAN
(vgl. unten).

__Wichtig:__ Über die Konsole kannst du nun auch das
__voreingestellte__ __Standardpasswort__ des WLAN AP __ändern__.

### WLAN Access Point (WLAN AP)

Da der HuCon ab Werk einen WLAN AP anbietet, kannst du deine Endgeräte
(PC, Tablet, Smartphone oder auch einen anderen HuCon) mit diesem WLAN
AP verbinden. Das führt dazu, dass das verbundene Endgerät in das
__Netzwerk__ __aufgenommen__ wird, das der HuCon bereitstellt. Je mehr
Endgeräte sich mit diesem WLAN AP verbinden, desto mehr Teilnehmer hat
dieses Netzwerk.

Sobald ein Endgerät in dem Netzwerk des HuCon aufgenommen ist, kannst
du von diesem Endgerät auf __alle__ __Netzwerk-Dienste__ zugreifen,
die in diesem Netzwerk angeboten werden. Das bedeutet, dass auch
Netzwerk-Dienste, die auf den verbundenen Endgeräten (d.h. den
__Teilnehmern__ des Netzwerks) laufen, von __allen__ __anderen__
__Teilnehmern__ aus angesprochen werden können. I.d.R. schützen sich
Endgeräte vor solchen ungewollten Zugriffen (z.B. durch eine Firewall
auf dem Endgerät). Du solltest dir aber bewusst sein, dass diese
Zugriffe im Prinzip möglich sind und dass du Maßnahmen (wie z.B. eine
Firewall) ergreifen musst, damit ungewollte Zugriffe unterbunden
werden.

Das musst du berücksichtigen, wenn/falls du dein Endgerät und/oder
deinen HuCon mit Netzwerken verbindest, die du nicht kennst bzw. die
du nicht selber betreibst und deren Teilnehmer du nicht kennst.

Da der HuCon selbst auch immer ein Teilnehmer dieses Netzwerks (d.h.,
seines eigenen WLAN Netzwerks) ist, kannst du somit von deinem
verbundenen Endgerät auch auf die Netzwerk-Dienste des HuCon
zugreifen.

Das bedeutet z.B., dass du mit einem Web-Browser auf deinem Endgerät
(deinem PC) auf den Web-Server des HuCon zugreifen kannst, über den du
den HuCon dann programmieren kannst. Der Web-Server ist so ein
Netzwerk-Dienst, der auf dem HuCon läuft und vom HuCon im Netzwerk
angeboten wird.

Und du kannst von deinem verbundenen PC (Endgerät) aus eine
__Netzwerk-Konsole__ (sog. *Shell*) öffnen. Dabei handelt es sich
ebenfalls um einen Netzwerk-Dienst, der vom HuCon angeboten wird. Über
diese Netzwerk-Konsole hast du wiederum alle Möglichkeiten, den HuCon
zu kontrollieren. Zum Öffnen der Netzwerk-Konsole benötigst du auf
deinem PC jedoch eine passende Software (z.B. Putty).

Im Gegensatz zu dem Zugang über das Micro-USB-Kabel und die Konsole,
musst du dich beim Öffnen der Netzwerk-Konsole jedoch mit
__Benutzernamen__ und __Passwort__ __anmelden__. Solange du noch nicht
selber neue Benutzer auf dem HuCon angelegt hast, musst du dich mit
der vorinstallierten Benutzerkennung `root` und dem
__voreingestellten__ __Standardpasswort__ `onioneer` anmelden.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Du wirst deinen HuCon höchstwahrscheinlich in Zukunft auch mit
Netzwerken verbinden, bei denen du nicht sicher sein kannst, wer ganz
genau Zugriff auf das Netzwerk hat. Alle Teilnehmer dieser Netzewerke
können sich dann über das Netzwerk, mit dem dein HuCon verbunden ist,
mit `root`/`onioneer` auf der Netzwerk-Konsole __deines__ __HuCon__
__anmelden__ (vgl. oben). Sie hätten damit dann die __volle__
__Kontrolle__ über deinen HuCon. Das ist natürlich nicht gut.

Du solltest daher __umgehend__ das `root` Passwort ändern, sobald du
den HuCon das erste Mal angeschaltet hast. Du kannst das `root`
Passwort (jederzeit und immer wieder) über die Netzwerk-Konsole
und/oder die Micro-USB-Kabel gebundene Konsole ändern.

---------------------------------------------------------------------

Sobald du dich mit dem WLAN AP des HuCon verbunden hast, ist dein
Endgerät zwar nun Teilnehmer des HuCon Netzwerks, aber du hast dann
von deinem Endgerät aus keinen Zugriff auf das Internet mehr. Das
liegt daran, dass dein Endgerät sich immer nur mit __einem__ WLAN AP
zur Zeit verbinden kann und dein HuCon bisher keine Verbindung zum
Internet hat, über die er dein Endgerät mit dem Internet verbinden
könnte.

Falls du bei deinen Arbeiten mit dem HuCon von deinem Endgerät (PC)
aus __gleichzeitig__ auch auf das Internet zugreifen können möchtest,
hast du folgende Optionen:

* du verwendest einfach ein zweites Endgerät für den Zugriff auf das
  Internet. Da viele Haushalte heutzutage i.d.R. über mehrere
  Internet-fähige Endgeräte inkl. Web-Browser verfügen, hast du
  wahrscheinlich auch die Möglichkeit, einen zweiten PC, ein
  Smartphone oder ein Tablet zum Surfen im Web zu verwenden. Diese
  Option ist auch dann nützlich, falls du Probleme bei der
  Konfiguration der Anbindung deines HuCon an dein Heimnetz WLAN AP
  hast und im Internet nach hilfreicher Dokumentation suchen möchtest.

* du verbindest dein Endgerät, das mit dem HuCon WLAN AP verbunden
  ist, zusätzlich über ein __Netzwerk-Kabel__ (Ethernet-Kabel) mit
  deinem Heimnetzwerk. Diese Option hast du i.d.R. nur für PCs, aber
  z.B. nicht für Smartphones, da diese über keine Ethernet-Buchse
  verfügen. Diese Optioen ist häufig jedoch unpraktisch, weil viele
  Haushalte heutzutage nicht über eine Ethernet-Verkabelung im Haus
  verfügen und du somit mit deinem PC in der Nähe eures Heim-Routers
  sitzen müsstest (der sich u.U. an einer schlecht zugänglichen Stelle
  im Haus befindet).

* du verbindest deinen HuCon mit deinem WLAN Heimnetzwerk, wie im
  folgenden beschrieben.

### WLAN Heimnetzwerk

Dein Heimnetzwerk bietet ebenfalls einen WLAN AP an und mit diesem
kann sich der HuCon verbinden. Der HuCon befindet sich anschließend in
__zwei__ __Netzwerken__ __gleichzeitig__.

Der HuCon leitet nun alle Daten, die von deinem Endgerät aus ins
Internet oder dein Heimnetzwerk gehen sollen (und von deinem Endgerät
erstmal in das Netz des HuCon gesendet werden), zum WLAN AP deines
Heimnetzwerks weiter. Er __routet__ die Daten (in beide Richtungen).

Um deinen HuCon mit dem WLAN AP deines Heimnetzwerks zu verbinden,
musst du u.U. die __SSID__ des WLAN AP erfragen und du musst das
__Passwort__ des WLAN AP kennen. Beide Angaben benötigst du, um sie in
die Konfiguration des HuCon einzutragen.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Bitte bedenke, dass du das __WLAN Passwort__ __unverschlüsselt__ in
den HuCon eintragen wirst und dass damit jeder, der Zugriff auf die
Konsole/Shell deines HuCon hat (weil er vielleicht das
vorkonfigurierte `root` Passwort kennt), damit auch Zugriff auf dein
Heimnetz hat (vgl. oben).

Ebenso bekommt jeder, der das __voreingestellte__ WLAN AP Passwort
deines HuCon kennt, durch das Rouing des HuCon Zugriff auf dein
Heimnetzwerk (vgl. oben).

Dein HuCon verhält sich wie ein zweiter Server/Router in deinem
Heimnetz und muss damit ähnlich stark abgesichert werden. Du solltest
daher (wie oben beschrieben) __unbedingt__ sowohl das voreingestellte
__WLAN__ __AP__ __Passwort__ als auch das __voreingestellte__ `root`
__Passwort__ ändern.

---------------------------------------------------------------------

Sobald du den HuCon mit dem WLAN AP deines Heimnetzwerks verbunden
hast, brauchst du dich von deinem Endgerät aus nicht mehr (wie oben
beschrieben) direkt mit dem WLAN AP des HuCon zu verbinden, um auf
dessen Netzwerk-Dienste zuzugreifen. Stattdessen kannst du dich nun
wie gewöhnlich mit dem WLAN AP deines Heimnetzes verbinden und dann
über das __Heimnetzwerk__ auf den HuCon zugreifen.

Es ist möglich, dass der Server/Router deines Heimnetzes so
konfiguriert ist, dass der HuCon zwar Daten ins Heimnetz und damit ins
Internet transportieren kann, dass jedoch kein Zugriff aus dem
Heimnetz auf den HuCon möglich ist. In diesem Fall musst du mit deinen
Eltern sprechen und sie bitten, den Server/Router entsprechend
umzukonfigurieren.

## Firmware-Update

Nachdem du den Zugang zu einer (Netzwerk-)Konsole/Shell deines HuCon
hergestellt hast (vgl. oben), kannst du die Firmware des HuCon auf den
aktuellen Stand bringen.

Du hast folgende Möglichkeiten:

* du kannst dir eine Firmware-Version für den Omega2+ direkt vom
  Hersteller Onion runterladen und diese installieren. Damit hast du
  dann aber __keine__ __vorbereitete__ __Programmierumgebung__ für den
  HuCon zur Verfügung. Du kannst anschließend jedoch selber weitere
  Programme installieren, mit deren Hilfe du den Omega2+/HuCon
  programmieren kannst. Diese Option wirst du i.d.R. aber erst nutzen,
  wenn du schon HuCon-Experte geworden bist und mit verschiedenen
  Firmware-Versionen und Programmen experimentieren möchtest.

* du lädtst dir die aktuelle Firmware-Version für den Omega2+/HuCon
  __inkl.__ __Programmierumgebung__ von unserer Projektseite runter
  und installierst diese. Damit hast du dann alles, was du für die
  Programmierung des HuCon brauchst und kannst gleich loslegen.

In jedem Fall ist der prinzipielle Ablauf für ein Firmware-Update
immer der gleiche:

* Du lädtst dir eine Firmware-Version (als Datei) aus dem Internet
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
sog. __Betriebssystem__ (z.B. Windows) zu laden. Der HuCon lädt sein
Betriebssystem (und weitere Programme) aus dem Flash-Speicher. Das
Betriebssystem des HuCon heißt OpenWrt.

Im Flash-Speicher wird aber nicht nur das Betriebssysem des HuCon
gespeichert. Du kannst den Flash-Speicher auch nutzen, um deine
eigenen Daten (z.B. deine Programme) dort zu speichern.

Neben dem __eingebauten__ __Flash-Speicher__ des HuCon kannst du
weitere __externe__ persistente Speichermedien (wie z.B. eine
Micro-SD-Karte) nutzen, um auf ihnen Daten zu speichern.

---------------------------------------------------------------------
__WICHTIG__
---------------------------------------------------------------------

Beim Firmware-Update __werden__ __alle__ __Daten__ __gelöscht__, die
zuvor im Flash-Speicher standen. Die Daten auf anderen (externen)
Speichermedien sind von einem Firmware-Update nicht betroffen.

Du solltest daher unbedingt eine __Datensicherung__ (ein *Backup*) von
jenen Daten machen, die du vielleicht schon im Flash-Speicher abgelegt
hast. Dies sind vor allem auch die __Konfigurationsdaten__ unter
`/etc/config`, in denen u.a. die Angaben zu HuCon-WLAN AP und
WLAN-Anbindung zu deinem Heimnetz stehen.

Das Firmware-Update-Tool des HuCon ist in der Lage, eine solche
Datensicherung für dich durchzuführen. Bei der Datensicherung handelt
es sich um eine Datei, in der alle gesicherten Daten (d.h. die
einzelnen Dateien) zusammegefasst sind.

Diese Datensicherungsdatei musst du irgendwo speichern, wo du später
auf sie zugreifen kannst, falls du eine Datenrücksicherung (einen
*Restore*) durchführen möchtest. Du kannst die Datensicherungsdatei
z.B. auf der Micro-SD-Karte speichern, auf der du auch die
Firmware-Datei gespeichert hast.

Um für den Fall der Fälle vorbereitet zu sein, solltest du dich damit
vertraut machen, wie du aus der Datensicherungsdatei einzelne Dateien
wiederherstellst (d.h. zurück sicherst). Ansonsten nutzt dir die
Datensicherungsdatei nichts, falls du nach einem missglückten
Firmware-Update die Datensicherung benötigst, um deinen HuCon wieder
funktionsfähig zu bekommen.

---------------------------------------------------------------------

## Weitere Software installieren

Nachdem du die Firmware im Flash-Speicher des HuCon auf den
gewünschten Stand gebracht hast, kannst du nun weitere
Software/Programme installieren, falls du möchtest.

Wenn du den HuCon das erste Mal in Betrieb nimmst, wirst du das aber
eher nicht tun und kannst diesen Abschnitt gerne überspringen und
später nochmal hier weiterlesen, wenn du dich mit dem HuCon vertraut
gemacht hast.

Viele Programme werden in Form von vorbereiteten __Paketen__
angeboten. Diese Pakete können von einem __Paketmanager__ genutzt
werden, um das gewünschte Programm auf deinem HuCon zu
installieren. Der Paketmanager von OpenWrt heißt `opkg`.

Die Pakete enthalten nicht nur die eigentlichen Programme, die du
installieren möchtest, sondern zusätzliche Information darüber, ob du
weitere Software (häufig sog. Bibliotheken) benötigst, um das Programm
überhaupt verwenden zu können. Der Paketmanager nutzt die
Informationen über diese __Abhängigkeiten__, um während der
Installation automatisch die benötigte Software inkl. aller
Abhängigkeiten aus dem Internet zu laden und diese insgesamt auf
deinem HuCon zu installieren.

Während der Installation der Pakete/Abhängigkeiten benötigt `opkg`
daher einen Internetzugang. D.h., du musst deinen HuCon erst über dein
Heimnetz mit dem Internet verbinden (vgl. oben), bevor du die Software
installieren kannst.

Es gibt zwar auch die Möglichkeit, dem `opkg`die
(Installations-)Pakete z.B. über eine Micro-SD-Karte zur Verfügung zu
stellen (sog. Offline-Installation), das ist aber
umständlicher/komplizierter. In diesem Fall musst du selber alle
nötigen Installationspakete (`ipk`-Dateien) aus dem Internet
runterladen (z.B. über deinen PC) und diese dann auf der
Micro-SD-Karte speichern.

### Installation via Quelltext

Programme werden aber nicht nur in Form von vorbereiteten Paketen
angeboten, sondern häufig als __(Programm-) Quelltext__. Es kann auch
vorkommen, dass du zwar ein Paket findest, das du suchst, dass die
Paket-Version aber nicht zu deinem HuCon passt (z.B. weil das Paket zu
alt ist).

In diesem Fall musst du den Quelltext aus dem Internet runterladen und
auf deinem HuCon speichern. Jenachdem in welcher Programmiersprache
das Programm geschrieben ist, musst du es nun noch __bauen__
(bzw. kompilieren) und installieren. Die
__Bau-/Installations-Anleitung__ ist i.d.R. Teil des Quelltextes.

Zum Bauen benötigst du auch ein Programm: einen Compiler (z.B. `gcc`)
und häufig auch ein Build-Tool (wie z.B. `make`). Auch für diese gibt
es i.d.R. (Installations-) Pakete. Einige Compiler und Build-Tools
sind u.U. auch schon in der Firmware des HuCon enthalten, so dass du
sie gar nicht selber zu installieren brauchst.

Es gibt Programmiersprachen, deren Quellen man nicht zu kompilieren
braucht (z.B. JavaScript). Stattdessen verwendet man einen
__Interpreter__ (z.B. NodeJS für JavaScript). In solchen Fällen
brauchst du den Interpreter nur einmal zu installieren. Alle
(JavaScript-) Programme, die du dann ausführen möchtest, kannst du
einfach irgendwo ablegen (z.B. Flash-Speiche oder Micro-SD-Karte). Zum
Ausführen des Programms rufst du dann den Interprter auf und gibst
dabei an, welche Quelldatei der Interpreter ausführen soll.

### Das Dateisystem erweitern

Ein __Dateisystem__ ist ein Speicher, in dem __Verzeichnisse__ und
__Dateien__ permanent abgelegt werden können. Unter Windows spricht
man häufig von *Laufwerk C:*.

Das Firmware-Image des HuCon enthält schon ein solches Dateisystem. Da
es im Flash-Speicher des HuCon liegt, bleibt der Zustand des
Dateisystems (also die Inhalt der Verzeichnisse und Dateien) auch
erhalten, wenn man die Stromversorgung unterbricht. Wenn man den Strom
wieder anschaltet, sind alle Dateien noch da. Genau wie auf der
Festplatte deines PC.

Programme, die du über den Paketmanager `opkg` installierst, werden an
einer __vorbestimmten__ Stelle im Dateisystem
abgelegt/installiert. Dieser Teil des Dateisystems befindet sich
ebenfalls auf dem internen Flash-Speicher des HuCon.

Wenn du nun sehr viele Programme installierst oder viele Dateien auf
dem HuCon im Dateisystem abspeicherst, wird dir irgendwann der
Speicherplatz in dem Flash-Speicher ausgehen.

Es gibt aber das Tool __Extroot__ [1], mit dem du den Speicher deiner
Micro-SD-Karte in das Dateisystem *einhängen* kannst. So kannst du den
verfügbaren Speicher des Dateisystems __erheblich__ __vergrößern__, so
dass du mehr Programme über den `opkg` installieren kannst. Du musst
dann aber natürlich immer deine Micro-SD-Karte in den HuCon
einstecken, wenn du jene Programme und Daten nutzen möchtest, die sich
in dem *eingehängten* Teil des Dateisystems befinden.

[1] https://openwrt.org/docs/guide-user/additional-software/extroot_configuration

## Geschafft!

__GRATULATION!__ __Du hast es geschafft!__

Wenn du hier angekommen bist, hast du

* den HuCon zusammengebaut

* ihn mit Strom versorgt

* Zugang zu deinem HuCon über ein Micro-USB-Kabel hergestellt

* das voreingestellte WLAN AP Passwort des HuCon geändert

* das voreingestellte `root` Passwort geändert

* mit Hilfe einer Micro-SD-Karte eine neue Firmware-Version installiert

* deinen PC mit dem WLAN AP des HuCon verbunden

* den HuCon mit dem WLAN AP deines Heimnetzwerk verbunden

* Zugang von deinem PC zu den Netzwerkdiensten deines HuCon sowohl
  über den WLAN AP des HuCon als auch über dein Heimnetzwerk
  hergestellt

* vielleicht sogar mit `opkg` ein paar zusätzliche Programmpakete
  installiert

Wenn du alles richtig eingestellt hast, kannst du nun von deinem PC
aus einen Web-Browser nutzen, um dich mit dem Web-Server des HuCon zu
verbinden und deinen HuCon über die Web-Oberfläche programmieren.

__Viel Spaß dabei!__
