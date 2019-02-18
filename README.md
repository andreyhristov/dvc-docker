DVC Container
======

How to bootstrap
---
To initialize your dvc repo from zero please read [https://dvc.org/doc/get-started/initialize]. If someone has already bootstrapped the repo, skip this step and just use DVC with the alias after cloning the underlying git repository.


Useful commands
----
This will create an alias for 'dvc'
```
alias dvc='docker run --rm -v `pwd`/:/work -w /work -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION andreyhristov/dvc dvc'
```

Add a file
```
andrey@xyz:/work/dvc/classify$ cp ~/d_input.txt .
andrey@xyz:/work/dvc/classify$ dvc add d_input.txt 
Adding 'd_input.txt' to '.gitignore'.
Saving 'd_input.txt' to cache '.dvc/cache'.
Saving information to 'd_input.txt.dvc'.

To track the changes with git run:

        git add .gitignore d_input.txt.dvc
andrey@xyz:/work/dvc/classify$ git add .gitignore d_input.txt.dvc
```


After that you have to push but you need to have AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_DEFAULT_REGION set as env variables:
```
andrey@xyz:/work/dvc/classify$ dvc push
Preparing to upload data to 's3://dvc-test-data'
Preparing to collect status from s3://dvc-test-data
[##############################] 100% Collecting information
[##############################] 100% Analysing status.
[##############################] 100% d_input.txt
```
