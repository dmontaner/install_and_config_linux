

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
