# GIT Basics
* Keeps historical record of each save
* GIT on local machine
* GitHub remote

# 1.1 About Version Control
## Local Version Control Systems
* Simple database on local computer that kept all changes to files under revision control
![](https://git-scm.com/book/en/v2/images/local.png)
## Centralized Version Control Systems
* Single Servr that contains all versioned files and clients can checkout files from central place
* Downside single point of failure for centralized server
* Clearcase is an example of this
![](https://git-scm.com/book/en/v2/images/centralized.png)

## Distributed Version Control Systems
* Clients fully mirror repository including full history
* If main server dies, client repositories can be copeied back up to server to restore it
* Every clone is a backup
![](https://git-scm.com/book/en/v2/images/distributed.png)

# 1.3 What is GIT
* With GIT, everytime you commit, git takes a snapshots of all files look like at the moment
* Stream of snapshots
* Git operations are mainly local
* Can perform GIT commands without connection to internet, can save/commit until you have access to web
* Git has integrity, everything is checksummed before stored
    * Git detects changes and file corruption
    * Everything stored by hash value
* Git generally only adds data
* GIT Stages
    * Modified, no commit to database yet
    * Staged, marked modified file to go into next commit snapshot
    * Committed
        * data safely stored in your local database

# Knowledge Check
* GIT is a program that saves and records the history of your files and directories
* Differences between GIT and a text editor is that GIT stores the history of a file while a text editor only saves it's current state, one record
* GIT works at a local level
* GitHub works at remote level
* Git is useful for an individual developer because it saves work and keeps it's history. Don't need internet to save work, and once connected can push it out. Can understand when and why you made changes to file
* Git and GitHub are useful for a team of developers because there are histories as to why a file was changed and by whom. What the change was. It also backs up everything through GIT, every clone is a backup. Can merge changes to a file in its final state
