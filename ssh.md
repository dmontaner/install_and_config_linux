
SSH config is available in the `~.ssh/` directory `~.ssh/config` file

Generate ssh key for github
-----------------------------------------------------------------------

<https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/>
    
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    
With specific file name:

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f ~/.ssh/file_name

Copy key to a server

    ssh-copy-id -i ~/.ssh/mykey user@host

See how to add the key to github:  
<https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>

See also on how to create keys
https://debian-administration.org/article/530/SSH_with_authentication_key_instead_of_password

Set bitbucket
https://confluence.atlassian.com/bitbucket/add-an-ssh-key-to-an-account-302811853.html

Let in
-----------------------------------------------------------------------

    sudo apt-get install openssh-server openssh-client

IP aliases
-----------------------------------------------------------------------

In `/etc/hosts`: 

```
192.168.0.3 name1
192.168.0.4 name2
192.168.0.5 name3
```

Generate public key from private
-----------------------------------------------------------------------

    ssh-keygen -y -f id_key > id_key.pub
