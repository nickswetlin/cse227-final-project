FROM node:24-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends git ca-certificates \
        && rm -rf /var/lib/apt/lists/*

	RUN npm install -g @google/gemini-cli \
	    && npm cache clean --force

	    # Print versions so you can confirm the build meets your requirements
	    RUN node --version && npm --version && git --version && command -v gemini

	    WORKDIR /work
	    CMD ["bash"]

