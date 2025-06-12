# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## v1.0.4
- Update pdk to version 3.4.0
- Update manifest documentation
- Switch ci/cd to test against puppet 7 and puppet 8

## v1.0.3

- Extended test suite to puppet 5 and puppet 6
- Updated metadata.json
- Added .sync.yml for `pdk update`

## v1.0.2

### Added
- Type hints to all parameters
- Added purge feature
- PDK compatibility

## v1.0.0

### Changed
- Replaced `hiera_array` and `hiera_hash` by module hiera lookup (puppet 4.10+ required)

### Added
- `init.pp` added to collect `packages::*` variables
- Hiera yaml to define module lookups

