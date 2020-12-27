# Networks HW-2
<i> Networks at FCS Homework-2 </i>
## Requirements
* POSIX-compitiable operating system
* docker
* docker-compose
* bash>=3.2
* tput
## Building & running
### Automatic
Automatic build only was tested on Mac OS X(10.15.7).<br>
```
./build.sh all # Probably sudo will be required to run docker
```
This command will also run docker-compose.<br>
**NOTE:** It is important to run `./build.sh` from one directory with `Buildfile`(i.e. project root) 
### Manual 
If for some reasons automatic build failed(e.g. unstatisfied dependedncy) you can build it manually:
```
cd src/client 
docker build -t client .
cd ../server
docker build -t server .
cd ../..
docker-compose up
```

## License
Licensed under GNU/GPL 3.0 since open-source compenents are used from [ddos2](https://github.com/Andrewerr/ddos2).
