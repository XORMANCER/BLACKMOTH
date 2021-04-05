# BLACKMOTH
[<img src="https://user-images.githubusercontent.com/63486672/113639717-67973180-963f-11eb-9cec-0d01388a2ce4.png" width="725"/>](image.png)


BLACKMOTH is a script created to automate the capture of an 802.11 handshake via aireplay-ng/mdk4

## Installation

After installing [crystal](https://crystal-lang.org/install/), run the included bash script to install BLACKMOTH.

```bash
sudo crystal build main.cr -o blackmoth
sudo chmod +x setup.sh
./setup.sh
```

The compiled binary will be moved to `/usr/bin/blackmoth`  
All configuration files are located within `/usr/share/BLACKMOTH`

## Usage

```bash
sudo blackmoth
```
## Notes 
Recommended deauth wait time values
* mdk4: `15` 
* aireplay-ng: `10`
## License
[MIT](https://choosealicense.com/licenses/mit/)
