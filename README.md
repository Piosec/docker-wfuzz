# dockerfile-wfuzz

## Build 

```bash
docker build -t wfuzz .
```

## Run 

```bash
docker run --rm -v $(pwd):/tmp wfuzz -c [...]
```

## Exemple 

```bash
wfuzz -u http://127.0.0.1/FUZZ -w wordlist/general/common.txt --hc 404
```

## Run as binary

```bash
echo 'docker run --rm -v $(pwd):/tmp wfuzz -c $@' > /usr/local/bin/wfuzz
chmod +x /usr/local/bin/wfuzz 
```
