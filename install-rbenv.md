---
description: This assumes Fedora or other RPM based Linux OS.
---

# Install Rbenv

Rbenv is a version manager for ruby.  First install the required dependencies for Ruby and Rbenv. The -y option skips the yes/no prompt:

```bash
sudo dnf install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
```

Now install rbenv using the following commands. These are distro agnostic:

```bash
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
exec $SHELL
```

This installs rbenv into your home directory, and sets the appropriate environment variables that will allow rbenv to the active version of Ruby.

