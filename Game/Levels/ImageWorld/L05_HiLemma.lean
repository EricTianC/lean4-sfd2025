import Game.Metadata

World "ImageWorld"
Level 5

Title "使用已有定理"

Introduction "当我们为已证明的定理命名后，就可以像使用已有假设那样在其它证明过程中直接使用

现在，查看右侧的定理 `Nat.add_comm`
"

Statement (x y : Nat) : x + y = y + x := by
  Hint "使用 `exact (Nat.add_comm x y)` 结束命题"
  grind

Conclusion "（可以注意到，全程量词构造的命题实际上表现地像一个函数，实际上，这对应了一种依赖箭头类型）"

/- Use these commands to add items to the game's inventory. -/

/-- ∀ (n m : Nat), n + m = m + n -/
TheoremDoc Nat.add_comm as "add_comm" in "Nat"
NewTheorem Nat.add_comm
-- NewDefinition Nat Add
