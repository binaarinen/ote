# OSM history db CH

according ot [osmhistorydb-ch](https://github.com/sosm/osmhistorydb-ch) but in docker and working



## starting project
### requirements
 - docker 20.10.7
 - docker-compose 1.25.0

### start
 - `docker-compose build; docker-compose up`


## other usefull commands
 - reset project `docker-compose down; sudo rm -rf db`
 - enter container (if only one running) `docker exec -it $(docker ps | sed -n 2p | awk '{print $1;}') bash`
