1. Zainstaluj Virtualbox'a 
https://www.virtualbox.org/wiki/Downloads
2. Zainstaluj Vagrant 
https://www.vagrantup.com/downloads.html

3. Rozpakuj Vagrant.zip do c://www/
4. Uruchom konsole w Windowsie (Uruchom -> cmd)
5. Przejdz do wypakowanego folderu 
cd c://www/Vagrant
6. Zainstaluj niezbedne pluginy wpisz w konsole kolejno:
vagrant plugin install vagrant-faster
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-winnfsd
7. Sprawdz jaki jest adres do sieci prywatnej z Virtualboxem 
Z menu Virtualbox'a File -> Preferences -> Network -> Host-only Networks i sprawdz jaki jest IPv4 Address domyślnie jest 192.168.56.1 z maską 255.255.255.0
jeśli jest inna to zmien 

9. do pliku C:\Windows\System32\drivers\etc\hosts dodaj wpisy

192.168.56.10	v_test
192.168.56.10	v_yeti
192.168.56.10	v_portal
192.168.56.10	v_portal2
192.168.56.10	v_yeti2

Tak, nasza maszyna będzie widoczna pod adresem 192.168.56.10 taki adres statycznie został zapisany w pliku Vagrantfile

8. Teraz uruchom vagrant'a
wpisz w konsole: vagrant up
Ta komenda zainstaluje całe środowisko, pierwsze uruchomienie będzie trwało długo bo musi pobrać cały system
czasem sie zawiesza sie na  SSH auth method: private key  nie rozgryzłem czemu sie tak dzieje 
Jeśli sie zawiesi trzeba usunąć maszynę poleceniem vagrant destroy i ponowić próbę (vagrant up)

9. To wszystko. Wpisujemy v_yeti i mamy yetiforce'a. Musimy jeszcze wgrać baze danych 
Host: 192.168.56.10
User: root
Pass: (puste)
Pliki modyfikujemy normalnie przez netbeans'a one automatycznie sie synchronizują przez NFS'a to jest chyba najszybsza alternatywa


10 Jeśli chcemy wejść do systemu po ssh to wpisujemy vagrant ssh 
11. Jeśli chcemy zatrzymać maszynę to wpisujemy vagrant halt
12. Zeby uruchomić ponownie wirtualkę wpisujemy tak jak byśmy chcieli od nowa zainstalować czyli wpisujemy 
vagrant up --debug 

ta opcja --debug uruchamia debugera wtedy stabilniej działa , nie zawiesza sie podczas startu



