# Claude Code Project Guidelines — Engineer 101

## Workspace Context
This repository is the official lab environment for "Engineer 101 for Vibe Coders: Git, Databases, Containers".

## Rules & Conventions
1. **Git Checkpoints**: Always run `git status` and inspect diffs before staging. Never commit directly to `main`.
2. **Commit Messages**: Use structured commit prefixes (`feat:`, `fix:`, `docs:`, `chore:`).
3. **Database Design**: Use PostgreSQL / Supabase dialect. Always enforce Primary Keys (UUIDs), Foreign Keys, and Row-Level Security (RLS) policies.
4. **Docker Rules**: Use lightweight base images (`python:3.11-slim`, `node:20-alpine`). Ensure volume mounts are configured for live development reloading.

## Quick Commands
- Run app locally: `uvicorn app.main:app --reload`
- Build Docker stack: `docker compose build`
- Launch Docker stack: `docker compose up -d`
- Stop Docker stack: `docker compose down`
