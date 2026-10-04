# Coverage check

This file answers one question: does the plan cover what your sources treat as important? The yardstick is the chapter lists of the sources in `../Resources/`, which are the authority on this subject, not the planner's own judgement. The weekly planning routine reads this file before planning and updates it after, and adds any new source it finds in the folder.

## Sources checked
Checked at chapter and section level on 4 October 2026 (the chapter lists and abstracts were read, not every page):
- **Study**: "Harness Engineering: Anatomy, Architecture, and Evolution of Coding Agents", a source-code study of eleven systems (sections 2 and 6 to 17)
- **Paper**: "AI Harness Engineering: A Runtime Substrate for Foundation-Model Software Agents", arXiv 2605.13357 (its eleven component responsibilities)
- **Book 1**: Agentway harness book on Claude Code (chapters 1 to 9)
- **Book 2**: Agentway comparative notes, Claude Code and Codex (chapters 1 to 8)
- **OpenAI**: "Harness engineering: leveraging Codex in an agent-first world"
- **Course**: learn-harness-engineering, lectures 1 to 14 and projects 1 to 8
- **Skills guide**: Anthropic, "The Complete Guide to Building Skills for Claude"
- **Agents**: Google "Agents" whitepaper

Not yet checked: the blogs in `imp-urls.txt` (faros.ai, augmentcode.com) and the online book at ven109.github.io, which may be the web edition of Book 1.

## Topics
| Topic the sources treat as important | Where the sources cover it | Where this course covers it | Status |
|---|---|---|---|
| What a harness is and why models need one | Study 2; Paper; Book 1 ch. 1; Course L01–L02 | Block 1, days 1–4 and 17 | Covered |
| The agent loop | Study 6; Book 1 ch. 3; Book 2 ch. 3 | Block 1, day 3; Block 2 | Covered, deepened in Block 2 |
| Loop control: stop conditions, interrupts, reflection loops | Study 6.3; Book 1 ch. 3.5–3.7 | Block 2 | Planned |
| Tools and actions: interface design, how many tools, deferred loading, file editing | Study 8, 16.3–16.4; Paper (tool access); Book 1 ch. 4 | Block 3 | Planned (gap found 4 Oct) |
| Permissions and sandboxing | Study 10, 15.3, 16.6; Paper (permissions); Book 1 ch. 4; Book 2 ch. 4 | Block 4 | Planned (gap found 4 Oct) |
| Human authority and approval | Book 2 ch. 4; Study 10 | Block 1, day 13; Block 4 | Covered, deepened in Block 4 |
| Instructions: layering, precedence, why one big file fails | Book 1 ch. 2; Book 2 ch. 2; OpenAI; Course L04; Study 7.2–7.3 | Block 5 | Planned |
| Context as a budget; context selection | Study 9; Paper (context selection); Book 1 ch. 5; OpenAI | Block 1, day 8; Block 5 | Covered, deepened in Block 5 |
| Durable state and the repository as the source of truth | Course L03, L05; OpenAI; Book 2 ch. 3; Paper (task state) | Block 1, days 5–7; Block 6 | Covered, deepened in Block 6 |
| Compaction and summarisation when the window fills | Study 9.3–9.5; Book 1 ch. 5.5–5.6 | Block 6 | Planned, needs its own day |
| Session memory and persistent memory | Study 9.6; Paper (project memory); Book 1 ch. 5.3–5.4 | Block 6 | Planned, needs its own day |
| Task specification; cutting work into units; feature lists | Paper (task specification); Course L07–L08 | Block 1, day 9; Block 7 | Covered, deepened in Block 7 |
| Verification and evidence | Paper (verification); Course L09–L10; Book 2 ch. 6; Book 1 ch. 7 | Block 1, days 10–12; Block 8 | Covered, deepened in Block 8 |
| Mechanical enforcement of architecture (linters, structural tests) | OpenAI | Block 1, day 11; Block 8 | Covered, deepened in Block 8 |
| Change and reconciliation | his own design (Contracts §16) | Block 1, day 14; Block 9 | Covered, deepened in Block 9 |
| Entropy: auditing and cleaning up drift in an agent-written codebase | Paper (entropy auditing); OpenAI | Block 9 | Planned, needs its own day |
| Errors and recovery | Book 1 ch. 6; Course L12 | Block 1, day 15; Block 10 | Covered, deepened in Block 10 |
| Observability, failure attribution, recording human interventions | Paper; Course L11; OpenAI | Block 1, day 16; Block 10 | Covered, deepened in Block 10 |
| Multi-agent orchestration and delegation | Study 11, 16.7; Book 1 ch. 7; Book 2 ch. 6; Course L14 | Block 11 | Planned |
| Cost and model routing; provider abstraction; model–harness co-design | Study 7.1, 7.5, 15.4, 16.2; Book 1 ch. 2.5 | Block 12 | Planned |
| Extensibility: skills, hooks, plugins, MCP | Study 12, 16.8; Book 2 ch. 5; Skills guide | Block 13 | Planned (gap found 4 Oct) |
| Judging a harness: maturity levels, trace-based evaluation, ablation | Paper (H0–H3 ladder, episode packages); Course project 6; Study 4 | Block 14 | Planned (gap found 4 Oct) |
| Making the application legible to the agent | OpenAI | Block 14 | Planned (gap found 4 Oct) |
| What not to build; designing your own harness | Study 15.2, 16.9; Book 2 ch. 7–8; Book 1 ch. 9 | Block 14 | Planned (gap found 4 Oct) |

## Deliberately left out
| Topic | Where the sources cover it | Why it is out |
|---|---|---|
| Team adoption | Book 1 ch. 8 | SubhForge is a one-person system |
| Platform economics, marketplaces | Study 14 | About the industry, not about building a harness |
| Streaming and response processing internals | Study 7.4 | Implementation detail of one layer; add a row with "Requested" if you want it |

## How to use this file
- If you think something important is missing, add a row with the status "Requested" and the planner will place it.
- Drop a new PDF into `Resources/` or a link into `imp-urls.txt` at any time. The next Sunday planning run adds it here and to `Resources/README.md`.
- Rows are marked "Covered" only for days already delivered or already written in `plan.md`.
