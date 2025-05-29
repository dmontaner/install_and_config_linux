# Install

https://mise.jdx.dev/getting-started.html

    curl https://mise.run | sh

# useful commands for python

https://mise.jdx.dev/lang/python.html

```
mise install python@3.12

mise exec python@3.12 -- python
> import sys
> sys.executable

```
## Poetry

    mise install poetry
    mise install poetry@2.1.2

## activeate

For mise to automatically switch Python versions when you cd into your project directory (containing a `mise.toml` file),
you need to activate mise in your shell. Add the following line to your shell configuration file:

For Bash (~/.bashrc):

    eval "$(mise activate bash)"

## find installed versions

    mise ls --installed
