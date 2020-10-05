#
# === Package handler
#
# For bulk operations, make sure the package isn't defined otherwhere
define packages::handle (
  Enum['installed','latest','absent','purged'] $ensure = 'installed',
  Boolean $debug = false
) {
  if ! defined(Package[$name]) {
    package { $name: ensure => $ensure, }
  } else {
    if $debug {
      notify { "${name}-exists":
        message => "${name} is defined elsewhere, this command has caught it and prevented a failure. Please fix.",
      }
    }
  }
}
