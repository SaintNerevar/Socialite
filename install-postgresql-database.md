---
description: 'Socialite uses PostgreSQL to store data (like images, credentials, etc)'
---

# Install PostgreSQL Database

### Normal Method:

#### Ubuntu and derivatives:

PostgreSQL is already installed on most official Ubuntu Distributions. If not installed follow installation instructions [here](https://www.postgresql.org/download/linux/ubuntu/)

#### Fedora and derivatives:

PostgreSQL can be installed by the following command:

```bash
dnf install postgresql-server postgresql-devel
```

#### Post Installation:

You have to create a new PostgreSQL database cluster before you can use your PostgreSQL database. A database cluster is a collection of databases that are managed by a single server instance. Creating a database cluster consists of creating the directories in which the database data will be placed, generating the shared catalog tables, and creating the `template1` and `postgres` databases.

```bash
postgresql-setup initdb #Fedora 29 and later
systemctl enable postgresql.service
systemctl start postgresql.service
```

{% hint style="info" %}
`systemctl enable` will start the postgresql server on boot. Skip that command if you don't want it to autostart.
{% endhint %}

Now we are ready to configure the database for Socialite.

### Using Containers \(i.e Docker, Podman, etc\) :

Using PostgreSQL container is a robust and non-messy way of handling the database part. Recommended to use [Podman](https://podman.io/getting-started/) for creating containers but [Docker](https://docs.docker.com/get-docker/) can be used too. They are completely interchangeable but Podman is daemon-less. First, pull the PostgreSQL docker image:

```bash
podman pull postgres
```

{% hint style="info" %}
If using Docker, just replace `podman` with `docker`
{% endhint %}

Create a container from the image using the following command:

```bash
podman run --name container-name -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres
```

{% hint style="warning" %}
`POSTGRES_PASSWORD` must not be empty!
{% endhint %}

{% hint style="info" %}
`-p 5432:5432` maps the container's 5432 port to the container host's \(i.e localhost in this case\) 5432 port. This allows it to communicate with the Rails server
{% endhint %}

This runs the PostgreSQL container with `postgres` user and database setup with `initdb`.  We can now configure it for Socialite.

### Before Moving On:

Install **ImageMagick** which is required to process images uploaded to Socialite:

```bash
sudo dnf install ImageMagick
```

