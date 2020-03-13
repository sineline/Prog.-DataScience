# Contenidor no oficial per a la assignatura 22.403 - Programació per a la ciència de dades
Repositori amb docker file imitant VM assignatura UOC Programacio per a la ciencia de dades

### Avisos
- Les versions dels paquets poden ser diferents a les de la maquina virtual distribuida per la UOC.
- La carpeta home del usuari datasci esta mapejada a la carpeta arrel on es descarreguin els arxius d'aquest repositori. Aixi doncs, les PECs descarregades amb l'script de la uoc (get_pec.sh) seran desats a la carpeta PEC/ del repositori. 

## Posada en marxa
1. Instal·lar [docker](https://docs.docker.com/install/)
2. Obrir un terminal a la carpeta on es vulgui desar els arxius del curs.
3. Executar des del terminal: ***git clone https://github.com/sineline/Prog.-DataScience.git Prog_DS***
4. Introduir la comanda ***cd Prog_DS***
2. Executar la comanda ***docker-compose up -d** (sense -d per debug)*

# Utilitzacio
Un cop executada la maquina, es pot accedir a aquesta a traves de http://localhost:8888/
En cas de problemes accedint a localhost, [mirar aquest enllaç](https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate)

Un cop creada la maquina, els notebooks seran desats per defecte a la carpeta /PEC/ de la ruta on es troba l'arxiu docker-compose.yml, des d'on s'ha executat la comanda d'arrancada.

## Descarrega de noves PECs (Un cop el contenidor ja ha estat creat)
#### Opcio 1:
1. Obre el terminal a la ubicacio dels arxius descarregats.
2. Executa la comanda ***docker-compose run UOC_AdvPython get_pec.sh***

#### Opcio 2:
1. Obre un nou terminal des de jupyter-notebook (New > Terminal)
2. Executa la comanda ***get_content.sh***

## Instal·lacio de nous paquets per python
1. Obre el terminal
2. Executa ***docker-compose run UOC_AdvPython python3 -m pip install nom_del_paquet***

## Accedir a la maquina per terminal
1. Obre el terminal a la ubicacio dels arxius del curs.
2. Executa la comanda ***docker-compose run UOC_AdvPython sh***
