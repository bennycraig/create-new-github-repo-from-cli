# This script automatically creates a Github repository from the local directory.

initialize-github-repo() {
    # Get the name of the current directory to use as the repository name
    local repo_name=$(basename "$(pwd)")

    # Initialize the local git repository
    git init

    # Create a new repository on GitHub
    # The --source=. flag attempts to set the remote origin to this repository
    gh repo create "$repo_name" --public --source=.

    # Create and initialize README.MD
    echo "# $repo_name" > README.MD

    # Add files, commit, and push to the remote repository
    git add .
    git commit -m "Initial commit."
    git push --set-upstream origin main

    # Open the new repository in the web browser
    gh repo view --web
}
