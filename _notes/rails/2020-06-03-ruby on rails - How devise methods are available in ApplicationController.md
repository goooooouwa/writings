---
category: rails
---
# ruby on rails - How devise methods are available in ApplicationController.rb

Devise::Controller跟ApplicationController没有继承关系

`ApplicationController` inherits from `ActionController::Base`, which   defines a number of helpful methods. [ref](https://guides.rubyonrails.org/action_controller_overview.html#methods-and-actions)
`Devise::Controller` has a several modules that's hooked up in to `ActionController` on_load. 
For example the `Devise::Controller::Helpers` module defines and loads helpers below: 

```
#   Generated methods:
#     authenticate_user!  # Signs user in or redirect
#     authenticate_admin! # Signs admin in or redirect
#     user_signed_in?     # Checks whether there is a user signed in or not
#     admin_signed_in?    # Checks whether there is an admin signed in or not
#     current_user        # Current signed in user
#     current_admin       # Current signed in admin
#     user_session        # Session data available only to the user scope
#     admin_session       # Session data available only to the admin scope
#
#   Use:
#     before_action :authenticate_user!  # Tell devise to use :user map
#     before_action :authenticate_admin! # Tell devise to use :admin map
```
