# == Class: openjdk7::jre
#
# Install OpenJDK7 JRE
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
class openjdk7::jre(
  $package = 'UNSET',
  $version = 'UNSET',
) {
  $version_real = $version ? {
    'UNSET' => $::openjdk7::params::version,
    default => $version,
  }

  $package_real = $package ? {
    'UNSET' => $::openjdk7::params::jre_package,
    default => $package,
  }

  package { $package_real:
    ensure  => $version_real,
  }
}
