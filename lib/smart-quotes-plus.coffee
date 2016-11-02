# Test case:
#   "'test' test 'test'" and "test" and 'test' 'tis 'twas '90 '90s '90a ... (C) (R) (TM) 1--2 a--b c---d ---
# Yields:
#   “‘test’ test ‘test’” and “test” and ‘test’ ’tis ’twas ’90 ’90s ‘90a … © ® ™ 1–2 a--b c—d ---

module.exports =
    activate: ->
        atom.commands.add 'atom-text-editor', 'smart-quotes-plus:smartreplace', ->
            editor = atom.workspace.getActiveTextEditor()
            smartreplace(editor)

smartreplace = (editor) ->
    if editor.getSelectedText()
        text = editor.getSelectedText()
        editor.insertText(doreplacement(text))
    else
        text = editor.getText()
        editor.setText(doreplacement(text))

doreplacement = (text) ->

    open_double = "``"
    open_single = "`"

    # quotes
    text = text.replace /"(?=\w)/g, ($0) -> open_double
    text = text.replace /'(?=\w)/g, ($0) -> open_single

    # misc chars
    text = text.replace /\.\.\./g, "…"
    text = text.replace /\(C\)/g, "©"
    text = text.replace /\(R\)/g, "®"
    text = text.replace /\(TM\)/g, "™"
    text = text.replace /([\w])---(?=[a-z])/g, ($0, $1) -> $1+"—"
    text = text.replace /([0-9])--(?=[0-9])/g, ($0, $1) -> $1+"–"

    return text
