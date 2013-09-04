# == Class: openjdk7::doc
#
# Install OpenJDK7 documentation
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
class openjdk7::doc(
  $package = 'UNSET',
  $version = 'UNSET',
) {

  if ($package == "UNSET" or $version == 'UNSET') { include openjdk7::params }

  $version_real = $version ? {
    'UNSET' => $::openjdk7::params::version,
    default => $version,
  }

  $package_real = $package ? {
    'UNSET' => $::openjdk7::params::doc_package,
    default => $package,
  }

  package { $package_real:
    ensure  => $version_real,
  }
}
