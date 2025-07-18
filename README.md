# kali-osint-lab
Lab project for the MIS 6130: Information Systems Security, Control, and Audit. This repository documents hands-on activities using Kali Linux and open-source intelligence (OSINT) tools such as Recon-ng, SpiderFoot, WhatsMyName, and Shodan to explore ethical hacking techniques.

**1.3.6 Deploying a Pre-Built Kali Linux Virtual Machine (VM)**
To start, we downloaded VirtualBox from the official website (virtualbox.org). Then we got the Kali Linux .ova file from Netacad’s lab resources. Using VirtualBox, we clicked on File > Import Appliance , selected the Kali file, and started importing. We increased the memory from 2GB to 4GB before finishing the import. After importing, we powered on the Kali VM. At the login screen, we used the default username and password to log in.

<img width="583" height="482" alt="image" src="https://github.com/user-attachments/assets/30fe1926-d22b-46c2-8186-593bd1cc0028" />
<img width="583" height="477" alt="image" src="https://github.com/user-attachments/assets/e27abf6e-6cab-44ac-ac2c-0ffbc0d701cb" />
<img width="583" height="486" alt="image" src="https://github.com/user-attachments/assets/38ed42bc-5a28-44f0-bd74-ec390359b9ae" />
<img width="583" height="483" alt="image" src="https://github.com/user-attachments/assets/456495b7-d68a-4c1a-adfa-9ba97a77334a" />

We opened the Terminal Emulator by right clicking the desktop and selecting it from the Applications menu. We first tried opening the visudo file but got a permission error.Then we used sudo visudo , entered the password, and were able to edit the file. We exited using Ctrl + X.

<img width="583" height="465" alt="image" src="https://github.com/user-attachments/assets/2c351a26-15bc-4d97-a136-6c82755b58de" />
<img width="583" height="470" alt="image" src="https://github.com/user-attachments/assets/9ffa19fd-2ae2-43d3-b7ce-9bf9951482c8" />

Next, we ran the groups command to check if the kali user had sudo access. Then we used the history command to see a list of previously used commands. We tested recalling a command using its number (!3 ) and used !his to auto-complete and run the history command again.

<img width="583" height="519" alt="image" src="https://github.com/user-attachments/assets/018f81e4-7ec6-4c20-bf67-a6437a5da0b3" />
<img width="583" height="522" alt="image" src="https://github.com/user-attachments/assets/02062f77-b7e3-4ed6-8893-80359886a817" />

We also tested tab completion . For example, when we typed hi and pressed Tab , it completed to history . When we typed ls /me and pressed Tab , it completed to ls /media , and we could see the contents of that folder.

<img width="583" height="514" alt="image" src="https://github.com/user-attachments/assets/bfb905db-9288-4940-b3c3-7c271a226f6a" />
<img width="583" height="514" alt="image" src="https://github.com/user-attachments/assets/e5560887-d0fc-4d5c-a36b-b5b7a383c616" />

**3.1.4 Using OSINT Tools**
We visited osintframework.com using the browser in Kali. The site shows a list of tools organized by category. We clicked on the Username section and selected WhatsMyName (T) This took us to a GitHub page, and from there we went to whatsmyname.app . We entered a few usernames, one per line, into the search box. Then we clicked the green magnifying glass to search. It showed us where those usernames were found online. We sorted and filtered the results and even exported them as a CSV or PDF file.

<img width="583" height="353" alt="image" src="https://github.com/user-attachments/assets/ed86c2dd-65e9-46cb-a697-16ea93d98afa" />
<img width="583" height="351" alt="image" src="https://github.com/user-attachments/assets/1e2561db-1cf9-4bb1-a254-977e547eaca9" />
<img width="800" height="559" alt="image" src="https://github.com/user-attachments/assets/bb05a042-3699-486d-be62-a66138bf7ef6" />

**Using SpiderFoot**
We opened the Kali VM and launched SpiderFoot by typing spiderfoot -l 127.0.0.1:5001 in the terminal. Then we opened the browser and went to http://127.0.0.1:5001, which opened the SpiderFoot web interface.

<img width="583" height="391" alt="image" src="https://github.com/user-attachments/assets/751f4f2f-1684-4b3b-9a99-61bd378fe261" />
<img width="583" height="387" alt="image" src="https://github.com/user-attachments/assets/48d1369c-59e7-4c75-9b7b-b47dfd8a90be" />

We created a new scan and named it. We set the target to usiu.ac.ke and left the scan profile as Footprint (Recommended) . After the scan finished, we looked at the results, including DNS records, IP addresses, website banners, and more. We explored categories like Network Information , WHOIS , and Credentials.

