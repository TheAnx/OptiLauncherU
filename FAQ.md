# Opticraft FAQ
##  https://discord.gg/N3QnHXQdzn Mas Informacion
### 1-El juego me crashea al iniciar ¿Que hago? (BE)

Esto ocurre ya que no tienes una actualizacion de Windows 7 instalada, esta la requiere el juego para poder funcionar, simplemente instalala
Link: https://www.microsoft.com/es-ES/download/details.aspx?id=36805. 
(Recuerda tener el servicio de Windows Update activado, y el SP1 instalado)

Si te ocurre en las versiones posteriores a la 1.19, es porque tu tarjeta de video no soporta esta version, tienes que jugar versiones inferiores a la 1.19 o actualizar tu driver de video.
Aunque, existe una manera de emular esa "Tarjeta Grafica" utilizando DXCPL, simplemente descarga este ejecutable: https://cdn.discordapp.com/attachments/1092536202814574733/1116460790334111904/dxcpl.zip
Descomprime el archivo y ejecuta el "DXCPL.exe", ahora vas a ir al apartado de "Edit list..." y alli vas a tocar los 3 puntos que se encuentran al lado del boton "Add". Cuando te salga esa ventana selecciona
el ejecutable del OptiCraft, toca guardar, y cuando vuelvas al DXCPL toca el boton "Add", ahora clickea "OK" y activa el boton de "Force WARP", cierra el programa reinicia tu pc y prueba si esta solucion te funciono
Aunque estes en la 1.19-1.20, instala la actualizacion que sale al prinicipio

### 2-¿Por que el juego me dice que falta una .DLL? (BE)

Esto es debido a que necesitas tener Visual C++ 2015-2017-2019 instalado!
Aqui tienes un REPACK, de todas las cosas necesarias para correr OptiCraft y mas software!
En cambio, si  te pasa este error en la 1.20, es porque te falta una actualizacion, instalala

Actualizacion 32 BITS: https://www.microsoft.com/es-es/download/confirmation.aspx?id=48638 
Actualizacion 64 BITS: https://www.microsoft.com/en-us/download/details.aspx?id=48636 

Visual C++: https://www.mediafire.com/file/2bjxzf59duumsr5 (Tienes que instalarlo igualmente en la 1.20) 

### 3-¿Por que tengo problemas al conectarme con servidores en las versiones soportadas? (BE)

Si tienen problemas al conectarse servidores en OptiCraft 1.7-1.12, puedes probar establecer bien la fecha y hora de la pc, 
tambien optimizar un poco el internet, cambiando DNS y demas cosas. Y deshabilitar procesos en segundo plano

Si te ocurre un BUG en donde la IP no entra completamente, prueba reiniciar el juego o escribir la IP manualmente.

### 4-¿Por que me sale "Connection ID", no la ip y el puerto? (BE)

Esto ocurre, porque tienes que ir al archivo "options.txt", se encuentra en "%appdata%\opticraft\com.mojang\minecraftpe"
Simplemente, editalo con el programa "notepad++" y cambia el dev_transport_layer_type:3 a dev_transport_layer_type:0

En cambio, si te sucede en la 1.20 es normal ya que esta version no tiene esa solucion.
### 5-¿Por que mi antivirus detecta el juego como Virus?

Por que el ejecutable del juego esta modificado y su firma digital se invalidita. Esto es un falso positivo

Si no me crees, hice un video al respecto, puedes verlo para corroborarlo.
 
Link: cdn.discordapp.com/attachments/871616301443993631/1133998942456135783/output.mp4 

### 6-¿Como instalo addons/mods?

Simplemente toca la tecla Windows + R y pon %appdata%, ahora tienes que ir a la carpeta
OptiCraft, games, com.mojang

Cuando estes en esa carpeta, ve a la carpeta de "resourcepacks"
Alli, pega el mod que quieras usar y abre el juego
### 7-¿Como juego online en las versiones posteriores a la 1.14?

Utilizando el programa Radmin VPN. Este es su Sitio Oficial: https://www.radmin-vpn.com/

Tienes que descargarlo en todas las computadoras de las personas que quieren jugar Multijugador, cuando todos tengan el programa descargado, simplemente crea una nueva red llamala como quieras.
Cuando la crees pasale el Usuario y Contraseña a los usuarios, tienen que unirse. Ahora vas a abrir el OptiCraft y vas a unirte a un mundo, ve a la pausa, toca las caritas y Activa el boton llamado "Empezar a Hostear" o "Ser anfrition". Si lo haces correctamente, se pondra una IP o "Connection ID". Ahora, la gente tiene que abrir el juego y tocar el boton de "Unirse a un Mundo", Poner el codigo cedido y Unirse.

Recuerda habilitar el juego en el Firewall de Windows si tienes problemas con esto, tambien el radmin VPN.
(Es recomendable usar versiones antiguas como la 1.9 Y 1.12 para poder crear un servidor en Aternos y no tener que lidiar con este proceso)

