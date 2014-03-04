# About 
Configuration of Vim Supported by [dxh](http://dxh.github.io)

1. Integration of popular plugins 
2. Plugins managed by vundle 
3. System clipboard 
4. Custom key mapping 

# Installation (Mac OS X and Linux)

1. Clone this Configuration
  
    ```bash
    git clone https://github.com/dxh/DxhVim.git ~/.vim
    ```
2. Clone vundle
    
    ```bash
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```
3. Source the configuration
    
    ```bash
    echo 'source ~/.vim/.vimrc' > ~/.vimrc
    ```
4. Install plugins included by this configuration
    
    ```bash
    :BundleInstall          # In vim
    ```

# Update to the latest version
```bash    
cd ~/.vim/
git pull
:BundleInstall
```

