# dotfiles

## Personal setup and configs for my fedora based machines, setup ready to be used with ansible.

#### Works on

| Distro | Versions |
| ------ | :------: |
| Fedora |    32    |

#### Support for:

- **docker**
- **snapd**
- **Copr based repos**

#### Tools for development:

- **php**
- **python**
- **javascript**

#### Personal Configs for:

- **vim**
- **tmux**
- **zsh**
- **openbox**

#### GTK themes and icon packs

- **papirus**
- **paper**

#### General Utils

- **Lutris**
- **Steam**
- **Spotify**
- **etc**

To run this:

`sudo ansible-galaxy install -r requirements.yml `

`sudo ansible-playbook setup.yml -i inventory.yml --ask-vault-pass --limit "host"`
