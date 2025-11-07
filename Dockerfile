FROM docker.io/python:3.13.9-slim

USER root
WORKDIR /app
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY pyproject.toml uv.lock /app/

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.local/bin:$PATH"

RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
    && uv venv --python $(which python3) \
    && uv sync

EXPOSE 4200
