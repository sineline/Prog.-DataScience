# Prog.-DataScience
Repositori amb docker file imitant VM assignatura UOC Programacio per a la ciencia de dades

S'ha intentat mantenir les mateixes versions que a la VM pero en alguns casos no ha estat possibe.
Aixi mateix, la imatge no inclou els arxius de la carpeta "geoplotlib_tiles/positron". Pot mirar de ser inclos mes endavant.


## Posada en marxa

1. Instal·lar (docker)[https://docs.docker.com/install/] 
2. Executar docker-compose up -d


# Us

Un cop executada la maquina, es pot accedir a aquesta a traves de http://localhost:8888/
En cas de problemes accedint a localhost, (mirar aquest enllaç)[https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate]

Un cop executa la maquina, es pot accedir a jupter a traves d'aques enllaç. Els notebooks seran desats per defecte a la carpeta /PEC/ de la ruta on es troba l'arxiu docker-compose.yml i on s'ha executat la comanda d'arrancada.

## Descarrega de noves PECs (la imatge ha d'existir en el sistema 
1. Obre el terminal i executa "docker-compose run UOC_AdvPython get_pec.sh" 

## Instal·lacio de nous paquets per python 2
1. Obre el terminal i executa "docker-compose run UOC_AdvPython python -m pip install <<nom del paquet>>"

## Instal·lacio de nous paquets per python 3
1. Obre el terminal i executa "docker-compose run UOC_AdvPython python3 -m pip install <<nom del paquet>>"

## Accedir a la maquina per consola
1. Obre el terminal i executa "docker-compose run UOC_AdvPython bash"