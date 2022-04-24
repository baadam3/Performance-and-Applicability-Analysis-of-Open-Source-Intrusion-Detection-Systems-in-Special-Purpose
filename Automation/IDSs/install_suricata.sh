!#/bin/bash
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt update
sudo apt install suricata jq
sudo suricata --build-info
sudo systemctl status suricata
