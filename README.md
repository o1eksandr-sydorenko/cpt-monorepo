# CryptoPortfolioTracker

## Finish your CI setup

## Run tasks

## Add new git submodule

1. Go to github and create new repository, name it in next structure:

cpt-[`you service/worker name`]-(type: `tool`, `lib`, `app`)
For examle
cpt-users-app

During creating repository check 'Add a README file', it'll make the process of adding git submodule easier

2. Run command to add git submodule:

```sh
git submodule add <REPO_URL> <SUBMODULE_PATH>
```

For example:

```bash
git submodule add https://github.com/o1eksandr-sydorenko/cpt-users-app.git apps/users
```

## Push all submodules

```bash
git submodule foreach --recursive 'git push'
```

# NX Prisma commands [read more](https://github.com/gperdomor/nx-tools/blob/main/plugins/nx-prisma/README.md)

To init app with prisma:

```bash
nx g @nx-tools/nx-prisma:configuration appName
```

### Work commands:

```bash
nx prisma-generate appName
nx prisma-deploy appName
nx prisma-migrate appName
nx prisma-pull appName
nx prisma-push appName
nx prisma-studio appName
nx prisma-validate appName
```

### Executors

- `deploy`: Apply pending migrations to update the database schema in production/staging.
- `generate`: Generate artifacts (e.g. Prisma Client).
- `migrate`: Create a migration from changes in Prisma schema, apply it to the database, trigger generators (e.g. Prisma Client).
- `pull`: Pull the schema from an existing database, updating the Prisma schema.
- `push`: Push the Prisma schema state to the database.
- `reset`: Reset your database and apply all migrations, all data will be lost.
- `resolve`: Resolve issues with database migrations in deployment databases.
- `seed`: Seed your database.
- `status`: Check the status of your database migrations.
- `studio`: Browse your data with Prisma Studio.
- `validate`: validate your Prisma schema.

### Exampls

```bash
$  npx nx prisma-migrate users --name=[migration name] --only-create
```
