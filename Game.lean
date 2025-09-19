import Game.Levels.ImageWorld

-- Here's what we'll put on the title screen
Title "为 2025 SFD 准备的小小 Lean4 Game"
Introduction
"
hi! 各位在场的小伙伴们，欢迎来到 Lean4 的世界。

在这里，你将见证 **数学证明** 与 **程序代码** 的奇妙相遇
"

Info "
这是一个 lean4 game 项目.
https://github.com/EricTianC/lean4-sfd2025
"

/-! Information to be displayed on the servers landing page. -/
Languages "zh"
CaptionShort "2025 SFD USTC"
CaptionLong "在 2025 ustc SFD 上的演讲"
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
