# Reverse Engineer Anything and Pseudo-White Box Attacks
This is a repo for our CSE227 Final Project: investigating the capabilities of the popular "Reverse Engineer Anything" github repo and what it means for bad actors and improving their attacks.

## Set Up
Requires: Docker, Git, and a GoogleGemini API Key

Clone this repo, change directory:
```
git clone https://github.com/nickswetlin/cse227-final-project.git
cd cse-227-final-project
```

Build the docker container. Run the docker container (change "your-key-here" to your GoogleGeminiAPI key): 
```
docker build -t gemini-env .
docker run -it --rm \
  -e GEMINI_API_KEY="your-key-here" \
  -v "$PWD":/work \
  -v ~/.gitconfig:/root/.gitconfig:ro \
  gemini-env bash
```

In your docker container, enter Gemini by typing `gemini`. After setting up authorization, install REA by asking Google Gemini this prompt:
```
Install REA and connect it to this coding agent using npx rea-agents@latest setup. Show me the setup plan for approval, then verify the installation.
```

This should successfully install REA on your container.
