Current version: [v0.0.4](../../releases/tag/v0.0.4)

# gicosh - GIT Command Shortcuts for Lazy Developers
#### From Marcos Rocha - [http://marcosrocha.net/](http://marcosrocha.net/)
As the name says, these are a couple of shortcuts that you can use on Windows to acess GIT capabilities in an easier way.
Each batch file invokes one of many GIT commands has on. You can pass parameters through shortcuts if the GIT command under it allows to.
It's useful when developers, like me, like to use pure git commands instead of some visual tool.

The shortcuts and commands under each one are:

|Shortcut|Windows |*nix/Mac|GIT Command|
|--------|--------|--------|-----------|
|ga| [x] | [x] |git add|
|gb| [x] | [x] |git branch|
|gc| [x] | [x] |git commit|
|gcl| [x] | [x] |git clean|
|gd| [x] | [x] |git diff|
|gdtool| [x] | [x] |git difftool|
|gf| [x] | [x] |git fetch|
|ghelp| [x] | [ ] |This help|
|gk| [x] | [ ] |gitk|
|gl| [x] | [x] |git log|
|gm| [x] | [x] |git merge|
|gmtool| [x] | [x] |git mergetool|
|go| [x] | [x] |git checkout|
|gp| [x] | [x] |git pull|
|gpsh | [x] | [x] |git push|
|gr| [x] | [x] |git reset HEAD|
|grb| [x] | [x] |git rebase|
|grh| [x] | [x] |git reset HEAD --hard|
|grm| [x] | [x] |git rm|
|gs| [x] | [x] |git status|
|gsh| [x] | [x] |git stash|
|gsi| [x] | [x] |git submodule init|
|gsu| [x] | [x] |git submodule update --remote --rebase|
|gt| [x] | [x] |git tag|
|gui| [x] | [ ] |git gui|

## Installation
### Through Windows Installer
  - Download de lastest stable version [here](../../releases/tag/v0.0.4)
  - Extract the content of compressed archive to any directory of your computer
  - Open a Windows Command Prompt (press WIN+R, type CMD and press ENTER/RETURN)
  - Under the directory you extracted the files, type: install.bat
  - Choose if you want to install the files under C:\Windows directory or
    press N to type a directory of your preference

### Manually
#### Windows
Simply drop the batch files on any directory on your windows path. At my computer I put them on C:\Windows, but you can feel free to put at any place.
Example:
  - Download and extract (or copy) the files on C:\gicosh
  - Go to "System Properties" (usually pressing "CTRL+Pause Break")
  - Click on "Environment Variables"
  - Find and Edit the variable "Path"
  - Add at the end of text box the following: ;C:\gicosh

* Note: the ; (semicolon) BEFORE directory. It is necessary to separate our new directory to the path.
* Second note: If you have any opened Windows Prompt during 'installation', you'll have to close them and open a new one to reload system variables.

#### *nix systems and Mac
  - Copy the .bash_aliases_gicosh to your home directory. Usually ~/
  - Open your ~/.bashrc or ~/.bash_profile according with your system (Some of them uses different profile)
  - Add the following command:
  ```
  if [ -f ~/.bash_aliases_gicosh ]; then
      . ~/.bash_aliases_gicosh
  fi
  ```
  - After saving, next terminal windows will be able to invoke gicosh shortcuts.
  - If you deserv refresh actual terminal without closing it, just type ```source ~/.bash_profile``` or ```source ~/.bashrc``` according with your distro/osx version.