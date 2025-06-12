# @summary Handles bulk package management via hiera.
#
# @param install_packages
#   Array of packages to install.
# @param latest_packages
#   Array of packages to upgrade to the latest version.
# @param remove_packages
#   Array of packages to remove.
# @param purge_packages
#   Array of packages to purge.
# @param install_version
#   Hash of packages and their versions.
#
class packages::manage (
  Optional[Array[String]] $install_packages = $packages::install,
  Optional[Array[String]] $latest_packages = $packages::latest,
  Optional[Array[String]] $remove_packages = $packages::remove,
  Optional[Array[String]] $purge_packages = $packages::purge,
  Optional[Hash] $install_version = $packages::versioned
) inherits packages {
  if $install_packages {
    packages::handle { $install_packages:
      ensure => installed,
    }
  }

  if $latest_packages {
    packages::handle { $latest_packages:
      ensure => latest,
    }
  }

  if $remove_packages {
    packages::handle { $remove_packages:
      ensure => absent,
    }
  }

  if $purge_packages {
    packages::handle { $purge_packages:
      ensure => purged,
    }
  }

  $install_defaults = {
    ensure => 'installed',
  }

  if $install_version {
    $install_keys = keys($install_version)
    packages::versioned {
      $install_keys:
        data => $install_version,
    }
  }
}
