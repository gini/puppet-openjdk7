# == Class: openjdk7::jdk
#
# Install OpenJDK7 JDK
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
# Copyright 2012, 2013 smarchive GmbH
#
class openjdk7::jdk(
  $package = 'UNSET',
  $version = 'UNSET',
) {
  $version_real = $version ? {
    'UNSET' => $::openjdk7::params::version,
    default => $version,
  }

  $package_real = $package ? {
    'UNSET' => $::openjdk7::params::jdk_package,
    default => $package,
  }

  package { $package_real:
    ensure  => $version_real,
  }
}
