package = "notion-ui-viewer-kit"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for viewer scenarios with layout fixtures, stable geometry snapshots, and explicit failure cases.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
