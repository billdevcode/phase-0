## Reflect

#### How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes a developers' life simple, safe and organized. 
It's simple because everything is kept on Github. 
It's safe because if anything breaks, we can roll back to the last working condition. 
It's organized because we can see what changes were made, who made the changes and when were the changes made.

#### What is a commit?
A commit is when you're sure the changes made are good and ready to be push to Github. 

#### What are the best practices for commit messages?
Commit messages should be specific enough that anyone reading it would know what is happening with the commit.

#### What does the HEAD^ argument mean?
`HEAD^` means the last commit.

#### What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. Tracking Changes
    
    Whenever a change is made, Git tracks it. Use `git status` to see the status of files in the local repo.  

2. Make Changes
    
    It is recommended to create a new branch to make the changes instead of using `master` 

3. Pushing Changes
    
    Once changes are made and committed then the final step is to `push` changes to the remote repo


#### Write a handy cheatsheet of the commands you need to commit your changes.
* `git add file-name` 
    
    replace `file-name` with the actual file's name or `git add .` to add all 
* `commit -m "commit message"` 
* `git push origin branch-name` 

    replace `branch-name` with the actual name of the branch

#### What is a pull request and how do you create and merge one?
* The pull request is used to merge codes from a **branch** to the **master**.
* We create a pull request from Github by clicking the green button **New pull request**. 
* Once we go through the pull request process, there'll be an option to click **Merge pull request** then **Confirm merge**

#### Why are pull requests preferred when working with teams?
Using pull requests are preferred so your codes can be reviewed before merging with **master**