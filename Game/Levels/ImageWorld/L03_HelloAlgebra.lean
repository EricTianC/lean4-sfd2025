import Game.Metadata

World "ImageWorld"
Level 3

Title "小学时的代数"

Introduction "我们可以用常规的（更精细化）的思维来解决许多过去因长期训练而显得理所当然的问题

如下是 “常见” 的代数问题

使用策略 `rw [h]` 将目标中的假设等式左边的对象用右边的替换
"

Statement (x y : Nat) (h : x = 2) (g: y = 4) : x + x = y := by
  Hint "从 `{h}` 或 `{g}` 开始都是可行的."
  Branch
    rw [g]
    Hint "现在使用 `{h}`."
    rw [h]
  rw [h]
  Hint "现在使用 `{g}` ."
  rw [g]

Conclusion "`rw` 是处理 Lean4 中的等式关系的常见方式"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw
-- NewTheorem Nat.add_comm Nat.add_assoc
NewDefinition Nat Add