### 8-¿Por que no hay versiones mas antiguas?
No versiones mas antiguas de la 1.7.3.1 debido a que Education Edition no lanzo versiones para Windows 7 mas antiguas
### 9-¿Por que no me puedo unir a servidores de Bedrock Original?
Porque OptiCraft no soporta la autenticacion de Xbox necesaria para los servidores Famosos.

### 10-¿Por que no hay Servidores en versiones Posteriores a la 1.12?
Porque en la version 1.14 de Education Edition, se empezo a modificar la paleta de Bloques para agregar exclusividad a los bloques de esta version.
Es posible crackear el Protocolo, pero los bloques seguiran bugeados y el juego sera Injugable
Prueba Aqui: cdn.discordapp.com/attachments/1089298607980679288/1128849002666934272/output.mp4
### 11-Tengo problemas en las versiones Posteriores a la 1.14, los botones en el menu se bugean y se me dificulta crear un mundo ¿Por que sucede?
Esto sucede por el metodo de Crackeo, en las versiones antiguas se utilizaba un boton denominado "Play" que si lo pulsabas se crackeaba el juego.
Decidi añadir este nuevo metodo porque me fastidiaba mucho ese boton, aunque lamentablemente se bugean los menus pero estoy intentando solucionarlo

### 12-¿Podrias añadir el Marketplace a OptiCraft?
No, el Marketplace esta bugeado en Education Edition y no carga, aparte en las ultimas versiones decieron eliminar su acceso.
### 13-¿Como haces estas versiones, tienes algun equipo, te ayudan?
Las hago yo solo, me han ayudado muy pocas veces.
Para hacerlas, se modifica mucho el Ejecutable y los datos del Juego, por ejemplo, Education Edition original no soporta multijugador en LAN, se tuvo que forzar y crackear para jugarlo, por eso se encuentran bugs, lo mismo con los Servidores y demas, todo es forzado.
Algunos metodos de crackeo los descubri yo, (como el crackeo al .exe en versiones antiguas y el crack mas reciente en versiones actuales que bugea todo)

### 14-¿Cuales son los requisitos minimos del MOD?

Yo diria estos:
RAM: 1 GB RAM DDR2 400 MHZ (2 GB Para versiones superiores a la 1.18)
CPU: Celeron 847 1.1 GHZ 2 Nucleos O Pentium 4 3 GHZ 1 Nucleo (Puedes obtener LAG en versiones Superiores a la 1.19)
GPU: Intel GMA 945 (1.7-1.18) Intel GMA 4500 (1.7-1.20)

Aunque no cumplas o Cumplas con los requisitos minimos, yo te recomendaria descargar la version 1.9 y probar si te corre en tu PC.
Lo mas probable es que si.
### 15-¿Por que cuando juego la 1.9-1.12 en mi Celular no puedo crear un Mundo y se me borran los datos?
Porque no tienes los permisos de Almacenamiento y demas activados, tienes que ir a la informacion de la Aplicacion y Activarlos

### 16-¿Como me puedo cambiar la Skin en OptiCraft JAVA?
No es posible por el momento, quizas en proximas actualizaciones añada un metodo para hacerlo.
### 17-¿Como le puedo poner MODS a OptiCraft JAVA?
Tienes que descargarte la version "1.12.2 Forge", cuando lo hagas descarga el mod que quieras para esa version.
Copia el mod, y metete en la carpeta OptiData, Mods, pegalo ahi

Actualmente, no hay sopote de Mods Forge en otras versiones.

### 18-¿Como le añado mas RAM al OptiCraft Java?
No es Posible añadirme mas RAM a las versiones posteriores a la 1.8 por el momento. Ya que para reducir el tamaño
del juego decidi remover el Java de 64 BITS.

Si quieres añadir mas RAM en la 1.8, tienes que darle click derecho al archivo .BAT que utilizas para abrir el Juego, y tocar el boton "Editar"
Ahora, vas a buscar donde dice "-XmX512M" y el "512M" lo vas a cambiar por la memoria que quieras, OJO, no puedes añadir mas que 1024M.

Quizas en un futuro añada mas posibilidad de cambiar la RAM
### 19-¿Puedo subir OptiCraft a un sitio web ajeno a este?
Si, pero siempre deja creditos y no lo hagas pasar por Tuyo.

### 20- INFORMACION EXTRA IMPORTANTE

Historia del Proyecto: https://docs.google.com/document/d/1Y6lxI8F0LJETPAxr1wkHbSrlqphIHVQOF_cGZFwJLD8/edit

Versiones con SERVIDORES: 1.7-1.12
(la 1.12 suele tener bastantes bugs con los servidores, si puedes, porfavor utiliza la 1.9)

Versiones con LAN: 1.7-1.20
Versiones sin RENDER DRAGON: 1.7-1.18
Versiones con RENDER DRAGON 1.19-1.20

TUTORIAL SI NO ENTENDES NADA: https://www.youtube.com/watch?v=mZeK-FKn280 
