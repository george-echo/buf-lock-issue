# Buf Lock Issue

Run `gen-git-no-yaml` to use git `proto` source from 1.0.0 tag (which just has proto file and no buf files) and see it not use the lock file of the config specified.

Run `gen-git-yaml` to use git `proto` source from 2.0.0 tag (which has proto file and buf files). Succeeds when manually setting the config file from local directory suggesting it's using the lock from git source.

Run `gen-local` to use local `proto` source to generate go files.
