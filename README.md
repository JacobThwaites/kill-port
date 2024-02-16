# kill-port
A MacOS terminal command to kill the process running on a given TCP port.

## Usage 
```zsh
kill-port <PORT_NUMBER>
```

## Setup 
1. Create a local file called "kill-port"
```zsh
touch ~/kill-port
```

2. Copy and paste the script from [kill-port.sh](kill-port.sh) into the newly created file.

3. Make the file executable
```zsh
chmod +x ~/kill-port
```

4. Copy the file to /usr/local/bin

### For a non-admin account:
```zsh
mkdir ~/bin
mv ~/kill-port ~/bin/
```

Then add the following to your ~/.zshrc or ~/.bashrc file:
```zsh
export PATH=$PATH:~/bin
```

And save and reload your configuration with:
```source ~/.zshrc``` or ```source ~/.bashrc```

### For an admin account:
```zsh
sudo mv ~/kill-port /usr/local/bin/
```