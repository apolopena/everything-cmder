# Why Cmder?
Rather than list my opinion of all the pros and cons of [Cmder](https://cmder.net/) and trying to sell you on using it. I will let the software speak for itself if you decide to use it. Simply put, I prefer using the full version of [Cmder](https://cmder.net/) bundled with [git-for-windows](https://gitforwindows.org/) because I find it to be robust, fast, and have *easy* access to the Windows filesystem. Cmder runs nativley, unlike [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Windows Subsystem for Linux) which runs in a sandbox and makes access to the Windows file system convoluted. Allthough WSL is more robust for using *NIX style tools, I find that being confined to a Linux sandbox in the Windows environment for *__all__* my daily development tasks to be slower on the I\O side of things and somewhat defeats the purpose of using Windows 10 in the first place.

# Why not Powershell?
If you are working in the Windows environment then why use Unix style tools at all? Personally I find the [Powershell](https://en.wikipedia.org/wiki/PowerShell) syntax, learning curve and [encoding caveats](https://stackoverflow.com/questions/40098771/changing-powershells-default-output-encoding-to-utf-8) a bit of a hurdle and just not as versatile as \*NIX tools. At times I do find myself working with Powershell in Cmder and I will say that the more I learn the better off I am because of it. I will be sharing what I have learned about Powershell here on this page and you will find some powershell scripts in the repository.
__TLDR;__ Powershell is awesome and can be integrated with Cmder. A well rounded scripter will be fluent in as many tools as possible.

# Getting True Colors (24-bit color)
Not that anyone will ever really need all 16 million colors in their terminal at once, however being able to choose from a wider pallette of colors has its advantages and it is just plain more fun.
Cmder does NOT support true color. The bash shell that comes with Cmder also does NOT support true color. If you try to use powershell with Cmder as its terminal you will NOT get true color. If you want true color in your terminal on Windows or WSL there many ways to do it and there can be many caveats as well. Powershell is a shell and scripting language with true color support so you can use 24-bit color escape sequences and get any color you want but typically not when running powershell in the Cmder standalone console/terminal/terminal emulator. There are bash shells running in WSL for windows such as Ubuntu's bash that you can use but they have a decent amount of weight to them such as installing an entire Linux distro.

Long story short true color support is pretty much dictacted by your console/terminal emulator and shell combination. I have found the following combinations to work easily for true color without dealing with WSL bash.
  - Straight powershell
  - VSCode terminal with powershell
  - VSCode terminal running Cmder with powershell
  - [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701) with powershell
  - [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701) running Cmder with powershell

# How to Use This Repository
It suggested that you perouse this document however you see fit. You may also download or copy and paste any portion of any of the files in this repository to fit your needs. Much of this document may be crafted for beginner and intermediate developers in the form of linear step lists, however I am sure that expert developers can probably gleam a few gems from this repository.

This repository is meant to be a relatively random compilation, a somewhat organized mishmosh if you will, of scripts, resources, learning materials, personal findings and revelations that may or may not be 'correct' or optimized but could easily help one learn alot and hopefully help ones workflow to solve some daily challenges that one may encounter.

Anyone that may have an opinion on how to do things better (optimize) or to add any resources to this repository please feel free to open pull requests anywhere you like.

# Resources
- General
  - [What's the difference between terminal, shell, command line, and bash?](https://www.reddit.com/r/learnprogramming/comments/6xr0l9/whats_the_difference_between_terminal_shell/)
- Cmder
  - Link Windows executables such as `find` to the console commands in Cmder.
    - Add the following to your `\Cmder\config\user_profile.cmd` file: 
      - `set "PATH=%GIT_INSTALL_ROOT%\usr\bin;%PATH%"`. [Reference](https://superuser.com/questions/1219129/unix-find-command-on-cmder-exe-in-windows).
- Bash Scripting
  - [Shell Style Guide](http://google.github.io/styleguide/shellguide.html) Authored, revised and maintained by many Googlers.
  - [Bash Scripting Snippets](https://github.com/bertvv/dotfiles/blob/master/.vim/UltiSnips/sh.snippets#L52)
  - [Bash Cheat Sheet 1](https://bertvv.github.io/cheat-sheets/Bash.html)
- \*NIX Tools
  - __General__
    - Advanced Bash-Scripting Guide: [Why Shell Programming?](https://linux.die.net/abs-guide/why-shell.html)
    - Text Sculpting: [A brief introduction to grep, awk & sed](http://blog.cee.moe/a-brief-introduction-to-grep-awk-and-sed.html)
    - [TLDR pages: Simplified and community-driven man pages](https://tldr.sh/)
      - TLDR pages give multiple usage examples of each \*NIX style command that the console supports.
  - __`sed`__: Stands for **S**tream **E**ditor. `sed` works with streams of characters for searching, filtering and text processing and despite its power, `sed` is considered a 'simpleton' when compared to `awk`. It is recommended to use `sed` for simple regex type operations and one-liners as `sed` syntax is more terse and compact than `awk` syntax. Complex multiline `sed` scripts can look noisy and be harder to read than `awk` programs.
    - __Reference__
      - [Probably the best `sed` guide out there](https://www.grymoire.com/Unix/Sed.html)
      - Practice `sed` in real-time using a [`sed` REPL (sandbox) online editor](https://sed.js.org/).
      - The more formal [GNU `sed` documentation](https://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html#Regular-Expressions).
    - __One-liners__
      - Count the number of newlines
        - In a file: `sed -n '$=' file.txt`
        - From a pipe: `ls | sed '$='`
  - __`awk`__: Is a text pattern scanning and processing language, which was created by **A**ho, **W**einberger & **K**ernighan. `awk` is mostly used for data extraction and reporting, was built around processing .csv files. `awk` is considered more robust than `sed`. `awk` can do everything that `sed` can do and much more since `awk` is essentially a full fledged programming language complete with system calls, and sophisticated constructs such as if/else, while, do/while, etc.
    - __Reference__
      - urls TBD
    - __One-liners__
      - Count the number of newlines
        - In a file: `awk 'END {print NR}' file.txt`
        - From a pipe: `awk | 'END {print NR}'`
    - Practice `awk` in real-time using an [`awk` REPL (sandbox) online editor](https://awk.js.org/)
  - __`grep`__: Stands for **G**lobal **R**egular **E**xpression **P**rint and is used to search for specific terms in a file. Different from `awk` and `sed`, `grep` cannot add/modify/remove the text in a specific file. But it’s useful when you just want to search and filter out matches.
    - __Reference__
      - GNU docs for [`grep` 3.4](https://www.gnu.org/software/grep/manual/grep.html)
      - [How to prevent grep from printing the same string multiple times](https://askubuntu.com/questions/681649/how-to-prevent-grep-from-printing-the-same-string-multiple-times)
    - __One-liners__
      - Count the number of newlines
        - In a file: `grep -c "" file.txt`
        - From a pipe: `ls | grep -c ""`
  - __`tr`__: A command line utility for translating or deleting characters. Great for newline substitutions since `sed` is not designed for this and the `sed` syntax for translation involving the `\n` character is convoluted because it has a harder ro read escape sequence for the newline character. For example, if you wanted to output all the windows paths, each other their own line by replacing all instances of a semicolon with a `\n`, in `sed` it would look like much less readable: `path | sed -e $'s/,/\\\n/g'` than using `tr` to do the same thing: `path | tr ; '\n'`.
    - [`tr` command in \*NIX with examples](https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/)
- Powershell (check the version in Cmder by typing: `powershell $PSVersionTable`)
  - Tricks
    - In Cmder, to run powershell in utf8 mode with a custom colorized prompt showing the powershell version number and current directory, just add the following one-liner (alias) to your `user_aliases.cmd` file:
      - <sub><sup>`ps=powershell -NoExit -Command "function prompt {$ps = """"Powershell UTF8 v$((Get-Host).Version.Major).$((Get-Host).Version.Minor) $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1))""""; Write-Host $ps -NoNewline -ForegroundColor Cyan; return """" """"}; $OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8;"`</sub></sup>
    - Open any control panel item from this [list](https://www.lifewire.com/command-line-commands-for-control-panel-applets-2626060)
      - `control appwiz.cpl` will open the add/remove programs dialog.
  - IDE
    - [Setup VSCode to use Powershell](https://docs.microsoft.com/en-us/powershell/scripting/components/vscode/using-vscode?view=powershell-7)
  - Encoding
    - Start a Powershell childprocess instantly as UTF8 (including pipes)
      - <sub><sup>`Powershell.exe -NoExit -Command "$OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8"`</sup></sub>
    - [A good post on utf 8](https://stackoverflow.com/questions/40098771/changing-powershells-default-output-encoding-to-utf-8)
    - [More on the Powershell default encoding](https://mohitgoyal.co/2017/03/03/understanding-default-encoding-and-change-the-same-in-powershell/)
    - [Adding and removing keyboard languages with powershell](https://4sysops.com/archives/adding-and-removing-keyboard-languages-with-powershell/)
  - Error Handling
    - [Managing non-terminating errors](https://devblogs.microsoft.com/powershell/managing-non-terminating-errors/)
    - [https://stackoverflow.com/questions/1142211/try-catch-does-not-seem-to-have-an-effect](https://stackoverflow.com/questions/1142211/try-catch-does-not-seem-to-have-an-effect)
    - [Handling DISM.exe errors (external programs)](https://stackoverflow.com/questions/42284314/handle-dism-errors-from-powershell-script)
    - [Exiting Powershell scripts](https://stackoverflow.com/questions/2022326/terminating-a-script-in-powershell)
  - __Run a program with elevated permissions from a Powershell script__. This assumes that the user running the script has administrator privileges. __A new cmd terminal window will be opened__. We use cmd /k to keep the new process window open. Pass all the arguments at once in a quoted string after the `/k` . The following example shows the currently installed language packs on the Windows system:
    - `Start-Process -FilePath cmd -ArgumentList '/k DISM.exe /Online /Get-Intl /English' -Verb RunAs`

