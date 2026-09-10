# Engineer 101 for Vibe Coders: Git, Databases, Containers

Starter repository for the pair-programming lab sessions. Clone this repo, open it in VS Code, and work through the labs below with your pair.

## Lab Index

### Unit 0 — Setup
- **Lab 0.1** — Environment & Tooling Setup (Git, VS Code, Docker Desktop, Python 3.11)

### Unit 1 — Git Fundamentals
- **Lab 1.1** — `git status` & inspecting diffs (`welcome.txt`)
- **Lab 1.2** — Staging & committing clean milestones
- **Lab 1.3** — Discarding changes (`git restore`) and undoing commits (`git reset --soft`)

### Unit 2 — Collaboration Workflow
- **Lab 2.1** — Branching basics
- **Lab 2.2** — Pull requests & Driver/Navigator review (`.github/PULL_REQUEST_TEMPLATE.md`)
- **Lab 2.3** — Resolving merge conflicts

### Unit 3 — Databases
- **Lab 3.1** — Postgres schema design (`db/schema.sql`)
- **Lab 3.2** — Row-Level Security policies (`db/rls_policies.sql`)
- **Lab 3.3** — ERD modeling with `schema.drawio`

### Unit 4 — Containers Basics
- **Lab 4.1** — Docker fundamentals & the `Dockerfile` (`app/Dockerfile`)
- **Lab 4.2** — Docker Compose basics (`docker-compose.yml`)

## Quick Command Reference

### Git
| Command | Purpose |
|---|---|
| `git status` | Show working tree status |
| `git diff` | Show unstaged changes |
| `git add <file>` | Stage a file |
| `git commit -m "feat: ..."` | Commit staged changes |
| `git restore <file>` | Discard unstaged changes to a file |
| `git reset --soft HEAD~1` | Undo the last commit, keep changes staged |
| `git checkout -b <branch>` | Create and switch to a new branch |

### Docker
| Command | Purpose |
|---|---|
| `docker compose build` | Build the Docker stack |
| `docker compose up -d` | Launch the Docker stack in the background |
| `docker compose down` | Stop the Docker stack |
| `docker compose logs -f web` | Tail logs for the web service |

### Postgres
| Command | Purpose |
|---|---|
| `psql -f db/schema.sql` | Apply the base schema |
| `psql -f db/rls_policies.sql` | Apply Row-Level Security policies |

## Endpoints
Once the stack is running via `docker compose up -d`, hit these on the `web` service:
- `GET /` — welcome/status message
- `GET /health` — health check