<img width="583" height="382" alt="image" src="https://github.com/user-attachments/assets/0c8fea70-b54f-4a83-9789-0acc48a2a7ee" />
<img width="583" height="385" alt="image" src="https://github.com/user-attachments/assets/70c9cf67-c06a-4ffc-93a9-f0b38284ddd5" />

**Investigating with Recon-ng**
We opened the terminal and typed recon-ng to start the tool. At first, no modules were available. We tried show modules , but it didn’t show anything. So, we exited Recon-ng and updated the system using sudo apt update . Then we downloaded Recon-ng from GitHub with the command: sudo git clone https://github.com/lanmaster53/recon-ng.git. We moved into the folder and installed the required tools with: sudo pip3 install -r REQUIREMENTS. After that, we started Recon-ng again, and now the modules were available. We created a new workspace called lab_workspace and loaded it. Then we loaded the bing_domain_web module and set the domain to jkuat.ac.ke . We checked the settings with show options and then ran the module. It searched Bing for links related to jkuat.ac.ke and gave us a list of websites connected to that domain.

<img width="583" height="400" alt="image" src="https://github.com/user-attachments/assets/f841a4d6-9f3d-45ae-88ce-c8d15b73a5e1" />
<img width="583" height="403" alt="image" src="https://github.com/user-attachments/assets/a7a1ddcb-e50e-4305-b958-a0f7698a7db1" />
<img width="583" height="397" alt="image" src="https://github.com/user-attachments/assets/90913348-d37b-46bf-869b-30522075f98a" />
<img width="583" height="401" alt="image" src="https://github.com/user-attachments/assets/2d670183-e341-40b2-b09b-9f92ffc3b717" />

**3.1.20 Open-Source Intelligence (OSINT) Gathering**
We started by launching recon-ng in the terminal. The tool opened successfully and showed a welcome message.We used marketplace search to see what modules were available. We saw a long list of tools, some needing API keys or dependencies . We refreshed the marketplace with marketplace refresh , and then searched for modules related to Bing using marketplace search bing . We installed the recon/domains-hosts/bing_domain_web module with the command “marketplace install recon/domains-hosts/bing_domain_web”. The module installed successfully. Even though some warnings showed up (because some tools need API keys), we weren’t affected because this module works without one. We created a workspace called lab_workspace , loaded it, and then loaded the Bing module . We set the source domain to jkuat.ac.ke and confirmed the setting with show options. Then we ran the module using run . It searched Bing for subdomains related to jkuat.ac.ke and returned a list of URLs connected to that domain.

<img width="583" height="474" alt="image" src="https://github.com/user-attachments/assets/de0f2132-20b6-4d0d-a9c6-611e7cc45765" />
<img width="583" height="479" alt="image" src="https://github.com/user-attachments/assets/b21cb4e5-9e86-43ef-a455-03d03bea38e4" />
<img width="583" height="463" alt="image" src="https://github.com/user-attachments/assets/5c65563e-40c2-46ba-96d4-0b3f82e21948" />
<img width="583" height="466" alt="image" src="https://github.com/user-attachments/assets/3e626dfb-3bf0-499c-9bce-025386f97d6d" />
<img width="583" height="502" alt="image" src="https://github.com/user-attachments/assets/8759d47c-3dd8-4de8-818f-43e3c156ed6a" />
<img width="583" height="491" alt="image" src="https://github.com/user-attachments/assets/673c1323-45c4-488e-bc15-32d548ff9e78" />

**Summary of Activities**
As a group, we successfully set up and used Kali Linux, an important tool for ethical hacking. We also explored key OSINT tools such as SpiderFoot, WhatsMyName, and Recon-ng, which allow information gathering from public sources. We practiced how to look up usernames, scan domains for linked hosts, and use the terminal more efficiently with commands like history, sudo, and tab autocompletion. We also learned how to install modules in Recon-ng, troubleshoot missing dependencies, and execute domain-based queries.
This lab helped us understand how real-world ethical hackers gather intelligence to support security testing, and gave us a hands-on introduction to the practical use of reconnaissance tools.

**References**
Cisco Networking Academy. (n.d.). Ethical Hacker course materials. https://www.netacad.com/
Offensive Security. (2023). Kali Linux Revealed: Mastering the Penetration Testing Distribution (2nd ed.). Offensive Security. https://kali.training/downloads/Kali-Linux-Revealed-2nd-edition.pdf
Recon-ng. (n.d.). Recon-ng Documentation. GitHub. https://github.com/lanmaster53/recon-ng/wiki
WhatsMyName. (n.d.). OSINT Username Enumeration Tool. https://whatsmyname.app





























