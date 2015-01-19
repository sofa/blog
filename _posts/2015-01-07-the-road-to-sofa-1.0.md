---
layout: post
title:  "The road to sofa 1.0"
date:   2016-01-19
summary: 
categories:
  - announcements
---

As we are all slowly recovering from Christmas and New Years Eve we thought it might be a good start to 2015 to let you know what we've been working on recently and what our plans are for the new year.

As some of you may have noticed we are quite busy working towards a sofa 1.0 release. We have nailed down a concrete list of tasks and are hard at work to solve them. I'd like to shed some light on each of them and hope to get you excited for 1.0.

### RIP sofa-base

When we started with the sofa project, we had all the sofa code in one repository. We always knew we wanted sofa to be modular but having all the code together was just easier to begin with and enabled us to experiment and iterate faster. As soon as we felt confident about a component we were able to package it up and release it as a standalone module. This includes that the component got it's own repository within the sofa organization on github with it's own issue management, npm and bower packages, documentation and tests.

Over the months we have sliced lots of packages but we also had to clarify lots of open questions and we have still plenty of components waiting to get released as standalone components. We are currently hard at working slicing all the remaining components.

As the [sofa-base repository](https://github.com/couchcommerce/sofa-base) has never been part of the sofa organization on github and no npm packages exist, it's been a constant source of confusion for the sofa community. 

<div style="text-align:center">
    <img src="{{site.baseurl}}/images/the-road-to-sofa-1-0/sofa-base-confusion.png" style="max-width: 90%; max-height: 400px; float:none">
</div>

We are very much looking forward to shut down the repository as soon as all components are sliced and released as standalones.

### RIP cc-something

You may have noticed some inconsistency in our code base regarding naming and namespaces. Sofa wasn't born as sofa. It was born as "CouchCommerce WebApp SDK" and renamed to sofa later along the way. Hence we still had plenty of namespaces and prefixes to correct. Everything that previously was `cc-something` is now `sofa-something`.

More importantly we created [Coding Guidelines](https://github.com/sofa/guidelines/blob/master/coding-guideline.md) to ensure the sofa 1.0 codebase will be consistent across all components.

We also plan to create simple and clear [Contribution Guidelines](https://github.com/sofa/guidelines/blob/master/contribution-guideline.md) to lower the barrier for community members to contribute code to the sofa project.

### New Checkout

Over the last months we have become more and more frustrated with our current Checkout. Integrating new payment service providers and different payment methods yielded way more repetitive work than anticipated.

We sat down with the entire team to overhaul the whole workflow. We are creating a new Checkout API from the ground up. On top of that we are rewriting the [sofa-checkout-service](https://github.com/sofa/sofa-checkout-service) to be much more flexible and specifically to make it easier to integrate third party services.

We are also rewriting the whole Checkout UI to be more beautiful, simpler to use and easier to customize.

<div style="text-align:center">
    <img src="{{site.baseurl}}/images/the-road-to-sofa-1-0/checkout.png" style="max-width: 90%; max-height: 400px; float:none">
</div>

### Looking Ahead

Apart from sofa 1.0 we have lots of improvements piling up for 2015. One of the most exciting improvements is our migration of the Catalog API to an ElasticSearch backend. Once the migration is done, we will overhaul our [sofa-couch-service](https://github.com/sofa/sofa-couch-service) and rename it to sofa-catalog-service.

We are also planning to rip out more UI stuff from the [app](https://github.com/sofa/app) in order to create a whole new set of sofa packages. But let's do it one step at a time and focus on sofa 1.0 for now...

