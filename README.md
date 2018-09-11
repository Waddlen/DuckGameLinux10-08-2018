# DuckGameLinux10-08-2018
Update of the DuckGame-Linux repository that uses more recent packages

Using DuckGame-Linux on recent OS such as Fedora 26+ and Ubuntu 18.04+ results in the error:

dbus[31411]: arguments to dbus_type_is_basic() were incorrect, assertion "dbus_type_is_valid (typecode) || typecode == DBUS_TYPE_INVALID" failed in file ../../dbus/dbus-signature.c line 323.
This is normally a bug in some application using the D-Bus library.

Using the more recent packages in this repo should resolve the above issue.
