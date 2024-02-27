# example-dynamic-matrix

This repo is an example to create a matrix to concurrently build the folders that have changes.

The workflow will concurrently build all changed files from the last push, regardless of how many commits there are.

You can use the script `./activate_jobs.sh` to create changes to a random number of folders. Each change will be made as a separate commit. The job will build all of those changes, regardless of the number of commits.

If you PR these changes into another branch (prod in my example case) then it will build all changes since the last time a PR (or push) was made to that branch.
