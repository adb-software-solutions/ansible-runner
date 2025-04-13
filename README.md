# Ansible Runner Image

A minimal Docker image with Ansible preinstalled, designed for use in GitHub Actions and other CI environments.

## 🐳 Docker Hub

Image available at: [`adbsoftwaresolutions/ansible-runner`](https://hub.docker.com/r/adbsoftwaresolutions/ansible-runner)

## 📦 What's Included

- Ubuntu 22.04 or 24.04 (depending on tag)
- Ansible (latest stable from official PPA)
- OpenSSH client

## 🚀 GitHub Actions Usage Example

```yaml
jobs:
  deploy:
    runs-on: ubuntu-latest
    container:
      image: adbsoftwaresolutions/ansible-runner:latest

    steps:
      - name: Checkout repo
        uses: actions/checkout@v3

      - name: Run Ansible playbook
        run: ansible-playbook site.yml -i inventory
```

## 🏷️ Tags and Versions

| Tag         | Base Image     | Description                      |
|--------------|----------------|----------------------------------|
| `latest`    | `ubuntu:24.04` | Default for most CI uses         |
| `ubuntu24`  | `ubuntu:24.04` | Explicit tag for Ubuntu 24.04    |
| `ubuntu22`  | `ubuntu:22.04` | Compatibility tag for Ubuntu 22.04 |

## 🛠 Building Locally

```bash
docker build -t adbsoftwaresolutions/ansible-runner:ubuntu24 --build-arg BASE_IMAGE=ubuntu:24.04 .
docker build -t adbsoftwaresolutions/ansible-runner:ubuntu22 --build-arg BASE_IMAGE=ubuntu:22.04 .
```

## 🔐 Required GitHub Secrets

| Secret Name             | Description                        |
|-------------------------|------------------------------------|
| `DOCKER_HUB_USERNAME`   | Your Docker Hub username           |
| `DOCKER_HUB_ACCESS_TOKEN` | Docker Hub access token (not password) |

## 📜 License

MIT