# Install Chocolatey package manager
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install VS Code
choco install vscode -y

# Install Firefox
choco install firefox -y

# Install Git
choco install git -y

# Install Node.js
choco install nodejs -y

# Install Rust
choco install rustup.install

# Install Python
choco install python -y

# Install Java JDK
choco install openjdk --version=17.0.8 -y

# Install antlr4
pip install antlr4-tools