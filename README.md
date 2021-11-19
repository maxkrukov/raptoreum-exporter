### Raptoreum-exporter

Tested for:
- cpuminer-gr-avx2:1.2.4.1

##### Change miner config file and restart it
```
{
  "_comment1": "Any long-format command line argument ",
  "_comment2": "may be used in this JSON configuration file",

  "url": "stratum+tcps://eu.flockpool.com:5555",

  "_comment3": "Backup/failover stratum used in case of connection problems",
  "url-backup": "stratum+tcps://us-west.flockpool.com:5555",

  "user": "RTNFGdSByi8gdAqeao7QFGj7z8EpHYMd5W.desktop",
  "pass": "x",

  "algo": "gr",
  "threads": 0,

  "_comment4": "tune-full takes longer but should provide better hashrate",
  "tune-full": true,

  "_comment5": "You can specify different name/location for your tune config",
  "tune-config": "tune_config",

  "_comment6": "You can force miner to not tune. It tunes by default",
  "_comment7": "Or force it even if tune-config file already exists",
  "no-tune": false,
  "force-tune": false,

  "_comment8": "\"log\": \"filename\" can be used to create logfile of output",
  "benchmark": false,
  "stress-test": false,
  "quiet": false,
  "api-bind": "0.0.0.0:5555",    # <<<<<<< Add 
  "api-remote": true             # <<<<<<< Add
}
```


##### Change exporter config file 
```
# cat config
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
