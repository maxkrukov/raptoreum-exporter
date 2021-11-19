### Raptoreum-exporter

Tested for:
- cpuminer-gr-avx2:1.2.4.1

##### Change <config> file 
```
export URL="
        192.168.5.4:5555|rig01
        192.168.5.2:5555|rig03
        192.168.5.5:5555|notebook
        192.168.5.6:5555|desktop"
```

##### Build image
```
docker build . -t <image>:<tag>
```


Raptoreum: RTNFGdSByi8gdAqeao7QFGj7z8EpHYMd5W
