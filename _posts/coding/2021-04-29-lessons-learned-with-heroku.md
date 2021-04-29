---
published: false
---
What is one-off dyno?
One-off dynos are created using heroku run.

Dyno crash restart policy
A dyno “crash” represents any event originating with the process running in the dyno that causes the dyno to stop. That includes the process exiting with an exit code of 0 (or any other exit code).

dyno formation will keep restart dyno, even if normal exit 

This policy only effects dyno formation, including web and worker dynos. One-off dynos, on the other hand, are only expected to run a short-lived command and then exit, not affecting your dyno formation.

**This is why worker dyno keeps restarted, even it exit code is 0, still considered crashed, due to this policy.**


One-off dynos never automatically restart, whether the process ends on its own or whether you manually disconnect.



If you are using Heroku Scheduler and Container Registry as your deployment method, your task must be accessible from the web image. There is no way to specify a non-web image for task execution.

This is why my worker image can not be accessed through `heroku run` and Heroku Scheduler.

Web worker needs to bind to $PORT.


Conclusion:
Heroku has an opinionated process model.
Heroku's free dyno 500M can not handle heavy work load, such as converting an ebook.




https://devcenter.heroku.com/articles/scheduler#known-issues-and-alternatives

