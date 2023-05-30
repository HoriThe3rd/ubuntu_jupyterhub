FROM Ubuntu:22.04
RUN apt update && apt install -y \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-setuptools \
    python3-venv \
    git \
    vim \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install requirements for JupyterHub
RUN pip install jupyterhub \
    jupyterlab \
    notebook

RUN npm install -g configurable-http-proxy