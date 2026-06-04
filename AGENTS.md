# AstroLens V1 Agent Guide

## Repo Role

This is the public execution repository for AstroLens V1. The current app source has not been scaffolded yet. Treat `.planning/Docs/tasks.md` as the canonical product task authority and `tasks/todo.md` as the local execution tracker.

## Hard Rules

- Do not push or mutate the parent vault repo.
- Do not commit local state files, generated cache files, API keys, or private environment files.
- Do not create a macOS app workflow for this project. The product target is iPhone iOS 17+ with SwiftUI, RealityKit, and ARKit.
- Do not introduce third-party product packages unless a task explicitly revises the no-third-party policy.
- Do not claim AR or Sky Mode completion without device or clearly scoped simulator evidence.
- Update `tasks/lessons.md` after user corrections or repeated implementation mistakes.

## Planning and Execution

- Plan non-trivial work in `tasks/todo.md` before implementation.
- Keep every GitHub issue mapped to one owner, one branch, and one worktree.
- Use branch names shaped like `swarm/astrelens/<phase>-<wave>/<swarm>/<task-id>-<agent>`.
- Treat app shell, project config, CI, shared contracts, and generated schema/type files as lock zones.
- Merge at wave boundaries unless the orchestrator explicitly changes the rule.

## Verification

No task is done without evidence. Attach the smallest useful proof to the issue or PR:

- command output summary,
- simulator/device target used,
- tests run,
- screenshots or AR proof when visual behavior is involved,
- security/privacy notes for API or AI tasks.

