# Course engine

How the Harness Engineering course runs. Two routines at claude.ai/code/routines read these files each time they run, so editing a file here changes the course from the next run, with nothing to re-paste.

| File | Read by | What it controls |
|---|---|---|
| `daily-instructions.md` | Daily nugget routine | The nugget's format, length, picture, sources and how it is saved |
| `plan.md` | Both routines | What each day teaches. Contains the answers to the check questions |
| `weekly-instructions.md` | Weekly planning routine | How the next block is planned every Sunday |
| `coverage.md` | Weekly planning routine, and you | Whether the plan covers what your sources treat as important |

Nuggets are saved to `../Harness Engineering Notes.md`.
