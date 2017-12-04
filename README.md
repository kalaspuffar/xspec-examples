# XSPEC example

This simple example project shows of some simple things you can test with xspec.

First off we need to setup the environment. 

Download [Saxon-xslt home edition](http://saxon.sourceforge.net/#F9.8HE).

Clone the xspec github repository
```
git clone https://github.com/xspec/xspec
```

Then we setup some environment variables. Mainly where our Saxon jar file for the main
binary is located and the path to our xspec binary directory.
```
set SAXON_CP=c:\tools\saxon\saxon9he.jar
set PATH=%PATH%;c:\github\xspec\bin
```

Running any of the *.xspec files in this directory will show off how to use xspec.

```
xspec working.xspec
```
