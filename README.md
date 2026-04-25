# 🌐 Network Connectivity Troubleshooter

## 📌 Overview

The **Network Connectivity Troubleshooter** is a Bash-based utility script designed to diagnose common network connectivity issues between servers.

In real-world environments, servers often fail to communicate due to problems like DNS failures, blocked ports, or routing issues. This tool automates the troubleshooting process and provides quick, clear insights into the root cause.

---

## 🚨 Problem Statement

In a real-world scenario, a server is unable to connect to another server.

Manually checking each layer of connectivity can be time-consuming and inefficient. This script solves that by performing automated checks for:

* DNS Resolution
* Network Reachability (Ping)
* Port Accessibility
* Routing Path

---

## ⚙️ Features

✔ Automated DNS resolution check
✔ Verifies host reachability using ICMP (Ping)
✔ Checks if a specific port is open or closed
✔ Analyzes routing path using traceroute
✔ Clean and readable output for quick diagnosis

---

## 🛠️ Requirements

Ensure the following tools are installed on your system:

* `bash`
* `nslookup` (dnsutils)
* `ping`
* `nc` (netcat)
* `traceroute`

---

## 📂 Script Details

The script tests connectivity to a target server (`google.com`) on port `443` by default.

You can modify these variables in the script:

```bash
SERVER="google.com"
PORT=443
```

---

## 🚀 Usage

1. Save the script as:

   ```bash
   network_troubleshooter.sh
   ```

2. Give execution permission:

   ```bash
   chmod +x network_troubleshooter.sh
   ```

3. Run the script:

   ```bash
   ./network_troubleshooter.sh
   ```

---

## 🔍 What the Script Checks

### 1. DNS Resolution

Checks whether the domain name can be resolved into an IP address.

**Output:**

* `DNS Resolution OK`
* `DNS Resolution FAILED`

---

### 2. Ping Connectivity

Verifies whether the target host is reachable over the network.

**Output:**

* `PING Host reachable`
* `PING Host unreachable`

---

### 3. Port Accessibility

Checks if a specific port (default: 443) is open on the target server using Netcat.

**Output:**

* `PORT 443 is OPEN`
* `PORT 443 is CLOSED`

---

### 4. Routing Check

Uses traceroute to analyze the path packets take to reach the destination.

**Output:**

* `ROUTE Path looks OK`
* `ROUTE Possible routing issue or blocked hops`

---

## 🧪 Example Output

```bash
=== Network Troubleshooting for google.com ===
DNS Resolution OK
PING Host reachable
PORT 443 is OPEN
ROUTE Path looks OK
```

---

## 📈 Use Cases

* Debugging server-to-server communication issues
* Verifying firewall or security group rules
* Checking network availability in DevOps environments
* Quick diagnostics during outages

---

## 🔒 Notes

* Some servers may block ICMP (ping), which does not necessarily mean they are unreachable.
* Traceroute results may vary due to network policies or firewalls.
* Ensure required permissions for running network commands.

---

## 👨‍💻 Author

Developed as a practical real-world networking troubleshooting tool for Linux environments.

---
