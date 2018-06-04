# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.pslite.Debug:
/Users/qihuazhou/Desktop/ps-lite-xcode/Debug/libpslite.a:
	/bin/rm -f /Users/qihuazhou/Desktop/ps-lite-xcode/Debug/libpslite.a


PostBuild.pslite.Release:
/Users/qihuazhou/Desktop/ps-lite-xcode/Release/libpslite.a:
	/bin/rm -f /Users/qihuazhou/Desktop/ps-lite-xcode/Release/libpslite.a


PostBuild.pslite.MinSizeRel:
/Users/qihuazhou/Desktop/ps-lite-xcode/MinSizeRel/libpslite.a:
	/bin/rm -f /Users/qihuazhou/Desktop/ps-lite-xcode/MinSizeRel/libpslite.a


PostBuild.pslite.RelWithDebInfo:
/Users/qihuazhou/Desktop/ps-lite-xcode/RelWithDebInfo/libpslite.a:
	/bin/rm -f /Users/qihuazhou/Desktop/ps-lite-xcode/RelWithDebInfo/libpslite.a




# For each target create a dummy ruleso the target does not have to exist
