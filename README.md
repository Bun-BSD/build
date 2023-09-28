# build
A set of utils for building bun under OpenBSD which will automatically patch deps as well

# Preparation
You will need `wget` and `qemu` installed

In order to setup vm run
```
make get-iso
make vm-disk
make vm-install
```

Then follow through the installer, also add user<br>

After that, log in as root, download `git` and `bash` <br>
git clone this repository <br>
copy `environment` file into /etc/<br>

Now run `sysupgrade -u` in order to upgrade to OpenBSD-7.3-current<br>
After upgrading log in as root, change shell to `bash` and `source /etc/environment`<br>
Now you can update your system with `pkg_add -u` and install `zig` and `llvm`, in case of LLVM select 16
