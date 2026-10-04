# Coverage check

This file answers one question: does the plan cover what the field considers important? The yardstick is the tables of contents of the sources in `../Resources/`, not the planner's own judgement. The weekly planning routine reads this file before planning and updates it after.

Sources used as the yardstick:
- **Study**: "Harness Engineering: Anatomy, Architecture, and Evolution of Coding Agents", a source-code study of eleven systems (sections 2 and 6 to 12)
- **Book 1**: Agentway harness book on Claude Code (chapters 1 to 6)
- **Book 2**: Agentway comparative notes, Claude Code and Codex (chapters 1 to 6)
- **OpenAI**: "Harness engineering: leveraging Codex in an agent-first world"
- **Course**: learn-harness-engineering, lectures 1 to 14

Last full check: 4 October 2026.

| Topic the sources treat as important | Where the sources cover it | Where this course covers it | Status |
|---|---|---|---|
| What a harness is and why models need one | Study 2; Book 1 ch. 1; Course L01–L02 | Block 1, days 1–4 and 17 | Covered |
| The agent loop | Study 6; Book 1 ch. 3; Book 2 ch. 3 | Block 1, day 3 | Covered at first-principles level |
| Loop control: stop conditions, interrupts, reflection loops | Study 6.3; Book 1 ch. 3.5–3.7 | Block 6 | Planned, must be made explicit |
| Durable state and repository as the source of truth | Course L03, L05; OpenAI; Book 2 ch. 3 | Block 1, days 5–7 | Covered |
| Instructions: layering, precedence, why one big file fails | Book 1 ch. 2; OpenAI; Course L04 | Block 2 | Planned |
| Context as a budget | Study 9; Book 1 ch. 5; OpenAI | Block 1, day 8; Block 2 | Covered, deepened in Block 2 |
| Context compaction and summarisation when the window fills | Study 9.3–9.5; Book 1 ch. 5.5–5.6 | Block 2 | Planned, must be made explicit |
| Persistent memory across sessions | Study 9.6; Book 1 ch. 5.3–5.4 | Block 2 | Planned, must be made explicit |
| Cutting work into units; feature lists | Course L07–L08 | Block 1, day 9; Block 3 | Covered, deepened in Block 3 |
| Verification and evidence | Course L09–L10; Book 2 ch. 6 | Block 1, days 10–12; Block 4 | Covered, deepened in Block 4 |
| Mechanical enforcement of architecture (linters, structural tests) | OpenAI | Block 1, day 11; Block 4 | Covered, deepened in Block 4 |
| Human authority and approval | Book 2 ch. 4; Study 10 | Block 1, day 13 | Covered |
| Change and reconciliation | his own design (Contracts §16) | Block 1, day 14; Block 5 | Covered, deepened in Block 5 |
| Errors and recovery | Book 1 ch. 6; Course L12 | Block 1, day 15; Block 6 | Covered, deepened in Block 6 |
| Observability | Course L11; OpenAI | Block 1, day 16; Block 6 | Covered, deepened in Block 6 |
| Multi-agent orchestration and delegation | Study 11; Book 2 ch. 6; Course L14 | Block 7 | Planned |
| Cost and model routing; provider abstraction | Study 7.1, 7.5; Book 1 ch. 2.5 | Block 7 | Planned |
| **Tools and actions**: tool interface design, how many tools, deferred loading, file-editing strategies | Study 8; Book 1 ch. 4 | Block 8 | **Gap found 4 Oct; now planned** |
| **Permissions and sandboxing**: what an agent may run, layered permission systems, sandboxes | Study 10; Book 1 ch. 4; Book 2 ch. 4 | Block 9 | **Gap found 4 Oct; now planned** |
| **Extensibility**: skills, hooks, plugins, MCP | Study 12; Book 2 ch. 5 | Block 10 | **Gap found 4 Oct; now planned** |
| **Judging a harness**: evaluation, ablation, behaviour drift, making the application legible to the agent | Course project 6; OpenAI; Study 4 | Block 11 (short); Block 6 for drift | **Gap found 4 Oct; now planned** |

## How to use this file
- A topic marked "must be made explicit" means the block's planner has to give it at least one day.
- If you think something important is missing, add a row with the status "Requested" and the planner will place it.
- Rows are only marked "Covered" for days already delivered or already written in `plan.md`.
