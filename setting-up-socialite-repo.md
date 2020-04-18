# Setting up Socialite Repo

Clone the Socialite Repo and run the following:

```bash
cd
git clone https://github.com/SaintNerevar/Socialite.git
git checkout dev
cd Socialite
bundle install
```

After the installation completes, setup the database:

```bash
rails db:setup
```

{% hint style="danger" %}
You might run into `rails aborted! invalid format of target version` error when migrating. In that case, run

`unset VERSION`
{% endhint %}

{% hint style="warning" %}
It might also ask you to update Yarn. Do as it says.
{% endhint %}

Now we are ready to run the rails server:

```bash
rails server
```

Open [localhost:3000](http://localhost:3000) and you're set!!

