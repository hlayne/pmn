# Private Mesh Network (PMN)

**PMN** is a lightweight, Docker-based virtual LAN hub that lets remote clients securely connect and communicate as if they were on the same local network.  
It’s designed for small teams, home labs, or MSP environments that need private mesh-style networking between distributed systems.

---

## 🚀 Features
- Central hub acts as a virtual LAN server
- Dynamic DHCP IP assignment for clients
- Secure WireGuard-based tunnels
- Simple registration via CLI or web portal
- Docker- and Portainer-ready
- Integrates with MSP or IT operations dashboards

---

## 🧱 Architecture Overview
- **Hub Node:** Central PMN container providing virtual LAN, DHCP, and routing.
- **Client Nodes:** Lightweight clients that connect via PMN CLI or installer.
- **API Service:** REST endpoints for registration, authentication, and usage tracking.

---

## 🐳 Docker Deployment

### 1. Clone the Repository
```bash
git clone https://github.com/hlayne/pmn.git
cd pmn
