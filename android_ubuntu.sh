#Feito para facilitar sua vida :D por Paulo Frossard
sudo apt-get update && #Atualiza a lista
sudo wget -O /etc/udev/rules.d/51-android.rules https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/51-android.rules && #Copia lista de dispositivos
clear &&
sudo chmod a+r /etc/udev/rules.d/51-android.rules && #Permite a leitura 
clear &&
sudo apt install gvfs-backends mtp-tools && #instala o procolo mtp em backend
clear &&
sudo apt-get install android-tools-adb android-tools-fastboot && #instala o adb e fastboot
clear &&
sudo apt-get update && #Atualiza a lista
clear &&
echo 'Dispositivos android instalados com sucesso!'
echo 'Isso permite que o ubuntu reconheça seu celular, sem necessidade de terminal!'
echo ''
echo 'Foram instalados os seguintes pacotes: (1) Mtp-backend (2) ADB (3) FASTBOOT'
echo ''
echo 'É preciso reiniciar, fazer isso agora? (S/N)';
read opcao
case "$opcao" in
	s|S|"")
		clear
		echo 'O computador vai ser desligado salve o que estiver fazendo'
		read desligar
		case "$desligar" in 
			*) sudo reboot;;
		esac		
		;;
	n|N)
		clear
		echo 'Lembre-se de reiniciar para funcionar';; 
	*)
		clear
		echo 'Opção invalida'
		echo 'Saindo do programa'
		clear;;
		
esac