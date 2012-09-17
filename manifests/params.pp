# == Class: openjdk7::params
#
# === Authors
#
# Jochen Schalanda <j.schalanda@smarchive.de>
#
# === Copyright
#
# Copyright 2012 smarchive GmbH
#
class openjdk7::params {
  $os_jre_package = $::osfamily ? {
    'Debian' => 'openjdk-7-jre',
    'RedHat' => 'java-1.7.0-openjdk',
    default  => fail("OS family not supported: ${::osfamily}"),
  }

  $os_jdk_package = $::osfamily ? {
    'Debian' => 'openjdk-7-jdk',
    'RedHat' => 'java-1.7.0-openjdk-devel',
    default  => fail("OS family not supported: ${::osfamily}"),
  }

  $os_doc_package = $::osfamily ? {
    'Debian' => 'openjdk-7-doc',
    'RedHat' => 'java-1.7.0-openjdk-javadoc',
    default  => fail("OS family not supported: ${::osfamily}"),
  }

  $jre_package = $::openjdk7_jre_package ? {
    undef   => $os_jre_package,
    default => $::openjdk7_jre_package
  }

  $jdk_package = $::openjdk7_jdk_package ? {
    undef   => $os_jdk_package,
    default => $::openjdk7_jdk_package
  }

  $doc_package = $::openjdk7_doc_package ? {
    undef   => $os_doc_package,
    default => $::openjdk7_doc_package
  }

  $version = $::openjdk7_version ? {
    undef   => 'installed',
    default => $::openjdk7_version
  }
}
