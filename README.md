# conventional-commit-helper

A bash script to assist [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

## Setup
Ensure  `PATH=~/bin:$PATH` is in your bash config

OS | file
--- | ---
Linux | `~/.bashrc`
OSX | `~/.bash_profile`

Init to execute (first time only)
```bash
$ chmod +x ./path/to/commit.sh
```

Create an alias in your bash config (optional)
```
alias commit='./path/to/commit.sh'
```

## Execute

```bash
$ commit "this is my commit"
```
