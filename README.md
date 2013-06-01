OpenJDK7 Puppet Module
======================

[![Build Status](https://secure.travis-ci.org/smarchive/puppet-openjdk7.png)](http://travis-ci.org/smarchive/puppet-openjdk7)

Overview
--------

Install OpenJDK7 (JRE, JDK, and/or JavaDoc) from the distribution's package repository.

Usage
-----

Example: Install OpenJDK7 JRE, JDK, and JavaDocs:

    class { 'openjdk7': }

Example: Install just OpenJDK7 JRE

    class { 'openjdk7::jre': }

Supported Platforms
-------------------

The module has been tested on the following operating systems. Testing and patches for other platforms are welcome.

* Fedora 17
* Fedora 18

License
-------

Copyright (c) 2012, 2013 smarchive GmbH

This script is licensed under the Apache License, Version 2.0.

See http://www.apache.org/licenses/LICENSE-2.0.html for the full license text.

Support
-------

Please log tickets and issues at our [project site](https://github.com/smarchive/puppet-openjdk7/issues).
