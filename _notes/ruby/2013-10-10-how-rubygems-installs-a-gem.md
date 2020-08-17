---
date: 2013-10-10
title: How RubyGems installs a gem
category: ruby
---
# How RubyGems installs a gem

1. RubyGems installs gems at $GEM_HOME as this directory structure:
```
▸ bin/                                              # all gem executables are under this directory                                                                                                   
▸ build_info/                                                                                                                 
▸ cache/                                         # all downloaded gem files are under this directory                                                                                                    
▸ doc/                                                                                                             
▾ gems/                                          
  ▾ actionmailer-3.2.13/                   # each gem's lib directory and other documents are under it's own gem_dir
    ▸ lib/                                                                                                                                
      CHANGELOG.md
      MIT-LICENSE
      README.rdoc       
  ▸ actionmailer-4.0.0/
  ▸ actionpack-3.2.13/      
  ...                                                                                           
▸ specifications/                              # all gem gemspec files are under this directory  
```

2. RubyGems add $GEM_HOME/bin directory to $PATH environment variable. And it adds all gem_dir's lib directories to $LOAD_PATH of ruby library search path.
```
$ echo $PATH
/Users/greg/.rvm/gems/ruby-2.0.0-p247/bin:/Users/greg/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/greg/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/greg/.rvm/bin:usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
```
```
$ rails console
Loading development environment (Rails 3.2.13)
irb(main):001:0> puts $LOAD_PATH
/Users/greg/Dropbox/Projects/iReachM/lib
/Users/greg/Dropbox/Projects/iReachM/vendor
/Users/greg/Dropbox/Projects/iReachM/app/grape
/Users/greg/Dropbox/Projects/iReachM/app/assets
/Users/greg/Dropbox/Projects/iReachM/app/controllers
/Users/greg/Dropbox/Projects/iReachM/app/helpers
/Users/greg/Dropbox/Projects/iReachM/app/mailers
/Users/greg/Dropbox/Projects/iReachM/app/models
/Users/greg/Dropbox/Projects/iReachM/app/workers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/quiet_assets-1.0.2/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/twitter-bootstrap-rails-2.2.6/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/twitter-bootstrap-rails-2.2.6/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/twitter-bootstrap-rails-2.2.6/app/helpers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/turbolinks-1.1.1/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/devise-2.2.4/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/devise-2.2.4/app/controllers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/devise-2.2.4/app/helpers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/devise-2.2.4/app/mailers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rails_admin-0.4.9/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rails_admin-0.4.9/app/assets
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rails_admin-0.4.9/app/controllers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rails_admin-0.4.9/app/helpers
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/remotipart-1.1.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/remotipart-1.1.0/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/nested_form-0.3.2/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/nested_form-0.3.2/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/jquery-ui-rails-3.0.1/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/jquery-ui-rails-3.0.1/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/jquery-rails-3.0.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/jquery-rails-3.0.0/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/font-awesome-rails-3.2.1.1/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/font-awesome-rails-3.2.1.1/app/assets
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/bootstrap-sass-2.3.2.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/bootstrap-sass-2.3.2.0/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/sidekiq-2.12.4/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/faye-rails-1.0.8/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/faye-rails-1.0.8/vendor
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/kaminari-0.14.1/lib
lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/http_parser.rb-0.5.3/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/unicorn-4.6.2/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/uglifier-2.1.1/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/tropo-webapi-ruby-0.1.11/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/thin-1.5.1/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/therubyracer-0.11.4/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/therubyracer-0.11.4/ext
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/slim-2.0.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/temple-0.6.5/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/sinatra-1.4.3/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rspec-rails-2.13.2/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/ref-1.0.5/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/redis-namespace-1.3.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/redis-3.0.4/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/raindrops-0.11.0/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/sass-rails-3.2.6/lib
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/safe_yaml-0.9.3/lib
…
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/site_ruby/2.0.0
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/site_ruby/2.0.0/x86_64-darwin12.4.0
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/site_ruby
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/vendor_ruby/2.0.0
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/vendor_ruby/2.0.0/x86_64-darwin12.4.0
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/vendor_ruby
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0
/Users/greg/.rvm/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0/x86_64-darwin12.4.0
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/actionpack-3.2.13/lib/action_controller/vendor/html-scanner
/Users/greg/.rvm/gems/ruby-2.0.0-p247/gems/rack-mount-0.8.3/lib/rack/mount/vendor/regin
=> nil
```

Note: rvm installs all the gems under ~/.rvm/gems/ directory, separated by ruby versions and gemsets, by setting $GEM_HOME to different directories﻿.
