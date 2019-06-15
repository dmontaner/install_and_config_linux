[<- Index](000_index.md)

Install git
================================================================================

    sudo apt-get install git


For the latest version
----------------------

From http://askubuntu.com/questions/568591/how-do-i-install-the-latest-version-of-git-with-apt/568596

```
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

Configure
--------------------------------------------------------------------------------

To set your

- email
- user
- text editor (used when writing commit messages)

use the commands: 

    git config --global user.email "david.montaner@gmail.com"
    git config --global user.name "dmontaner"
    git config --global core.editor emacs

This will create the file `.gitconfig` which may be edited to change global settings.

To let the shell cache the password:

    git config --global credential.helper 'cache --timeout=3600'


Save passwords and tokens
--------------------------------------------------------------------------------

Better use ssh (or the cache above) but if you cannot do it and have to go trough HTTP
[see here](https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git)
...

For __global__ configuration do:

    git config --global credential.helper store

and then _git clone_ or some other command that will require user and password;
those will be stored in a file

    ~/.git-credentials

__in plain text so be careful__.

For __local__ (repository) configuration you can clone as:

    git clone https://<USER>:<MYTOKEN>@github.com/dmontaner/repo.git

This will save the token in the local (repo) file `.git/config` __in plain text so be careful__.  
And also the token will be accessible through bash `history`
and `git config -l` __so be careful__.


<https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage>




Git GUI
================================================================================

    sudo apt-get install gitg


Miscellany
================================================================================

Create Github tokens:  
<https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line>
