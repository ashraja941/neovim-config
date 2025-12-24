; Local Zig textobjects to provide function.inner/body selection for mini.ai
;
; If upstream nvim-treesitter-textobjects does not define @function.inner for Zig,
; these patterns add it by capturing the body block of a function-like node.

; Common function node names used across grammars. Non-matching patterns are ignored.

; function_declaration: whole function (signature + body)
(function_declaration) @function.outer
; function_declaration: just the body block
(function_declaration body: (block) @function.inner)

; Some Zig grammars may name the body field differently. If InspectTree shows a
; different field name (like `block:`), add a matching alternative below, e.g.:
; (function_declaration block: (block) @function.inner)
