

Install:

    sudo -H pip3 install -U awscli boto3

Usage:

    aws --version


Mounting buckets in my local
--------------------------------------------------------------------------------

See

- <https://linuxbeast.com/tutorials/aws/install-s3fs-and-mount-s3-bucket-on-ubuntu-18-04/>
- <https://github.com/s3fs-fuse/s3fs-fuse>


Install

    sudo apt-get update
    sudo apt install s3fs awscli

Copy credentials in `~/.aws/credentials` to a file `~/.aws/credentials_s3fs` (the name does not mater).  
The file `~/.aws/credentials_s3fs` should have a single line like this one:

    ACCESS_KEY_ID:SECRET_ACCESS_KEY

And permits of the file should be:

    chmod 600 ~/.aws/credentials_s3fs

Now create a mounting point file and go

    mkdir mtest
    sudo s3fs hps-data /home/dmontaner/data/2021/esg_nlp/mtest -o passwd_file=/home/dmontaner/.aws/credentials_s3fs,allow_other,mp_umask=0002

    sudo s3fs hps-data /home/dmontaner/data/2021/esg_nlp/mtest -o passwd_file=/home/dmontaner/.aws/credentials_s3fs -ouid=111,gid=116,allow_other,mp_umask=0002

Ummount:

    sudo umount /home/dmontaner/data/2021/esg_nlp/mtest

https://buildmedia.readthedocs.org/media/pdf/s3fs/latest/s3fs.pdf



Use different sets of credentials
----------------------------------------------------------------------------------

See <https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html>

`~/.aws/credentials` file will be: 

```
[default]
aws_access_key_id=AKIAIOSFODNN7EXAMPLE
aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

[user1]
aws_access_key_id=AKIAI44QH8DHBEXAMPLE
aws_secret_access_key=je7MtGbClwBF/2Zp9Utk/h3yCo8nvbEXAMPLEKEY
```

Then you can do:

    aws --profile user1 s3 ls
    
put an alias in your `.bashrc` file
