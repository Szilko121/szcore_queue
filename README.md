<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&height=190&color=0:05080D,45:0066FF,100:00D4FF&text=SzCore+Queue&fontSize=42&fontColor=FFFFFF&animation=fadeIn&fontAlignY=38&desc=SzCore+Framework+%E2%80%A2+Infrastructure&descAlignY=60&descSize=16" width="100%" alt="SzCore Queue" />

<img src="https://readme-typing-svg.demolab.com?font=Orbitron&weight=700&size=21&duration=2500&pause=850&color=00D4FF&center=true&vCenter=true&width=720&height=52&lines=Infrastructure;Modular+%E2%80%A2+Server-Authoritative+%E2%80%A2+Developer+First" alt="SzCore Queue animated headline" />

<p><b>Priority connection queue with database priorities, bans, ACE priority and optional reserved slots.</b></p>

<p>
  <img src="https://img.shields.io/badge/SzCore-v1.4.0--rc1-8B5CF6?style=for-the-badge" alt="Version">
  <img src="https://img.shields.io/badge/Type-Infrastructure-00D4FF?style=for-the-badge" alt="Type">
  <img src="https://img.shields.io/badge/FiveM-Resource-F40552?style=for-the-badge&logo=fivem&logoColor=white" alt="FiveM">
  <img src="https://img.shields.io/badge/Lua-5.4-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
</p>

<p>
<a href="https://github.com/Szilko121/szcore_queue/stargazers"><img src="https://img.shields.io/github/stars/Szilko121/szcore_queue?style=flat-square&logo=github&color=00D4FF" alt="Stars"></a>
<a href="https://github.com/Szilko121/szcore_queue/issues"><img src="https://img.shields.io/github/issues/Szilko121/szcore_queue?style=flat-square&logo=github&color=EF4444" alt="Issues"></a>
<img src="https://img.shields.io/github/last-commit/Szilko121/szcore_queue?style=flat-square&logo=github&color=22C55E" alt="Last commit">
</p>

<p><a href="https://github.com/Szilko121/SzCore-Framework"><b>Framework</b></a> • <a href="https://github.com/Szilko121/SzCore-Framework/tree/main/docs"><b>Docs</b></a> • <a href="https://github.com/Szilko121/SzCore-Recipe"><b>Recipe</b></a> • <a href="https://github.com/Szilko121/szcore_queue/issues"><b>Issues</b></a></p>
</div>

---

## 🚀 Overview

Priority connection queue with database priorities, bans, ACE priority and optional reserved slots.

> The queue can run before the SzCore player lifecycle and therefore depends only on oxmysql.

## ✨ Highlights

| | Capability |
|---:|---|
| ⚡ | **Deferral-based connection queue** |
| 🧩 | **Database priority records** |
| 🛡️ | **ACE priority support** |
| 💾 | **Ban lookup during connection** |
| 🎯 | **Reserved slot support** |
| 🔌 | **Priority + join-time ordering** |

## 📦 Installation

**Dependencies:** `oxmysql`

```bash
git clone https://github.com/Szilko121/szcore_queue.git "resources/[szcore]/szcore_queue"
```

```cfg
ensure szcore_queue
```

For a complete installation use **[SzCore-Recipe](https://github.com/Szilko121/SzCore-Recipe)**.

## 🔌 API Highlights

This module is primarily lifecycle/UI driven and does not advertise a stable public export surface in this release.

## 🛡️ Engineering Principles

- Persistent and security-sensitive mutations are validated server-side.
- Feature boundaries stay modular and explicit.
- Client UI/input is not treated as authority.
- Permanent frame loops are used only when FiveM natives require them.
- Performance is measured, not advertised with fixed fake resmon numbers.

## 🧩 Part of SzCore

<div align="center">

[![Framework](https://img.shields.io/badge/SzCore-Framework-00D4FF?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Framework)
[![Recipe](https://img.shields.io/badge/txAdmin-Recipe-2563EB?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Recipe)

<br><br><sub>Built by <b>SzCode</b> for the FiveM community.</sub>
<img src="https://capsule-render.vercel.app/api?type=waving&height=90&section=footer&color=0:00D4FF,55:0066FF,100:05080D" width="100%" alt="SzCore footer" />
</div>
