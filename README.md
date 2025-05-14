# Network Forensics Testbed

## 📚 Overview

The **Network Forensics Testbed** is designed to help students practice network attack simulations and forensic analysis. It provides a practical environment for learning about network traffic, attack detection, and incident response.

---

## 🎯 Learning Objectives

- Understand and simulate Man-in-the-Middle (MITM) attacks using ARP spoofing.
- Capture and analyze network traffic using tools like tcpdump and Wireshark.
- Explore how network logs can reveal attack patterns.
- Develop hands-on skills for network forensics investigations.

---

## 🛠️ Prerequisites

- Docker and Docker Compose installed.
- Basic understanding of Linux commands and networking concepts.

---

## 🚀 Installation

1. Clone the repository and navigate to the project folder.
2. Make the scripts executable to ensure they can run correctly.
3. Build and run the testbed using Docker Compose.

---

## 📏 Usage

### **Step 1: Start the Testbed**

- Use Docker Compose to build and start all the containers.
- Ensure that the containers (attacker, target, and logger) are running correctly.

---

### **Step 2: Simulate Attacks**

- Use the attacker container to perform ARP spoofing and initiate a MITM attack.
- Use network scanning tools to discover active devices on the network.

---

### **Step 3: Capture Network Traffic**

- Use the target container to capture network packets.
- Save the captured packets to a file for offline analysis.

---

### **Step 4: View Logs**

- Access the logs collected by the logger container.
- Copy the packet capture file for analysis in tools like Wireshark.

---

## 📚 How Students Can Learn

1. **ARP Spoofing Basics:**

   - Understand how ARP spoofing redirects traffic.
   - Identify how MAC addresses are manipulated.

2. **Traffic Analysis:**

   - Open the captured packets in Wireshark.
   - Filter for ARP and ICMP packets to see the attack in action.

3. **Log Analysis:**

   - Explore how network logs reveal suspicious activities.
   - Practice correlating logs with packet captures.

4. **MITM Detection:**
   - Learn how to detect ARP spoofing by inspecting ARP tables.
   - Identify anomalies in MAC addresses.

---

## 🧹 Cleanup

- Use the provided cleanup script to stop and remove all containers, volumes, and logs.
- This helps reset the testbed for the next use.

---

## 🛠️ Troubleshooting

- If logs are not being written, ensure the **logs/** directory has the correct permissions.
- If the attacker cannot find tools (like **arpspoof**), make sure the Docker image is properly built.
- Restart the testbed if containers fail to start.

---

## 🤝 Contribution

- Feel free to submit issues or pull requests to enhance the testbed.

---

## 📄 License

This project is licensed under me =))

---

## 📄 Instruction PDF

For detailed setup and usage instructions, download the **Network Forensics Testbed Instruction** PDF:

- [Download Instruction PDF](Network_Forensics_Testbed_Instruction.pdf)

---
