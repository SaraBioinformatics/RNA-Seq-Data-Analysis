##install trimglore

##sudo apt install pipx python3-venv

# Check that cutadapt is installed
cutadapt --version
# Check that FastQC is installed
fastqc -v
# Install Trim Galore
curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/0.6.10.tar.gz -o trim_galore.tar.gz
tar xvzf trim_galore.tar.gz
# Run Trim Galore
~/TrimGalore-0.6.10/trim_galore

###Installation cutadupt with pipx
sudo apt install pipx python3-venv
pipx install cutadapt
cutadapt --version
###Installation cutadupt with pip
sudo apt install python3-virtualenv
virtualenv cutadapt-venv
cutadapt-venv/bin/pip --upgrade pip
cutadapt-venv/bin/pip install cutadapt
~/TrimGalore-0.6.10/trim_galore

##Run trimgalore

