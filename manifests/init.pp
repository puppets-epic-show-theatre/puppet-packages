# == Class: packages
#
# Handles bulk package management via hiera.
#

class packages(
  Optional[Array[String]] $install = undef,
  Optional[Array[String]] $latest = undef,
  Optional[Array[String]] $remove = undef,
  Optional[Array[String]] $purge = undef,
  Optional[Hash] $versioned = undef,
) {

}