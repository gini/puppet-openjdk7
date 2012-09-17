# == Class: openjdk7
#
# Install OpenJDK7
#
# Supported operating systems are:
#   - Fedora Linux
#   - Ubuntu Linux
#
# === Authors
#
# Jochen Schalanda <j.schalanda@smarchive.de>
#
# === Copyright
#
# Copyright 2012 smarchive GmbH
#
class openjdk7(
  $jre_package = 'UNSET',
  $jdk_package = 'UNSET',
  $doc_package = 'UNSET',
  $version     = 'UNSET',
) {

  include openjdk7::params

  class { 'openjdk7::jre':
    version => $version,
    package => $jre_package,
  }

  class { 'openjdk7::jdk':
    version => $version,
    package => $jdk_package,
  }

  class { 'openjdk7::doc':
    version => $version,
    package => $doc_package,
  }
}
