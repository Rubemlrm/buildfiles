# BuildFiles

## Build status

[![linting](https://github.com/Rubemlrm/buildfiles/actions/workflows/main.yml/badge.svg)](https://github.com/Rubemlrm/buildfiles/actions/workflows/main.yml)

## Powered by:

![](https://img.shields.io/badge/Ansible-gray?color=grey&logo=ansible&style=for-the-badge)
![](https://img.shields.io/badge/GithubActions-gray?color=grey&logo=github-actions&style=for-the-badge)
![](https://img.shields.io/badge/Git-gray?color=grey&logo=Git&style=for-the-badge)

## Works on

![](https://img.shields.io/badge/Fedora_34-gray?color=blue&logo=Fedora&style=for-the-badge)
![](https://img.shields.io/badge/Debian_10-gray?color=red&logo=Debian&style=for-the-badge)
![](https://img.shields.io/badge/Ubuntu_2004-gray?color=grey&logo=Ubuntu&style=for-the-badge)
![](https://img.shields.io/badge/Ubuntu_WSL-gray?color=grey&logo=Ubuntu&style=for-the-badge)

## Instructions

`pip3 install ansible`

### Before Run the setup

`ansible-galaxy collection install -r requirements.yml `

### Run the Playbook

`ansible-playbook setup.yml -i inventory.yml --ask-vault-pass --limit "host" --extra-vars "password=foobar" --ask-become-pass`
