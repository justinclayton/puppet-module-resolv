[![Build Status](https://travis-ci.org/justinclayton/puppet-module-resolv.png?branch=master)](https://travis-ci.org/justinclayton/puppet-module-resolv)

Description
-------
This module configures your resolv.conf file. It is compliant with both puppet 2.7+ and 3+, and has been tested for quality using [puppet-lint](http://github.com/puppetlabs/puppet-lint) and [rspec-puppet](http://github.com/rodjek/rspec-puppet). It has also been tested using [pinocchio](http://github.com/justinclayton/pinocchio) against centos6.

Installation
------
If you're using librarian-puppet, add a line to your `Puppetfile`:

```
mod 'resolv', :git => 'http://github.com/justinclayton/puppet-module-resolv.git'
```
