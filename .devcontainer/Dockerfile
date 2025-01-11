FROM mcr.microsoft.com/devcontainers/miniconda:0-3

# Environment variables
ENV CONDA_DIR=/opt/conda
ENV PATH=$CONDA_DIR/bin:$PATH

# Install mamba as root
USER root
RUN conda install -n base -c conda-forge mamba && \
    mamba shell init --shell bash --root-prefix=$CONDA_DIR && \
    echo "source $CONDA_DIR/etc/profile.d/mamba.sh" >> /etc/bash.bashrc && \
    chown -R vscode:vscode $CONDA_DIR /home/vscode

# Switch to non-root user
USER vscode
WORKDIR /workspaces

# Copy project files first
COPY --chown=vscode:vscode . .

# Setup environment
COPY --chown=vscode:vscode environment.yaml .
RUN mamba env create -f environment.yaml && \
    echo "mamba activate pboy" >> ~/.bashrc

# Configure git
RUN git config --global credential.helper store

SHELL ["/bin/bash", "-c"]

# Install global development tools with compatible versions
RUN pip install --no-cache-dir \
    black==23.10.1 \
    pip-tools==6.13.0 \
    mypy \
    flake8==6.1.0

# We'll install project dependencies later via postCreateCommand from devcontainer.json

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
