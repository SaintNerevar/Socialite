# Configuring the Database

### Normal Method:

By default PostgreSQL starts in _ident_ authentication mode, so database Roles can only be accessed by a user of the same name as the Role. We first create a non-sudo user _socialite_ and set a password :

```text
sudo adduser socialite
```

To switch to socialite user, run:

```bash
su - socialite
#or
sudo -i -u socialite
```

{% hint style="info" %}
`su` stands for **Substitute User**. To logout, simply run `exit`
{% endhint %}

**But do not switch yet!** Instead, run the following command to directly open `psql` prompt as `postgres` user:

```bash
sudo -u postgres psql
```

In the resulting prompt, create a socialite role with the ability to create databases:

```text
postgres=# CREATE ROLE socialite WITH CREATEDB PASSWORD '1234';
```

{% hint style="info" %}
1234 is the password for the `dev` branch
{% endhint %}

{% hint style="warning" %}
Do not forget the `;` at the end!
{% endhint %}

Check if the role was created and then exit:

```text
postgres=# \du #check roles
postgres=# \q  #exit
```

We are now ready to clone and run Socialite!

### Container method:

This is very simple and non-messy. Enter the PostgreSQL container created in the previous step:

```text
podman exec -it container-name psql -U postgres
```

This open `psql` prompt as `postgres` user. Then create socialite user:

```text
postgres=# CREATE USER socialite WITH CREATEDB PASSWORD '1234';
postgres=# \du #Check roles
postgres=# \q  #Exit
```

{% hint style="info" %}
1234 is the password for the `dev` branch
{% endhint %}

{% hint style="info" %}
This method uses `trust` authentication
{% endhint %}

{% hint style="warning" %}
Do not forget the `;` at the end!
{% endhint %}

Aaand you're done! 

