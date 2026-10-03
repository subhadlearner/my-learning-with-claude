# Harness Engineering Notes

Oct 3, 2026 · @Subhadeep Majumder

# My sources
https://www.faros.ai/blog
https://github.com/walkinglabs/learn-harness-engineering
https://addyosmani.com/blog/good-spec/
https://www.augmentcode.com/blog
https://ven109.github.io/agent-harness-book-claude/
https://walkinglabs.github.io/learn-harness-engineering/en/
https://github.com/subhadlearner/my-learning-with-claude/HarnessEngineering/Resources

## How these notes work

One nugget is added here every morning at about 7:15 am, from 4 October to 31 December 2026. Each one takes about five minutes to read.

The whole course builds one idea: a language model is a stateless, probabilistic function, and every part of a reliable harness is a consequence of that fact. Each day derives one new consequence from the days before it, so the notes are meant to be read in order.

Every nugget has the same parts: the answer to yesterday's question, the gap still open, the new consequence, a concrete example, where it already lives in SubhForge, one question to check yourself, and the sources.

The notes are yours to edit. Add your own remarks under any nugget; the morning run only appends at the end and does not rewrite what is already here.

## The arc to 31 December

Block 1 gives the reasons a harness must exist; every later block takes one part of it and goes deep. Only Block 1 is planned day by day. Each later block runs Monday to Sunday and is planned automatically on the Sunday evening before it starts, so it can respond to what the review and dogfoods show.

| Block | Dates | Sub-topic | Lines up with (SubhForge timeline) | Planned |
| --- | --- | --- | --- | --- |
| 1 | 4–18 Oct | Why a harness exists: the chain of consequences | v0.1.1, Architecture Fitness Review | Yes |
| 2 | 19–25 Oct | Instructions and context: what goes in the window, and when | Design freeze | Not yet |
| 3 | 26 Oct–1 Nov | Decomposition and the work graph: dependencies, readiness | Start of rc1 work | Not yet |
| 4 | 2–8 Nov | Verification in depth: test tiers, evidence, independent checking | rc1 | Not yet |
| 5 | 9–15 Nov | Change and reconciliation: impact analysis, where propagation stops | Reconciliation readiness checkpoint | Not yet |
| 6 | 16–22 Nov | Failure, recovery, observability, behaviour drift | rc3, scale dogfood | Not yet |
| 7 | 23–29 Nov | Cost, model routing and multi-agent roles | Stable release | Not yet |
| 8+ | 30 Nov–31 Dec | Open: chosen from what the dogfoods and the review exposed | Hardening and first real use | Not yet |

Sub-topics for Blocks 2 to 7 are a proposal and can be changed by leaving a remark in these notes before Sunday evening.

## Block 1: Why a harness exists (4–17 Oct)

Fourteen days, one chain. Day 1 states the fact; each later day adds one link that follows from the ones before.

1. A model call is a function that keeps nothing and can answer differently each time.
2. In a loop, small errors compound.
3. So anything that must survive is written outside the model.
4. So each fact needs exactly one home.
5. So slow-changing truth, fast-changing work state and computed views are kept apart.
6. The input is finite, so context is a budget.
7. So work is cut into units that fit one context and can be checked alone.
8. The output is a claim, so something else must check it and leave evidence.
9. So whatever software can prove is checked by code, not by the model.
10. Evidence is about one version, so it expires when the thing changes.
11. The model has no stake, so consequential decisions stay with the human.
12. When truth changes, finding what it invalidates is reconciliation.
13. The loop can be cut at any moment, so changes must be safe to repeat and leave a trace.
14. Read backwards, the whole design is one argument, and anything that serves no link is ceremony.

The daily nuggets follow below, newest at the bottom.
