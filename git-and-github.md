# (PART) Git and GitHub

# About Git and GitHub

## Git

### What is Git?

Git is **version control system**, software that tracks changes to groups of files. Git and other version control systems are primarily used by programmers **collaboratively** writing source code while developing software. One of the reasons Git is a popular choice for version control is that it is free and open source.

### Why use Git?

Git is popular within the **data science community** as a way of collaboratively managing the components of data science such as data, source code, figures, reports, and dashboards.

For more on the use of version control in data science, see the wonderful article by Jennifer Bryan *"Excuse me, do you have a moment to talk about version control?"* The article was [published in The American Satistician](https://doi.org/10.1080/00031305.2017.1399928), but an open source version also [appears in PeerJ Preprints](https://dx.doi.org/10.7287%2Fpeerj.preprints.3159v2).

### How Git works

To use git, you must first install it on the computer you are using. Some implementations require you to interact with Git via a command line interface (you type commands), while others have a more sophisticated graphical user interface.

You tell Git to track changes in a given directory (folder), which Git calls a **repository**. As you go about your data science business, you will be add, modify, and remove files from the repository. Every so often, you tell Git to record the changes in the repository. That set of changes is called a commit. The snapshot, or version, of the repository at the time of a commit is where version control systems get their name.

With version control, you can easily tell when a file was modified, by whom, and for what reason. You can also roll back any changes if change your mind or realize you made a mistake.

There are more complex ways to use Git that we will not explore in this course. For example, you can have multiple versions of your repository, called **branches**, exist at the same time. A common usage is to have a development branch where you tinker with things and a production branch that contains your stable, working product. Think of branches like alternate dimensions in a comic book universe which you edit independently and marge back together when you choose.

## GitHub

### What is GitHub?

GitHub is an online hosting service for Git repositories. If you have a Git repository, you can have Git keep a copy of the repository on their servers. GitHub is a for-profit company, but they do offer free accounts and generally support those working in education, academia, and for non-profts.

### Why use GitHub?

While it is possible to use Git by itself on your computer, it is most powerful when paired with GitHub.

A common usage of Git and GitHub is as follows:

1.  You create a repository on GitHub.

2.  You copy ("clone" in Git terminology) the repository to your machine, either your personal computer or one in a computer lab or classroom.

3.  You write your source code or do other data-sciency things in RStudio.

4.  You commit your changes on your local computer.

5.  You copy ("push" in Git terminology) those changes to GitHub.

In this way you can work on your projects from any computer that has Git, R, and RStudio installed on it.

In addition to giving *you* access to Git repositories from anywhere, GitHub allows multiple users to access those repositories. This is a convenient way for multiple people to collaborate on a project. It also allows you to communicate the results of your data science projects to a wider audience by creating reports or dashboards.

### GitHub Classroom

GitHub Classroom is a tool offered by GitHub to educators. An instructor can create a repository and quickly deploy it to the students in a course. This process creates a copy of the repository for each student, which the instructor can access.
