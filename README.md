# FileSystem

[![Build Status][gha_badge]][gha_jobs]
[![Test coverage][coveralls_badge]][coveralls]

FileSystem is a Smalltalk API for accessing files and directories. This is an implementation for Squeak/Smalltalk.

The FileSystem API was proposed as an alternative to the FileDirectory API for file system access in Squeak. It was first implemented as a library package for Squeak. Later it was adopted by Pharo as the main file system access library, while Squeak stayed with FileDirectory.

This is a descendant of the last version of FileSystem that was made available for Squeak. It is not entirely compatible with Pharo's implementation. Most notably, most classes were not renamed to drop the package prefix "FS".

The old Monticello repository on which this is based is still available at http://www.squeaksource.com/fs.html.

The current package contains some experiments, such as keeping alternative FileStream classes (which were abandoned in Pharo) composed with Traits.

## Installation instructions

Install the latest [Metacello](//github.com/dalehenrich/metacello-work) first.
Then, use the following snippet to load:

```smalltalk
Metacello new
	baseline: 'FileSystem';
	repository: 'github://squeak-smalltalk/squeak-filesystem:master/src';
	load.
```

[gha_jobs]: https://github.com/squeak-smalltalk/Squeak-FileSystem/actions/workflows/tests.yml
[gha_badge]: https://github.com/squeak-smalltalk/Squeak-FileSystem/actions/workflows/tests.yml/badge.svg
[coveralls_badge]: https://coveralls.io/repos/github/squeak-smalltalk/squeak-filesystem/badge.svg
[coveralls]: https://coveralls.io/github/squeak-smalltalk/squeak-filesystem
