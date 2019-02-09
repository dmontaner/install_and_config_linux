Dependencies:
================

See:

- <https://jekyllrb.com/docs/installation/>
- <https://jekyllrb.com/docs/installation/ubuntu/>


Install:

    sudo apt-get install ruby2.5 ruby2.5-dev ruby2.5-doc libruby2.5
    sudo apt-get install ruby-full build-essential zlib1g-dev
    sudo gem update --system

    sudo apt-get install nodejs


Pahts
==============

    cd
    echo '# Install Ruby Gems to ~/.gems'      >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/.gems"'       >> ~/.bashrc
    echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc


Install Jekyll
==============

Do not use sudo here:
    
    gem install jekyll bundler


Extras
=============

Many templates will need this modules

     gem install jekyll-paginate
     gem install jekyll-seo-tag
     gem install kramdown rouge
     gem install jekyll-sitemap
     # gem install jekyll-gist
     gem install jekyll-feed
    
----------------------------------------------------------------

See <http://jekyllrb.com/docs/quickstart/> for usage
