# Rails Friends

A simple Ruby on Rails app to manage friends/contact data.

## Requirements

- Ruby 3.3.x
- Bundler 2.5+

## Local setup

1. Install dependencies:

```bash
bundle install
```

2. Prepare the database:

```bash
bin/rails db:prepare
```

3. Start the app:

```bash
bin/rails server
```

4. Open:

```text
http://127.0.0.1:3000
```

## Run tests

```bash
bin/rails test
```

## Public repository safety

- `config/master.key` must never be committed.
- Any `config/credentials/*.key` must never be committed.
- Local databases/logs/temp files are ignored by `.gitignore`.
- Keep real tokens/secrets only in encrypted credentials or environment
  variables.
