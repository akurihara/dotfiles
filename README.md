# dotfiles

## Installation

If you have not already added an SSH to your GitHub account, generate one using:
```
% ssh-keygen -t ed25519 -C "your_email@example.com"
```
You will be prompted to choose a file location and enter a passphrase.

Then add it to your GitHub account by following these [instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

Clone this repository into your development directory.
```
% cd ~/Developer
% git clone git@github.com:akurihara/dotfiles.git
```

Run the installation script.
```
% bash install.sh
```
