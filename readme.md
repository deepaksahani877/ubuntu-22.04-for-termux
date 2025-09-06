# Ubuntu 22.04 OS for Termux

**Full Ubuntu 22.04 System Image Optimized for Termux**

---

## 📖 Overview
This project provides a **complete Ubuntu 22.04 environment** for Termux on Android devices. Using the included `tar.xz` system image, you can set up a fully functional Linux environment with minimal effort — ideal for **development, testing, and experimentation**.

---

## ✨ Features
- 🚀 **Complete Ubuntu 22.04 environment**  
- 📱 **Lightweight and optimized** for Termux  
- ⚡ **Quick setup** with minimal configuration  
- 📦 Supports package installation via `apt`  
- 🛠️ Suitable for **development, testing, and experimentation**  

---

## 📥 Installation

1. **Download the system image**  
   Get `andronix_os.tar.xz` from the [GitHub release assets](https://github.com/deepaksahani877/ubuntu-22.04-for-termux/releases).

2. **Clone this repository**
   ```bash
   git clone https://github.com/deepaksahani877/ubuntu-22.04-for-termux.git
   cd ubuntu-22.04-for-termux
   ```
   Make sure `andronix_os.tar.xz` is placed in the same directory as `install.sh`.

3. **Set execute permissions for the installer**
   ```bash
   chmod +x install.sh
   ```

4. **Run the installer**
   ```bash
   ./install.sh
   ```

5. **Post-installation**  
   Follow any additional prompts shown during installation or check the README notes for configuration.

---

## ▶️ Usage
Once installed, you can start Ubuntu inside Termux and use it just like a regular Linux system:  

```bash
./start-ubuntu.sh
```

Inside Ubuntu you can:  
- Use standard Linux commands  
- Install new packages with `apt`  
- Develop, test, and run software  

---

## 🙌 Credits
This project leverages **Andronix system images and scripts**.  
Special thanks to the [Andronix Team](https://andronix.app/) for making Linux on Termux accessible.  

We also acknowledge the contributions of various open-source projects and developers whose work supports this environment.

---

## 📄 License
This project is licensed under the **MIT License**.  

<sub>
Copyright (c) 2025 Deepak Sahani  
<br><br>
Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:  
<br><br>
The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.  
<br><br>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  
SOFTWARE.
</sub>

---

✅ **Enjoy your Ubuntu environment on Termux!**
