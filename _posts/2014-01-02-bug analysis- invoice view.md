---
layout: post
title: 'bug analysis: invoice view'
category: coding
tags: bug_analysis
---

bug: when PT mark an invoice which has been viewed more than once as "paid", it won't be moved to paid invoice section.

process:

I first add breakpoints to observe it's behavior. I then noticed 

techniques:

reason:

The invoice on invoice list is referenced by the invoice in the invoice detail view when invoice detail view is created. When the invoice detail view is cleaned, it will also clean event handlers on it's invoice which is actually a reference to the one on invoice list. So when the view is cleaned up, the event handlers on the invoice on invoice list will be removed. This causes the problem. Because the next time the invoice being clicked, the invoice detail view, on it's creation, will only add event handler for it's own invoice, which even is still a reference to the one on list, will not have the event handler for invoice list originally added by invoice list when it's created.
