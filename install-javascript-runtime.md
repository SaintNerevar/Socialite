# Install Javascript Runtime

Rails depends on a JavaScript runtime, install Node.js.

#### Fedora and derivatives:

```
sudo dnf install nodejs npm
```

#### Ubuntu and derivatives:

```text
sudo apt-get install nodejs npm
```

#### Arch and derivatives

```text
sudo pacman -S nodejs npm
```

Yarn should also be installed to manage Asset Pipeline Packages. Rails uses Yarn to package it's JavaScript. Head to Yarn's installation Docs [here](https://classic.yarnpkg.com/en/docs/install/)

