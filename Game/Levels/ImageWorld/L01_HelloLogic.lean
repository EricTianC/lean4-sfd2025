import Game.Metadata

World "ImageWorld"
Level 1

Title "你好，逻辑"

Introduction "逻辑是什么？本关展示基本的命题逻辑推理 ——
  `Prop` 意味着 `P` `Q` `R` 都是命题（的证明）,
  `∧` 是数学中 “且” 的符号表示,
  `→` 也就是 `⇒`，我们常见的 “推出”。

  在 Lean4 game 的关卡中，我们使用 tactic （意为 “策略”）来推进证明。
  （在底层，他们实际上通过执行一些预定好的逻辑来构造一些 “元对象” 来一点点构造最终的证明项）

  让我们从
  "

Statement (P Q R: Prop) : (P → Q) ∧ (Q → R) → (P → R):= by
  Hint ""
  grind

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
