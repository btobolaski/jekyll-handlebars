# jekyll-handlebars

## Basic Setup

### Requirements

- `node` is required for running handlebars
    - If you are on a Mac and have brew installed, installing this is as easy as `brew install node`
- `handlebars` compiles the templates
    - Since you already have node installed you just need to run `npm -g install handlebars`

### Installation

Install the gem

    [sudo] gem install jekyll-handlebars

Then in a plugin file  within your Jekyll project's `_plugins` directory:

    #_plugins/handlebars.rb
    require 'rubygems'
    require 'jekyll-handlebars'

or if you are using bundler just add:

    gem 'jekyll-handlebars'

to your Gemfile. Create a plugin file that looks like this in you `_plugins` directory:

    #_plugins/handlebars.rb
    require 'rubygems'
    require 'bundler/setup'
    require 'jekyll-handlebars'

## Usage

Make a directory for handlebars templates `_assets/templates`. All of your templates should end
with `.template`. You'll also have to manually include [the handlebars runtime][1]
([direct link][2]) in your layouts. After the runtime, include the liquid tag for your template. If
your template is `example.template` the liquid tag will be `{% template example %}`.

## Improvements

1. Include Handlebars to not force people to manually manage dependencies
2. Add a md5 hash of the contents to the name for cache busting.
3. Find a way to drop the dependency on node.js, to make it easier to setup

[1]:http://handlebarsjs.com
[2]:https://raw.github.com/wycats/handlebars.js/1.0.0/dist/handlebars.runtime.js
