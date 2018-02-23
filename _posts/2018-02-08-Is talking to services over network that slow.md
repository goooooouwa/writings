Is talking to services over network that slow?

By slow, we mean longer than one second. 

DB is service over network, Elasticsearch is service over network. By nature, web applications talk with services over network, a lot. 
So why talking to DB is fast (and Elasticsearch is reasonablely fast, too), but talking to, say, Active.com API is slow (10min to login a user)? 
1. Active.com API is slow 
2. We're calling it too many times in one request  
So the take away here is don't call more then twice services over network in one request. 
