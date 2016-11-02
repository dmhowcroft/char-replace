char-replace package
====================

The purpose of this package is to replace sequences of characters with other sequences of characters.
In my use case, I want to insert unicode arrows and logical operators when I'm taking notes.
It could also be used for basic spelling correction (e.g. rewriting 'teh' as 'the').

If you're wondering what kinds of symbols you can add, check out: https://en.wikipedia.org/wiki/Arrow_(symbol).

The default key-binding is `CTRL-ALT-'`. 
If it screws something up, just hit `CTRL-Z` to undo the replacement.

The goal here is **NOT** to create yet another markup language.
I'm taking notes in Markdown and for my needs it is useful to be able to use double arrows, IPA symbols, or characters like ∃ (for existential quantification; shorthand for 'there exists...'). You can use this in conjunction with a lightweight markup language like Asciidoc, or even a full markup language like LaTeX. The problem with most markup is that you still need to use fancy notation to produce correct curly quotes.  `char-replace` aims to keep you typing while minimizing the focus on markup, which is the spirit of most markup languages anyway.

Current Replacements (a sampling)
---------------------------------

Input Markup|Character Name|Output Unicode Char|Notes
:-------:|:-------:|:-------:|-------
`--`|en dash|`–`| only when \-\- are surrounded by numbers
`---`|em dash|`—`|only when \-\-\- are surrounded by letters
`(C)`| copyright|`©`| 
`(R)`|registered|`®`|
`(TM)`|trademark|`™`|
`...`|ellipsis|`…`| 
`==>` |right double arrow| `⇒`|
