# simple_site [![Build Status](https://secure.travis-ci.org/dwradcliffe/simple_site.png?branch=master)](https://travis-ci.org/dwradcliffe/simple_site) [![Dependency Status](https://gemnasium.com/dwradcliffe/simple_site.png)](https://gemnasium.com/dwradcliffe/simple_site) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/dwradcliffe/simple_site)

Helps build simple websites using haml and sass. Compresses your js. Deploys to AWS S3.

## Quick start

Install the gem:

    gem install simple_site

Add simple_site config to your Rakefile

    require 'rubygems'
    require 'bundler/setup'
    require 'simple_site'

    SimpleSite::Tasks.new do |site|
      site.js_files = [
        'jquery-1.6.2.min.js',
        'custom.js'
      ]
      site.buckets = %w(www.myawesomesite.com)
    end

Run some rake tasks!

    rake -T


## Copyright

Copyright (c) 2012 David Radcliffe. See LICENSE.txt for
further details.
