include(root.pri)

TEMPLATE = subdirs
SUBDIRS = depends lib%ProjectName:l% test

lib%ProjectName:l%.file = src/lib%ProjectName%.pro
test.file = test/tst_%ProjectName%.pro
test.depends += depends lib%ProjectName:l%

OTHER_FILES += README


#add your compile tests here. this will compile tests in config.tests
EssentialDepends =
OptionalDepends =

runConfigTests()

PACKAGE_VERSION = %LIB_VERSION%
PACKAGE_NAME= %ProjectName%

include(pack.pri)
#packageSet(%LIB_VERSION%, %ProjectName%)
