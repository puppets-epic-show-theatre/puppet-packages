# @summary Handles bulk package management via hiera.
#
# @param install
#   Array of packages to install.
# @param latest
#   Array of packages to upgrade to the latest version.
# @param remove
#   Array of packages to remove.
# @param purge
#   Array of packages to purge.
# @param versioned
#   Hash of packages and their versions.
#
class packages (
  Optional[Array[String]] $install = undef,
  Optional[Array[String]] $latest = undef,
  Optional[Array[String]] $remove = undef,
  Optional[Array[String]] $purge = undef,
  Optional[Hash] $versioned = undef,
) {}
