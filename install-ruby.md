---
description: This setup is specific to Socialite
---

# Install Ruby

Socialite uses ruby 2.7.0. We will be installing that specific version using the following commands:

```
rbenv install -v 2.2.1
rbenv global 2.2.1
```

{% hint style="info" %}
 The `global` sub-command sets the default version of Ruby that all of your shells will use
{% endhint %}

Verify that Ruby is installed with:

```text
ruby -v
```

It is likely that you will not want Rubygems to generate local documentation for each gem that you install, as this process can be lengthy. To disable this, run this command:

```text
echo "gem: --no-document" > ~/.gemrc
```

Now install bundler to manage dependencies:

```text
gem install bundler
```

