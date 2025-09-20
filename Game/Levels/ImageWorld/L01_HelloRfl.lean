import Game.Metadata

World "ImageWorld"
Level 1

Title "同一律"

Introduction "
  在 Lean4 中，等号表示的相等关系可用反身性 (reflexivity) 构造。
  使用策略 `rfl` 完成证明
  "

Statement {T : Type} (A : T) : A = A := by
  rfl

Conclusion "在 Lean4 中，`=` 对应类型类 (Type class)，
  `rfl` 实际上调用了构造子 `refl` 完成证明项的构造"

/- Use these commands to add items to the game's inventory. -/
NewTactic rfl
-- NewTheorem Nat.add_comm Nat.add_assoc
NewDefinition Eq
