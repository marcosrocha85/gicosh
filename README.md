# gicosh - GIT Command Shortcuts for Windows and Lazy Developers
As the name says, these are a couple of shortcuts that you can use on Windows to acess GIT capabilities in an easier way.
Each batch file invokes one of many GIT commands has on. You can pass parameters through shortcuts if the GIT command under it allows to.
It's useful when developers, like me, like to use pure git commands instead of some visual tool.

The shortcuts and commands under each one are:

|Shortcut|GIT Command|
|--------|-----------|
|ga.bat|git add|
|gb.bat|git branch|
|gc.bat|git commit|
|go.bat|git checkout|
|gp.bat|git pull|
|gpsh.bat|git push|
|gr.bat|git reset HEAD|
|grh.bat|git reset HEAD --hard|
|grm.bat|git rm|
|gs.bat|git status|
|gsi.bat|git submodule init|
|gsu.bat|git submodule update --remote --rebase|

## Installation
Simply drop the batch files on any directory on your windows path. At my computer I put them on C:\Windows, but you can feel free to put at any place.
Example:
  - Download and extract (or copy) the files on C:\gicosh
  - Go to "System Properties" (usually pressing "CTRL+Pause Break")
  - Click on "Environment Variables"
  - Find and Edit the variable "Path"
  - Add at the end of text box the following: ;C:\gicosh

* Note: the ; (dot-comma) BEFORE directory. It is necessary to separate our new directory to the path.
* Second note: If you have any opened Windows Prompt during 'installation', you'll have to close them and open a new one to reload system variables.