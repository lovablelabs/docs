Import project
==============

!!! info
    This is an experimental feature.

Our interface does not currently directly support importing a project from GitHub, but you can still do it by pushing a project to a repo created by `gptengineer.app`, by following these steps:

1. Create a new project with `gptengineer.app`.
    - To get a descriptive project ID, we suggest using a simple prompt describing the project you want to import.
2. Move the project to your GitHub user or organization.
3. Clone the project to your local machine.
4. Copy the `gpt-engineer.toml` configuration file from the project created in step 1 to the repo you want to import.
5. In the git repo you want to import, add a remote gpt-engineer with the URL of the project you created in step 1: `git remote add gpt-engineer $URL`.
6. Force push the project you want to import to the gpt-engineer remote: `git push gpt-engineer main --force`.
    - Note: This will overwrite the project created in step 1.
7. You should now see the project in `gptengineer.app`.
8. To pull changes, you can use the `git pull gpt-engineer main` command.

!!! note
    This is only one suggested workflow in the meantime while we work on making this a first-class feature. You might find that another approach than using a `gpt-engineer` remote works better for you.

For some projects, you might need to manually adjust the configuration file to make it work with `gptengineer.app`. Such as setting `base`, `src`, and `dist` paths, or specifying the build command.

## Requirements

We try to support as many projects as possible, but there are some requirements for it to work with gptengineer.app. Here are some of them:

 - The project must be built with npm.
 - The project must be built to a static set of files.
    - This means that the project must not require a server to run (unlike Next.js App Router, in [many cases](https://github.com/vercel/next.js/issues/54393)).
 - Probably more things we haven't learned yet. Let us know!
