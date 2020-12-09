# create-script-lib v0.0.1

This is a scaffolding utility for JS/TS lib packages with an internal AS core, an exposed TS api and TS unit tests.  

Follow the instructions in this document and you will be up and running in no time.

Version | Description
---------|----------
 1.0.0 | *Under construction*
 0.0.1 | *Initial development version, do not use*

## Included Files

File | Description  
---------|---------
 `create-script-lib.sh` | *the shell script for the scaffolding tool*
 `LICENSE` | *the MIT license for this tool*  
 `local-publish.sh` | *a utility script for local publish*
 `README.md` | *this `README.md` file*  

## Pre-requisites

In order for `create-script-lib` to run, we need to prepare a few things before we can install the tool locally from source.  

### **N**ode **V**ersion **M**anager (NVM)

You can read about `nvm` [here](https://github.com/nvm-sh/nvm/blob/master/README.md) if you want to learn more.  

* Test if `nvm` is installed

```lang-bash
account@computer:$ nvm --version
```

If you do get something like this:

```lang-bash
Command 'nvm' not found, did you mean:

  command 'nvm' from deb kore (3.3.1-1)

Try: sudo apt install <deb name>
```

Do **NOT** try the suggested `sudo apt install <deb name>` above; instead, do the following:  

* Install nvm

```lang-bash
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.profile
```

### Prepare a local bin folder

The `local-publish.sh` and the `create-script-lib` scripts requires a `~/bin` folder to publish to. If you do not have such a folder you need to create one.

How to create a bin folder:

```lang-bash
cd ~
mkdir bin
```

### Environment variables

A couple of variables are needed by the `create-script-lib` and the `local-publish.sh` scripts.
Add the following to the end of the `~/.bashrc` file.

```lang-bash
export PATH="$PATH:~/bin"
export GH_API_TOKEN="github-user-repo-accesstoken"
export GH_USER="your-github-user-name"
export NPM_ORG="your-organisation"
```
