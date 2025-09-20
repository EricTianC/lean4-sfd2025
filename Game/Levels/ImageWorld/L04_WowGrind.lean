import Game.Metadata

World "ImageWorld"
Level 4

Title "更强的 tactic"

Introduction "当然，得益于与计算机的结合，在交互式定理证明的过程中，对于那些计算机 “足以胜任的事”，
我们有时无需过度操劳。
"

Statement (x y : Nat) (h : x = 2) (g: y = 4) : x + x = y := by
  Hint "使用 `grind` 直接结束命题"
  grind

-- Conclusion ""

/- Use these commands to add items to the game's inventory. -/

NewTactic grind
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add
