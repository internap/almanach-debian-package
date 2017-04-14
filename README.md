Almanach Debian Package
=======================

The goal of this project is to build a Debian package for Almanach.

- [Almanach](https://almanach.readthedocs.io/)
- [Git Repo](https://github.com/openstack/almanach)

Requirements:

- [Docker image of Python 2 Debian](https://github.com/internap/python2debian)

Supported Distribution:

- Ubuntu 14.04 Trusty

Usage
-----

Build package for the API deamon:

```bash
make almanach-api version=4.0.7
```

Build package for the collector:

```bash
make almanach-collector version=4.0.7
```

Debian packages are stored in `/tmp` by default:

```bash
ls /tmp
almanach-api_4.0.7_amd64.deb
almanach-collector_4.0.7_amd64.deb
```

Installation:

```bash
dpkg -i almanach-api_4.0.7_amd64.deb
```
