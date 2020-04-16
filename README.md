# Why Cmder?
Rather than list my opinion of all the pros and cons of [Cmder](https://cmder.net/) and trying to sell you on using it. I will let the software speak for itself if you decide to use it. Simply put, I prefer using the full version of [Cmder](https://cmder.net/) bundled with [git-for-windows](https://gitforwindows.org/) because I find it to be robust, fast, and have *easy* access to the Windows filesystem. Cmder runs nativley, unlike [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Windows Subsystem for Linux) which runs in a sandbox and makes access to the Windows file system convoluted. Allthough WSL is more robust for using *NIX style tools, I find that being confined to a Linux sandbox in the Windows environment for *__all__* my daily development tasks to be slower on the I\O side of things and somewhat defeats the purpose of using Windows 10 in the first place.

After reading this first paragraph one may ask: Why use Unix style tools at all? Personally I just don't prefer the [Powershell](https://en.wikipedia.org/wiki/PowerShell) syntax and learning curve. Perhaps someday if I find myself exclusivley building Windows tools I will invest the time in becoming versed in the ways of Powershell but until then, for my day to day tasks and simple tool building I will stick with Cmder.

# How to Use This Repository
It suggested that you perouse this document however you see fit. You may also download or copy and paste any portion of any of the files in this repository to fit your needs. Much of this document may be crafted for beginner and intermediate developers in the form of linear step lists, however I am sure that expert developers can probably gleam a few gems from this repository.

This repository is meant to be a relatively random compilation, a somewhat organized mishmosh if you will, of scripts, resources, learning materials, personal findings and revelations that may or may not be 'correct' or optimized but could easily help one learn alot and hopefully help ones workflow to solve some daily challenges that one may encounter.

Anyone that may have an opinion on how to do things better (optimize) or to add any resources to this repository please feel free to open pull requests anywhere you like.

# Resources
- \*NIX Tools
  - __General__
    - Advanced Bash-Scripting Guide: [Why Shell Programming?](https://linux.die.net/abs-guide/why-shell.html)
    - Text Sculpting: [A brief introduction to grep, awk & sed](http://blog.cee.moe/a-brief-introduction-to-grep-awk-and-sed.html)
    - [`tldr` pages: Simplified and community-driven man pages](https://tldr.sh/)
  - __`sed`__
    - [Probaly the best `sed` guide out there](https://www.grymoire.com/Unix/Sed.html)
    - Practice `sed` in realtime using a [`sed` REPL (sandbox) online editor](https://sed.js.org/).
    - The more formal [GNU `sed` documentation](https://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html#Regular-Expressions).
  - __`grep`__
    - GNU docs for [`grep` 3.4](https://www.gnu.org/software/grep/manual/grep.html)
    - [How to prevent grep from printing the same string multiple times](https://askubuntu.com/questions/681649/how-to-prevent-grep-from-printing-the-same-string-multiple-times)
  - __`tr`__: A command line utility for translating or deleting characters. Great for newline substitutions since `sed` is not designed for this and the `sed` syntax for translation involving the \n character is convoluted.
    - [`tr` command in unix linux with examples](https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/)
