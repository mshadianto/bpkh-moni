<div align="center">

# ⚜ BPKH Sovereign AI · MONI ⚜

### Sovereign Intelligence Infrastructure for BPKH Komite Audit

**Zero cloud dependency · 100% on-premise inference · ISO 37002 compliant**

[![Live Demo](https://img.shields.io/badge/Live_Demo-D4AF37?style=for-the-badge&logo=icloud&logoColor=0A2540)](https://mshadianto.github.io/bpkh-moni/demo.html)
[![GitHub Pages](https://img.shields.io/badge/GitHub_Pages-181717?style=for-the-badge&logo=github&logoColor=white)](https://mshadianto.github.io/bpkh-moni/)
[![Cloudflare](https://img.shields.io/badge/Cloudflare_Pages-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)](https://bpkh-moni.pages.dev/)
[![Version](https://img.shields.io/badge/Version-5.5-0A2540?style=for-the-badge)](https://github.com/mshadianto/bpkh-moni)

[![ISO 37002](https://img.shields.io/badge/ISO_37002-Compliant-16A34A?style=flat-square)](https://www.iso.org/standard/65035.html)
[![UU 34/2014](https://img.shields.io/badge/UU_34%2F2014-Aligned-1E40AF?style=flat-square)](https://peraturan.bpk.go.id/Details/38780/uu-no-34-tahun-2014)
[![Sharia](https://img.shields.io/badge/PSAK_Syariah-Compliant-D97706?style=flat-square)](https://web.iaiglobal.or.id/SAK-IAI/Tentang%20SAK%20Syariah)
[![Sovereignty](https://img.shields.io/badge/Sovereignty-100%25-D4AF37?style=flat-square)](https://mshadianto.github.io/bpkh-moni/)

</div>

---

## 🎯 What is BPKH Sovereign AI?

**MONI** (Monitoring, Oversight & Network Intelligence) adalah sovereign AI infrastructure yang dibangun khusus untuk **Komite Audit BPKH** (Badan Pengelola Keuangan Haji), pengelola dana haji Rp 179+ triliun di Indonesia.

Setiap inference AI berjalan **100% di infrastruktur on-premise** menggunakan Ollama. Tidak ada API call ke OpenAI, Anthropic, atau cloud provider manapun. **Sovereignty** dibuktikan dengan cryptographic audit trail (SHA-256 chain).

> 💎 *"AI yang tidak pernah keluar dari rumah Anda — sovereign by design, audit-ready by default."*

---

## 🚀 Try It Live

| URL | Tipe | Akses |
|---|---|---|
| **[mshadianto.github.io/bpkh-moni](https://mshadianto.github.io/bpkh-moni/)** | Landing page | 🌍 Public |
| **[mshadianto.github.io/bpkh-moni/demo.html](https://mshadianto.github.io/bpkh-moni/demo.html)** | Standalone demo | 🌍 Public |
| **[bpkh-moni.pages.dev](https://bpkh-moni.pages.dev/)** | Cloudflare mirror | 🌍 Public (faster from ID) |

**Demo features:**
- 🔍 Semantic search 220 regulasi BPKH (PBPKH · PKBP · SOP)
- 📝 C4R audit workpaper generator (Condition · Criteria · Cause · Consequence · Recommendation)
- 📊 Real-time sovereignty score with cryptographic audit log
- 📈 Knowledge base insights with Chart.js visualizations
- 📱 Mobile-responsive · Print-friendly · Self-contained

---

## 🏗️ Architecture

```
┌─ PUBLIC EDGE ─────────────────────────────────┐
│  mshadianto.github.io/bpkh-moni  Cloudflare   │
│  ├─ /            Landing showcase             │
│  └─ /demo.html   Interactive demo             │
└─────────────────────┬─────────────────────────┘
                      │ HTTPS
┌─ APPLICATION TIER ──┴─────────────────────────┐
│  SumoPod VPS · 43.128.106.71                  │
│  Caddy reverse proxy + Let's Encrypt SSL      │
│  └─ Adapter Gateway :18090                    │
│     └─ REST → MCP bridge                      │
└─────────────────────┬─────────────────────────┘
                      │ internal network
┌─ SOVEREIGN AI TIER ─┴─────────────────────────┐
│  9 Docker services · sensitivity-aware        │
│  ├─ Gateway :8080      sensitivity router     │
│  ├─ DALIL MCP :9001    regulatory search      │
│  ├─ DAWWIN MCP :9002   C4R generator          │
│  ├─ WBS MCP :9003      whistleblowing         │
│  ├─ Audit MCP :9004    audit log query        │
│  ├─ Postgres :15432    audit log immutable    │
│  ├─ Qdrant :6333       3,238 vectors          │
│  └─ Ollama :11434      llama3.1:8b · local    │
└───────────────────────────────────────────────┘
```

---

## 🛠️ Active Modules

### 📚 DALIL — دليل · Regulatory Intelligence
Semantic search 220 regulasi BPKH dengan vector embedding. 6 specialized agent modes untuk analisis regulatori mendalam, compliance check, dan cross-referencing.

**Tools:** `vector_search` · `filter_by_jenis` · `cross_reference` · `summary` · `compare` · `extract_clause`

### 📝 DAWWIN — دوّن · Audit Workpaper Generator
Generate audit workpapers dengan **C4R methodology** (Condition-Criteria-Cause-Consequence-Recommendation). 10 modul terintegrasi mengikuti standar IIA dan IPPF.

**Tools:** `c4r_generate` · `workpaper_export` · `finding_classify` · `risk_rating`

### 🔒 WBS — رقيب · Whistleblowing System
Triage whistleblowing reports dengan **PII redaction otomatis**. ISO 37002 compliant — identitas pelapor selalu terlindungi. Inference **FORCED ke Ollama local** untuk maximum privacy.

**Tools:** `pii_redact` · `triage` · `priority_classify` · `route_to_committee`

### 📋 AUDIT — سجل · Sovereignty & Audit Log
Immutable audit log dengan **SHA-256 chain integrity**. Real-time sovereignty score, schema-per-service di Postgres. Cryptographic proof untuk setiap AI inference.

**Tools:** `log_query` · `sovereignty_score` · `hash_verify` · `chain_audit`

---

## 📊 Tech Stack

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Python](https://img.shields.io/badge/Python_3.11-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL_16-336791?style=for-the-badge&logo=postgresql&logoColor=white)](https://postgresql.org/)
[![Qdrant](https://img.shields.io/badge/Qdrant-DC382D?style=for-the-badge)](https://qdrant.tech/)
[![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge)](https://ollama.ai/)
[![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)](https://cloudflare.com/)

**Frontend:** Vanilla HTML/CSS/JS · Chart.js · Fraunces + Manrope + JetBrains Mono
**Backend:** FastAPI · MCP Protocol · Sensitivity-aware routing · Schema-per-service
**Models:** llama3.1:8b (reasoning + WBS) · nomic-embed-text (768-dim vectors)
**Deployment:** Docker Compose · Cloudflare Pages · GitHub Pages · SumoPod VPS

---

## ⚖️ Compliance & Standards

| Standard | Status | Coverage |
|---|---|---|
| **ISO 37002:2021** | ✅ Compliant | Whistleblowing management system |
| **UU 34/2014** | ✅ Aligned | Pengelolaan Keuangan Haji |
| **PP 5/2018** | ✅ Aligned | Pelaksanaan UU Pengelolaan Haji |
| **PSAK Syariah** | ✅ Embedded | Sharia accounting standards in KB |
| **ISO 27001** | 🔄 In Progress | Information security management |

---

## 📂 Repository Structure

```
bpkh-moni/
├── index.html              ← Landing page (luxury navy + gold)
├── demo.html               ← Standalone MONI Command Center demo
└── README.md               ← This file
```

**Note:** Full backend source code (60+ files, 9 Docker services) tersedia di private repo BPKH internal. Public showcase ini adalah **frontend deliverable** untuk Komite Audit BPKH dan stakeholder demo.

---

## 🎬 Demo Walkthrough

1. **Open landing:** [mshadianto.github.io/bpkh-moni](https://mshadianto.github.io/bpkh-moni/)
2. **Click "Try Live Demo"** → masuk ke MONI Command Center
3. **Tab DALIL** → search "kewajiban audit eksternal" → 8 hasil dari 220 regulasi
4. **Tab DAWWIN** → generate C4R workpaper untuk findings audit sample
5. **Tab Sovereignty** → lihat gauge 100% + audit log dengan SHA-256 chain
6. **Tab KB Catalog** → explore 220 regulasi dengan filter by jenis (PBPKH/PKBP/SOP)
7. **Tab Infrastructure** → 9 services architecture + AI model configuration

**Pro tip:** Klik tombol **"⚡ Seed Demo Data"** untuk populate 60 audit log entries (24h history simulated).

---

## 🤝 Related Projects

Bagian dari ekosistem AI governance untuk Islamic finance & public sector oleh M.S. Hadianto:

- 🕋 [**hajj_mgt_system**](https://github.com/mshadianto/hajj_mgt_system) — AI Hajj fund sustainability dashboard ([live](https://hajjmgtsystem.streamlit.app/))
- 🔒 [**wbs_bpkh_v9**](https://github.com/mshadianto/wbs_bpkh_v9) — Whistleblowing system v9 untuk BPKH
- 📚 [**RAG-KomiteAudit**](https://github.com/mshadianto/RAG-KomiteAudit) — RAG-based Audit Committee knowledge
- 🚨 [**fraud-detection-app**](https://github.com/mshadianto/fraud-detection-app) — AI fraud detection
- 📖 [**kitab-mazhab-ai**](https://github.com/mshadianto/kitab-mazhab-ai) — Islamic jurisprudence AI (4 Madhabs)

---

## 👤 Author

**M.S. Hadianto** — Anggota Komite Audit BPKH

```
SE, Ak, M.M. | CACP® | CCFA® | QIA® | CA® | GRCP® | GRCA® | CGP®
ISO 37001 Senior Lead Auditor · ISO 9001 Lead Auditor
#1 Compliance Creator Indonesia · Favikon 2025
```

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ms-hadianto-se-ak-mm-2ab1a718/)
[![Website](https://img.shields.io/badge/Website-D4AF37?style=for-the-badge&logo=safari&logoColor=white)](https://mshadianto.my.id)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@MSHadianto)

---

## 📄 License

Public showcase materials (landing page, demo) tersedia under MIT License untuk educational dan reference purposes. Backend source code dan production data tetap proprietary BPKH internal.

---

<div align="center">

**⚜ BPKH SOVEREIGN AI v5.5 ⚜**

*Domain expertise + AI tools = results*

Built with ❤️ for Indonesian Hajj Fund governance · 2026

[⬆ Back to top](#-bpkh-sovereign-ai--moni-)

</div>
