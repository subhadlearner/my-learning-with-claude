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

The whole course builds one idea: a language model is a function that remembers nothing and whose output varies, and every part of a reliable harness is a consequence of those two facts. Each day adds one consequence to the days before it, so the notes are meant to be read in order.

Every nugget has the same shape: a scene with the builder, three to five small steps from basics, the idea stated only at the end, something to try yourself, where it lives in SubhForge, one question to check yourself, and one source. Each is 300 to 400 words.

The notes are yours to edit. Add your own remarks under any nugget; the morning run only appends at the end and does not rewrite what is already here.

## The arc to 31 December

Block 1 gives the reasons a harness must exist; every later block takes one part of it and goes deeper. Only Block 1 is planned day by day. Each later block runs Monday to Sunday and is planned automatically on the Sunday evening before it starts.

| Block | Dates | Sub-topic | Lines up with (SubhForge timeline) | Planned |
| --- | --- | --- | --- | --- |
| 1 | 4–21 Oct | Why a harness exists: the chain of consequences | v0.1.1, Architecture Fitness Review | Yes |
| – | 22–25 Oct | Review days on Block 1 | Design freeze | Yes |
| 2 | 26 Oct–1 Nov | Instructions and context: what goes in front of the model, and when | Start of rc1 work | Not yet |
| 3 | 2–8 Nov | Decomposition and the work graph: dependencies, readiness | rc1 | Not yet |
| 4 | 9–15 Nov | Verification in depth: test tiers, evidence, independent checking | rc2, reconciliation checkpoint | Not yet |
| 5 | 16–22 Nov | Change and reconciliation: impact analysis, where propagation stops | rc3 | Not yet |
| 6 | 23–29 Nov | Failure, recovery, observability, behaviour drift | Stable release, buffer | Not yet |
| 7 | 30 Nov–6 Dec | Cost, model routing and multi-agent roles | First real use | Not yet |
| 8+ | 7–31 Dec | Open: chosen from what your notes and repos show you need | | Not yet |

Sub-topics for Blocks 2 to 7 are a proposal and can be changed by leaving a remark in these notes before Sunday evening.

## Block 1: Why a harness exists (4–21 Oct)

Seventeen days, one chain. Each day asks one question and adds one link that follows from the ones before. The wrap-up is on 21 October.

1. Where does the model keep your project?
2. Why does the same question get different answers?
3. How does a text function get any work done?
4. Why do long tasks go wrong even with a good model?
5. If he forgets everything, where must the plan live?
6. What happens when two documents disagree?
7. Is "what we are building" the same kind of fact as "what is done"?
8. Why not hand him everything?
9. How big should one job be?
10. When he says "done", what do you have?
11. Who should the inspector be?
12. Is yesterday's inspection still good today?
13. Who decides?
14. What breaks when the plan changes?
15. What if he is interrupted halfway?
16. How do you find out what happened?
17. Can you rebuild the whole design from two facts?

The daily nuggets follow below, newest at the bottom.

### Day 1 · 4 Oct: Where does the model keep your project?

Imagine a master builder with forty years of skill and one strange condition: every morning he wakes with no memory of any site he has worked on. Hold that picture. Now let's see why it is exactly true of a model.

**Step 1. What is a model, physically?** A file of numbers on a disk. Training produced those numbers, and then training stopped. The file is frozen.
*The builder's skill: learned once, fixed.*

**Step 2. What happens when you use it?** A program reads your text, runs arithmetic through those numbers, and produces text. Then it stops. Compare the file before and after: identical, byte for byte. Using the model does not change it, the same way reading a book does not change the book.
*The builder works a full day and goes home. Nothing about the day is stored in him.*

**Step 3. So where could yesterday be?** There are only two places anything can live: in the file, or in the text you hand over. Step 2 rules out the file. So if something is not in the text you send right now, then for the model it does not exist.
*He knows only the papers put in his hands this morning.*

**Step 4. But chat remembers what I said.** Look at what the app sends. On your third message it sends the first message, the first reply, the second message, the second reply, and then your third. The whole transcript, every time. The memory is in the app.
*Someone hands him yesterday's site diary at the gate each morning.*

**Now it's obvious.** The model knows two things: the general skill frozen into it, and the text in front of it. Your project is never in the first, so it must always be put into the second, by something outside the model.

**See it yourself (2 minutes).** Open a new chat and ask: "What did we decide yesterday about error handling?" Then paste yesterday's decision and ask again.

**In SubhForge:** this is why your vision lists "lost context" and "repeated explanation" first among the things to minimise (Architecture §1).

**Chain so far:** remembers nothing

**Check yourself:** A coding agent "remembers" your coding conventions across sessions. What must be happening?

*Tomorrow:* ask him the same question on two mornings and you get two different answers. Why?

*Source:* [Google, "Agents" whitepaper](https://github.com/subhadlearner/my-learning-with-claude/blob/main/HarnessEngineering/Resources/22365_19_Agents_v8.pdf), p. 8, "Agents vs. models".
