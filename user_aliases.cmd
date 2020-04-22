;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
dirs=find . -maxdepth 1 -type d | sed -e 's/^\.\///'
reload=C:\cmder\vendor\init.bat
winpaths=path | tr ; '\n'
dd=if "$1" equ "" (printf "----\ndd - A simple, recursive, filtered directory find tool\n----\nusage:\nThe first argument is the starting directory to search, all directories \nin that tree will be displayed, excluding the following:\nnode_modules\npublic\n.git\n.cache\n----\nThe second argument is the text to use to filter the results.\n----\nEXAMPLE: Search the current directory recursively and show all the \ndirectories containing the string 'storage':\ndd . storage") else find "$1" -type d \( -name "node_modules" -o -name "site-packages" -o -name "public" -o -name ".git" -o -name ".cache" \) -prune -o -type d -print | sed -e '1d' | grep "$2" | sort -u
ff=if "$1" equ "" (printf "----\nff - A simple, recursive, filtered file find tool\n----\nusage:\nThe first argument is the starting directory to search, all files \nin that tree will be displayed, the following directories will be \nexcluded from the search:\nnode_modules\npublic\n.git\n.cache\n----\nThe second argument is required and is the text to use to match results. Globs are accepted.\n----\nEXAMPLE #1: Search the current directory recursively and show all the file names containing \nthe string 'index':\nff . *index*\nEXAMPLE #2: Search one directory above the current dirrectory recursively and show all \njavascript files:\nff ../ *.js") else find "$1" -type d \( -name "node_modules" -o -name "site-packages" -o -name "public" -o -name ".git" -o -name ".cache" \) -prune -o -type f -name "$2" -print
showlangs=powershell "%CMDER_ROOT%\config\scripts\showlangs.ps1"
ps=powershell -NoExit -Command "function prompt {$ps = """"Powershell UTF8 v$((Get-Host).Version.Major).$((Get-Host).Version.Minor) $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1))""""; Write-Host $ps -NoNewline -ForegroundColor Cyan; return """" """"}; $OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8;"
ps8nocolorprompt=powershell -NoExit -Command "function prompt {""""Powershell UTF8 v$((Get-Host).Version.Major).$((Get-Host).Version.Minor) $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) """"}; $OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8;"
