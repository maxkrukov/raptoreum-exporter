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

##### Output:                
```
# TYPE uptime counter
# TYPE CPUS gauge
# TYPE hashrate gauge
# TYPE accepted counter
# TYPE rejected counter
# TYPE stale counter
# TYPE temperature gauge
# TYPE freq gauge
# TYPE diff gauge
CPUS{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 24
hashrate{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 3545.39
accepted{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 3658
rejected{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
stale{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
temperature{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 84.6
uptime{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 119632
freq{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 4200192
diff{rigcpu="rig01" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 7.439145
CPUS{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 12
hashrate{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 664.97
accepted{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 11622
rejected{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 0
stale{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 0
temperature{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 0.0
uptime{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 407185
freq{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 0
diff{rigcpu="rig03" version="1.2.2" pool="/eu.flockpool.com:5555"} 7.439145
CPUS{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 16
hashrate{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 1404.05
accepted{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 7968
rejected{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
stale{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
temperature{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0.0
uptime{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 268692
freq{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
diff{rigcpu="notebook" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 7.439145
CPUS{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 12
hashrate{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 768.27
accepted{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 4786
rejected{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
stale{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 0
temperature{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 50.0
uptime{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 160182
freq{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 2483949
diff{rigcpu="desktop" version="1.2.4.1" pool="/eu.flockpool.com:5555"} 7.439145        
```        
Raptoreum: RTNFGdSByi8gdAqeao7QFGj7z8EpHYMd5W
