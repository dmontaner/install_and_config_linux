Dependencies:
================

    sudo apt-get install ruby2.0 ruby2.0-dev ruby2.0-doc libruby2.0 
    sudo apt-get install nodejs
    sudo gem install bundler
    
ruby version __2.0__ is required. You may need to update the default version set in your computer:

    cd /usr/bin
    sudo unlink ruby
    sudo ln -s ruby2.0 ruby
    sudo unlink gem
    sudo ln -s gem2.0 gem
    
See (here)[http://stackoverflow.com/questions/33503796/error-installing-jekyll-requires-ruby-2-0-0]


Install Jekyll
==============

    sudo gem install jekyll 


Extras
=============

Many templates will need this modules

    sudo gem install jekyll-paginate
    sudo gem install jekyll-seo-tag
    sudo gem install kramdown rouge
    sudo gem install jekyll-sitemap
 
    
----------------------------------------------------------------

See <http://jekyllrb.com/docs/quickstart/> for usage
