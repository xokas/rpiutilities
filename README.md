All the scripts created for my raspberry pi "Starbase"

Tutorials followed:
* https://www.flopy.es/instalar-raspbian-server-en-una-raspberry-pi-sin-monitor/
* https://www.flopy.es/raspberry-pi-hole-elimina-la-publicidad-en-tus-dispositivos-sin-instalar-nada/
* https://www.flopy.es/pivpn-bloquea-publicidad-en-tu-movil-y-accede-a-los-dispositivos-de-tu-hogar/
* https://www.flopy.es/amule-en-una-raspberry-pi-server-y-olvidate-de-dejar-el-ordenador-encendido-descargando/
* https://www.flopy.es/instalacion-de-plex-server-en-una-raspberry-pi-todo-un-servidor-multimedia-en-un-equipo-diminuto/* 
* https://www.flopy.es/crea-un-bot-de-telegram-para-tu-raspberry-ordenale-cosas-y-habla-con-ella-a-distancia/
* https://raspberrytips.com/backup-raspberry-pi/

Backup of SD Card:
* To know wich drive is: sudo fdisk -l
* Make a image (if the unit is sdb): sudo dd if=/dev/sdb of=~/pi_backup.img
* Recover: sudo dd if=~/pi_backup.img of=/dev/sdb
https://es.gadget-info.com/19657-how-to-clone-raspberry-pi-sd-card-on-windows-linux-and-macos
* Expand the space if the sd card is bigger: http://cagewebdev.com/raspberry-pi-expanding-the-root-partition-of-the-sd-card/


