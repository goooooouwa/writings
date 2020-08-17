---
date: 2015-10-30
title: How is ActiveSupportSecureRandom secure
category: rails
---
# How is ActiveSupport::SecureRandom secure?

The security of the random number (and its application) comes from how sufficiently random it is for cryptographic purposes. The quality of the randomness relies to a great extent on the entropy that the system can provide such as through interfaces like `/dev/urandom` on Linux. For it to be secure, an attacker must not be able to guess the next random number, given some sequence of previously generated random numbers.

You could use ActiveRecord::SecureRandom as part of an implementation for creating [UUID](http://en.wikipedia.org/wiki/Universally_Unique_Identifier) (version 4) but they are not directly related
