# dockerfile-wfuzz

## Build 

docker build -t wfuzz .

## Run 

docker run --rm -v $(pwd) wfuzz -c [...]

## Exemple 

wfuzz -u http://127.0.0.1/FUZZ -w wordlist/general/common.txt --hc 404

## Run as binary

echo 'docker run --rm -v $(pwd) wfuzz -c $@' > /usr/local/bin/wfuzz
chmod +x /usr/local/bin/wfuzz 
## Run as binary

echo 'docker run --rm -v $(pwd) wfuzz -c $@' > /usr/local/bin/wfuzz
chmod +x /usr/local/bin/wfuzz 
## Run as binary

echo 'docker run --rm -v $(pwd) wfuzz -c $@' > /usr/local/bin/wfuzz
chmod +x /usr/local/bin/wfuzz 

