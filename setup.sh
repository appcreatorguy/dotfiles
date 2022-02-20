# ZSH Setup
sudo apt install zsh

chsh -s $(which zsh)

# Oh my posh
POSH_LINK = https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64
POSH_DIR = "/usr/local/bin/oh-my-posh"
if [[ -z "$(command -V oh-my-posh)" ]]; then
    sudo wget $POSH_LINK -O $POSH_DIR
    sudo chmod +x $POSH_DIR
fi

# Git
sudo apt install git

# NVIM Setup

# Install pip packages
sudo apt install -y python3 python3-pip

pip install -U pynvim

pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort

# Node Setup
NODE_SRC_NAME = $HOME/packages/nodejs.tar.gz
NODE_DIR = $HOME/tools/nodejs
NODE_LINK = "https://nodejs.org/dist/v16.13.1/node-v16.13.1-linux-x64.tar.xz"
if [[ ! -d "$HOME/tools/" ]]; then
    mkdir -p "$HOME/tools/"
fi

if [[ ! -d "$HOME/pacakges/" ]]; then
    mkdir -p "$HOME/packages/"
fi

if [[ -z "$(command -V node)" ]]; then
    echo "install nodejs"
    if [[ ! -f $NODE_SRC_NAME ]]; then
        echo "Downloading NodeJs and renaming"
        wget $NODE_LINK -O "$NODE_SRC_NAME"
    fi

    if [[ ! -d "$NODE_DIR" ]]; then
        echo "creating nodejs dir under tools dir"
        mkdir -p "$NODE_DIR"
        echo "extracting to $HOME/tools/nodejs dir"
        tar xvf "$NODE_SRC_NAME" -C "$NODE_DIR" --strip-components 1
    fi
else
    echo "Nodejs is already installed. Skip installing it."
fi

#refresh profile to include node, just in case
source ~/.profile

# Install vim-language-server
npm install -g vim-language-server

# Ripgrep
sudo apt install ripgrep

# Ctags
sudo apt install universal-ctags

# Linters
pip install pylint flake8 vint clangd

# Install Nvim
sudo snap install nvim --classic
echo "Installing nvim plugins, please wait"
"/snap/bin/nvim" -c "autocmd User PackerComplete quitall" -c "PackerSync"

echo "Finished installing Nvim and its dependencies!"

# Build and Install Nvim-QT
# Clone Repo
git clone https://github.com/equalsraf/neovim-qt.git "$HOME/tools/neovim-qt"
cd "$HOME/tools/neovim-qt"

# Install Deps
sudo apt install -y cmake build-essential qt5-qmake qt5-qmake-bin qtbase5-dev \
    qtbase5-dev-tools libqt5svg5-dev qtchooser libqt5concurrent5 libqt5core5a libqt5dbus5 \
    libqt5gui5 libqt5network5 libqt5widgets5 libqt5xml5

# Build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
set NVIM_QT_RUNTIME_PATH=../src/gui/runtime

# Install
sudo cp bin/nvim-qt /usr/local/bin/nvim-qt
