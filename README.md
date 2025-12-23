# 🦅 BirdSpec - AI Avian Identification

![Project Banner](https://images.unsplash.com/photo-1452570053594-1b985d6ea890?auto=format&fit=crop&w=1200&h=400&q=80)

<div align="center">

[![Next.js](https://img.shields.io/badge/Next.js-14-black?style=for-the-badge&logo=next.js)](https://nextjs.org/)
[![Python](https://img.shields.io/badge/Python-3.10-blue?style=for-the-badge&logo=python)](https://www.python.org/)
[![PyTorch](https://img.shields.io/badge/PyTorch-Model-orange?style=for-the-badge&logo=pytorch)](https://pytorch.org/)
[![Supabase](https://img.shields.io/badge/Supabase-Database-green?style=for-the-badge&logo=supabase)](https://supabase.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)

**Decode the Sky in Real Time.** BirdSpec is an advanced computer vision platform designed to bridge the gap between human observation and scientific classification.

[View Demo](#-demo) • [The AI Model](#-the-intelligence) • [Installation](#-installation) • [Credits](#-data--credits)

</div>

---

## 🎥 Demo

See the model in action:

[![Watch the Demo](https://drive.google.com/file/d/1LhT9CdE1m-32JD8mssR_Z7X_z4kPMaff/view?usp=drive_link)



---

## 🧠 The Intelligence

BirdSpec isn't just a database lookup; it's a deep learning engine capable of recognizing subtle patterns in plumage, beak shape, and posture.

### Architecture
* **Core Model:** **EfficientNet-B1** (Convolutional Neural Network)
* **Training Scale:** Trained on a curated dataset of over **60,000 images**.
* **Technique:** Transfer Learning (Pre-trained on ImageNet, Fine-tuned on ornithological datasets).
* **Performance:** The standard model currently identifies **200+ species** with high confidence, optimized for real-time inference on standard CPU hardware.

---

## 📚 Data & Credits

This project stands on the shoulders of giants. The model was trained using a combination of the following high-quality academic datasets:

* **CUB-200-2011 Dataset**
    * *Wah C., Branson S., Welinder P., Perona P., Belongie S. "The Caltech-UCSD Birds-200-2011 Dataset." California Institute of Technology. Technical Report CNS-TR-2011-001.*
* **NABirds Dataset**
    * *Van Horn, G., Branson, S., Farrell, R., Haber, S., Barry, J., Ipeirotis, P., Perona, P., & Belongie, S. (2015). "Building a Bird Recognition App and Large Scale Dataset with Citizen Scientists: The Fine Print in Fine-Grained Dataset Collection."*

We gratefully acknowledge the researchers at Caltech, Cornell Tech, and the vision community for making these datasets publicly available.

---

## 🚀 Key Features

* **⚡ Instant Identification:** Millisecond-level inference times via our optimized Python backend.
* **🔐 Secure Accounts:** Full authentication suite (Sign Up/Login) powered by **Supabase**.
* **📜 History Tracking:** Automatically logs your bird sightings to build a personal "Life List."
* **💎 Tiered Architecture:** UI built to support scalable model tiers (Standard, Explorer, Ornithologist).
* **📱 Modern UI:** Fully responsive interface built with **Next.js**, **Tailwind CSS**, and **Shadcn UI**.

---

## 🛠️ Tech Stack

### Frontend
* **Framework:** Next.js 14 (App Router)
* **Styling:** Tailwind CSS + Shadcn UI
* **Icons:** Lucide React

### Backend
* **API:** Python (Flask/FastAPI)
* **AI Engine:** PyTorch / TensorFlow
* **Database:** Supabase (PostgreSQL)

---

