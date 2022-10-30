#!/bin/sh

set -e

guncelle(){
	echo "-----------------------------------"
	echo "Sistem güncellemesi başlatılıyor..."
	echo "-----------------------------------"
	doas xbps-install -Syu
	doas flatpak update 
	cd /home/$USER/void-packages
	git pull 
	./xbps-src update-sys
	cd ~
}

temizleme(){
	echo ""
	echo "Temizleme yapılıyor"
	echo ""
	doas xbps-remove -Oo
	doas vkpurge rm all
}

cikis(){
	echo "--------------------------"
	echo "İşlem başarıyla tamamlandı"
	echo "--------------------------"
}

guncelle
temizleme
cikis
exit
