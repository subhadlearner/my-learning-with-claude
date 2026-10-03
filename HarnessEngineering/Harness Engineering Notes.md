# Harness Engineering Notes

Oct 3, 2026 · @Subhadeep Majumder

# My sources
https://www.faros.ai/blog
https://github.com/walkinglabs/learn-harness-engineering
https://addyosmani.com/blog/good-spec/
https://www.augmentcode.com/blog
https://ven109.github.io/agent-harness-book-claude/
https://walkinglabs.github.io/learn-harness-engineering/en/
https://github.com/subhadlearner/my-learning-with-claude/tree/main/HarnessEngineering/Resources

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

### Day 1 · 4 Oct: The contractor with no memory

**The gap**

You spend an hour with a coding agent. It learns that your repository layer returns `Result<T>` and never throws, and it writes good code. Next morning you open a new session, ask for one more endpoint, and it throws exceptions from the repository as if yesterday never happened. Nothing broke. That is the system working exactly as built. Before we can design anything around the model, we need to say precisely what it is.

**The consequence**

Today has no "therefore". This is the axiom the other thirteen days stand on.

A model call is a function: text in, text out. Two properties of that function matter.

It is stateless. Nothing is kept between calls. There is no session inside the model, no project it "is working on". When a call returns, the model is exactly as it was before the call. So at any moment, everything it knows about your project is the text in the context window right now. Its training gives it general skill (how C# works, what a repository pattern is), but nothing about *your* code, *your* decisions, or what happened five minutes ago.

It is probabilistic. The output is sampled, so the same input can give different outputs. Run the same prompt twice and you may get two different designs, one of them wrong, both written with the same confidence.

The analogy we will keep for the whole course: the model is a brilliant contractor who wakes every morning with no memory of the site, and who sometimes reports work as finished when it is not. He is not lazy or dishonest; that is simply how he is built. Today he stands at the gate of an empty plot. He can build anything, but he knows only what is put in his hands this morning, and his word alone does not tell you what was built.

Chain so far: **stateless, probabilistic function**

**Concretely**

What a chat API call actually looks like on turn 3 of a conversation:

- Turn 1 request: system prompt + your message 1.
- Turn 2 request: system prompt + message 1 + reply 1 + message 2.
- Turn 3 request: system prompt + message 1 + reply 1 + message 2 + reply 2 + message 3.

The client resends the entire transcript every time. Delete reply 1 from the list before sending turn 3 and, for the model, it was never said. The "conversation" exists in the caller, not in the model.

**In your design**

Architecture §1 (Vision) says SubhForge exists to take products from idea to trustworthy software "while minimizing: lost context; repeated explanation; …". Those are the first two items on the list, and they are the two direct symptoms of statelessness: context is lost because nothing keeps it, and you repeat yourself because the function has to be told again on every call.

**Check yourself**

If the model keeps nothing between calls, where does a coding agent's apparent memory of your project come from?

**Tomorrow**

One call is not an agent. What happens to that "sometimes different, sometimes wrong" when the function is called many times in a row?

**Sources**

- [Google, "Agents" whitepaper](https://github.com/subhadlearner/my-learning-with-claude/blob/main/HarnessEngineering/Resources/22365_19_Agents_v8.pdf), p. 5 "What is an agent?" and p. 8 "Agents vs. models". The table on p. 8 puts today's point in one row: for a model, "Unless explicitly implemented for the model, there is no management of session history or continuous context", while an agent has "Managed session history (i.e. chat history)". Memory is something built around the model. The paper supports the stateless half; it does not discuss the probabilistic half.
- [SubhForge V0.2-ARCHITECTURE.md §1 Vision](https://github.com/subhadlearner/SubhForge/blob/feature/v0.2.0/design/V0.2-ARCHITECTURE.md), read today; wording unchanged.
