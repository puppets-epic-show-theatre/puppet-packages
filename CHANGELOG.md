# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [1.0.2](https://github.com/puppet-enterprise-support-team/puppet-packages/tree/1.0.2) (2020-10-05)

### Added
- Type hints to all parameters
- Added purge feature
- PDK compatibility

## [1.0.0](https://github.com/puppet-enterprise-support-team/puppet-packages/tree/1.0.0) (2020-03-02)

### Changed
- Replaced `hiera_array` and `hiera_hash` by module hiera lookup (puppet 4.10+ required)

### Added
- `init.pp` added to collect `packages::*` variables
- Hiera yaml to define module lookups

