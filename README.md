# devops-lab04-upstream

The class repository for **Lab 04 — Collaborative Workflow**.

You can read this repository. You cannot write to it. To contribute you must
fork it, change your fork, and open a pull request back here. That is the
fork-and-pull model, and it is how every open-source project works.

## What to do

1. Fork this repository into your own GitHub account.
2. Clone **your fork** (not this one) to your laptop.
3. Add this repository as a second remote called `upstream`.
4. On a branch, add **one file** under `students/`, named after your roll
   number — for example `students/21-NTU-CS-1234.md`.
5. Push the branch to your fork and open a pull request against this
   repository.

## Rules

- **One file per student.** Do not edit anyone else's file, and do not add
  your name to a shared list — if forty people append to one file, every pull
  request after the first one conflicts.
- Name the file exactly after your roll number, in capitals.
- Keep it to two lines: your name, and your roll number.

## Keeping your fork current

Other students' pull requests will be merged while yours is open. Your fork
does not update itself:

```bash
git fetch upstream
git rebase upstream/main
git push --force-with-lease origin your-branch
```

That force-push is acceptable because the branch exists only in your own fork.
test
