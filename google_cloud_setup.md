# Install the gcloud CLI | Google Cloud

Install as in:
https://cloud.google.com/sdk/docs/install

then for configuration:

    gcloud init

config is created in folder `~/.config/gcloud`

But I need a json file for the python client  
see https://towardsdatascience.com/google-application-credentials-python-ace518208a7

    gcloud auth application-default login

this generates the file: `~/.config/gcloud/application_default_credentials.json`

Change default project https://gcloud.readthedocs.io/en/latest/google-cloud-config.html

    gcloud config set project my-new-default-project

