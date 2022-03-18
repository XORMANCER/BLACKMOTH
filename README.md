| ![image](https://user-images.githubusercontent.com/63486672/113639997-176c9f00-9640-11eb-9e76-8a11cc108d75.png) |
| :------: |
🔮 Crystal utility to automate the capture of an 802.11 handshake

## 📝 Installation

Install the [crystal](https://crystal-lang.org/install/) programming language.

For kali linux (debian) users, the following command will install crystal.
```bash
curl -fsSL https://crystal-lang.org/install.sh | sudo bash
```
Next, run the following commands to build main.cr and execute the setup file.
```bash
sudo crystal build --release main.cr -o blackmoth
sudo chmod +x setup.sh
sudo ./setup.sh
```

The compiled binary will be installed to `/usr/bin/blackmoth`  
All configuration files are located within `/usr/share/BLACKMOTH`

## 🦋 Usage

The tool can be executed by simply typing the following into your terminal.
```bash
sudo blackmoth
```
Blackmoth will prompt you to enter a new configuration, which entails the targets BSSID and the clients MAC ADDR.
NOTE: This tool is meant for follow on enumeration after an initial survey has been completed,
      and is not designed to be a survey tool.
## 💡 Configuration
Recommended deauth wait time values
* mdk4: `15` 
* aireplay-ng: `10`
## License
[MIT](https://choosealicense.com/licenses/mit/)
