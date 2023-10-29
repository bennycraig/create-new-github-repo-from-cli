# Instructions to create a new Github repo from the command line

### Installation and configuration of the 'gh' CLI
- brew install gh
- gh auth login
    - select 'Github.com'
    - select 'SSH'
    - select local SSH key
    - select 'Login with web browser'
- gh auth status

### Create a new repository
- mkdir my-new-repo
- cd my-new-repo
- git init
- gh repo create {repository-name} --public --source=.

### Add files and push
- git add .
- git commit -m "Initial commit"
- git push --set-upstream origin main

### Check repository online
- gh repo view --web

## Automating GitHub repo creation with a script
I wrote this script to automate the process of creating a new Github repository from your local directory. It assumes you already installed and configured the 'gh' CLI.

### Instructions:
1. **Adding to .bash_profile**: Open the script `initialize-github-repo.sh` and copy the contents of the file. Add this function to the end of your .bash_profile file. You can open this file in your text editor, for example: nano ~/.bash_profile.

2. **Reloading .bash_profile**: After adding the function, save changes and reload your .bash_profile by running source ~/.bash_profile in your terminal.

3. **Usage**: Simply navigate to the directory where you want to create your new GitHub repository and run initialize-github-repo.