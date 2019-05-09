# Raspiberry Pi como um Kiosk

Script para transformar um Raspiberry Pi em um kiosk

- Primeiro, executar o script raspi.sh como superusuário no Raspbian. É necessário conexão com a internet.  

- Durante a execução do script, uma janela de configuração irá aparecer. Você deve manualmente escolher as opções:  
3 Boot Options -> B1 Desktop / CLI -> B4 Desktop Autologin

- Segundo, salvar o script kiosk.sh na home do Raspiberry (geralmente /home/pi).  

- Terceiro, modifique o script kiosk.sh descomentando a linha 16 ou 18 dependendo do que você quer exibir (agenda ou eventos). Se você quer exibir um site qualquer, a estrutura do comando é esta:  

> /usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk [site] &

- Quarto, copie o arquivo kiosk.service para /lib/systemd/system/

- Quinto, execute:  

> sudo systemctl enable kiosk.service

- Ao reiniciar o Raspiberry, ele já será um kiosk

[Fonte](https://pimylifeup.com/raspberry-pi-kiosk/)
