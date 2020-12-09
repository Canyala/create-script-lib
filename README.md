# create-script-lib v0.0.1

This is a scaffolding utility for JS/TS lib packages with an internal AS core, an exposed TS api and TS unit tests.  

Follow the instructions in this document and you will be up and running in no time.

Version | Description
---------|----------
 1.0.0 | *Under construction, not ready for use*
 0.0.1 | *Initial development version, do not use*

## Included Files

File | Description  
---------|---------
 `create-script-lib.sh` | *The shell script for the scaffolding tool*
 `LICENSE` | *The MIT license for this tool*  
 `local-publish.sh` | *A utility script for local publish of the tool*
 `README.md` | *This `README.md` file*  
 `TEMPLATE.md` | *A `README.md` template for the scaffolded package*

## Pre-requisites

In order for `create-script-lib` to run, we need to prepare a few things before we can install the tool locally from source.  

### **N**ode **V**ersion **M**anager (NVM)

NVM is a popular tool that allows you to have multiple versions of node installed.
You will be able to select a specific version to use as well as specifying a default version.

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
nvm --version
```

* Install the latest versions of node

```lang-bash
nvm install node
nvm install --lts
```

* You can `ls` list which versions of node are installed locally and which are available remotely like this:

```lang-bash
nvm ls
nvm ls-remote
```

* Use the stable LTS version like this:

```lang-bash
nvm use --lts
```

* If you want to try out the latest version do this:

```lang-bash
nvm use node
```

* Using a specific version and setting it as default version might look like this:

```lang-bash
nvm use 14.15.0
nvm alias default 14.15.0
```

*At the time of writing, node@14.15.0 was the latest LTS available and it has been verified to work with the scaffolding tool.*

### Prepare a local bin folder

The `local-publish.sh` and the `create-script-lib` scripts requires a `~/bin` folder to publish to. If you do not have such a folder you need to create one.

* How to create a bin folder:

```lang-bash
cd ~
mkdir bin
```

### Github user-repo-access-token

Besides creating a local git repo for the package, the package scaffolding tool also creates the remote repo using a git api call that requires an access token in order to validate. A step by step instruction follows below.

* Use a browser and go to your personal git account page
* You need to login in order to continue, do that if needed.
* Click your happy face or your cool symbol in the top right corner.
* An account menu pops up. Click `Settings`
* To the left you find a button `Developer settings`. Click at it.
* The `Developer settings` page opens. Click `Personal access tokens`
* To the right we find a button `Generate new token`, Click it.
* When asked for you password, provide it.
* In the `Note` box enter a name/description e.g `repo-access-token`
* Click the `repo` checkbox
* Scroll down and click the `Generate token` button.
* Copy the generated token value in the green box to the clipboard.
* Read the information in the blue box.

### Environment variables

A couple of variables are needed by the `create-script-lib` and the `local-publish.sh` scripts.

* Open the `~/.bashrc` file using your favorite editor.
* Paste the access token value in the clipboard at the end so you do not lose it. You will move it to it´s proper location further down.
* Add the following to the end of the `~/.bashrc` file.

```lang-bash
export PATH="$PATH:~/bin"
export GH_API_TOKEN="github-user-repo-access-token"
export GH_USER="your-github-user-name"
export NPM_ORG="your-organisation"
```

* Substitute `"github-user-repo-accesstoken"`, `"your-github-user-name"` and `"your-organisation"` with alternatives suitable for you. Move the previously pasted `github-user-repo-access-token` value to it´s proper position.

* Apply the changes immidiately

```lang-bash
account@computer:$ source ~/.bashrc
```

### JSON Query (JQ)

`jq` is a tool that allows you to edit json files from the command line. `create-script-lib.sh' use it to edit congig files.

Test for `jq` like this:

```lang-bash
jq --version
```

Install `jq` if needed like this:

```lang-bash
sudo apt install jq
```
