# Create New Github Repository from the gh CLI

Installation and configuration
- brew install gh
- gh auth login
    - select 'Github.com'
    - select 'SSH'
    - select local SSH key
    - select 'Login with web browser'
- gh auth status

Create a new repository
- mkdir my-new-repo
- cd my-new-repo
- git init
- gh repo create <repository-name> --public --source=.

Add files and push
- git add .
- git commit -m "Initial commit"
- git push

Check repository online
- gh repo view --web