import Game.Metadata

World "ImageWorld"
Level 2

Title "你好，逻辑"

Introduction "逻辑是什么？本关展示基本的命题逻辑推理 ——
  `Prop` 意味着 `P` `Q` `R` 都是命题（的证明）,
  `∧` 是数学中 “且” 的符号表示,
  `→` 也就是 `⇒`，我们常见的 “推出”。

  在 Lean4 game 的关卡中，我们使用 tactic （意为 “策略”）来推进证明。
  （在底层，他们实际上通过执行一些预定好的逻辑来构造一些 “元对象” 来一点点构造最终的证明项）

  让我们从 `intro h` 开始，通过引入假设，构造目标中的 “推出” 关系
  "

Statement (P Q R: Prop) : (P → Q) ∧ (Q → R) → (P → R):= by
  intro h
  Hint "接下来，使用 `rcases h with ⟨hpq, hqr⟩` 拆分 “且” 命题. 其中特殊的尖括号可使用 \\<> 打出"
  rcases h with ⟨hpq, hqr⟩
  Hint "此时，要构造 `P → R` 类型的对象，即需证明对任意的 P 的证明 hp，都能得到 R 的证明。

        接下来，使用 `intro hp` 引入假设 hp
        "
  intro hp
  Hint "hpq 的类型为 P → Q，类似于函数。Lean4 中这样的 “函数” 的应用不需要括号，
  `hpq hp` 即为类型 Q 的对象

  接下来，使用 `exact (hqr (hpq hp))` 结束证明. （注意括号和空格的使用）
  "
  exact (hqr (hpq hp))


Conclusion "接下来，你还将见识许多这样的 Lean4 中表示逻辑的巧妙方式"

/- Use these commands to add items to the game's inventory. -/
NewTactic intro rcases exact
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
