proceed() {
  ui_print " "
  ui_print "- Installing fonts systemlessly..."
  cp -rf $MODPATH/ffreak/*otf $MODPATH/system/fonts
  # For Android 10 and above
  cp -f $MODPATH/system/fonts/Bold.otf $MODPATH/system/fonts/NotoSansBengali-Bold.otf
  cp -f $MODPATH/system/fonts/BoldUI.otf $MODPATH/system/fonts/NotoSansBengaliUI-Bold.otf
  cp -f $MODPATH/system/fonts/Medium.otf $MODPATH/system/fonts/NotoSansBengali-Medium.otf
  cp -f $MODPATH/system/fonts/MediumUI.otf $MODPATH/system/fonts/NotoSansBengaliUI-Medium.otf
  cp -f $MODPATH/system/fonts/Regular.otf $MODPATH/system/fonts/NotoSansBengali-Regular.otf
  cp -f $MODPATH/system/fonts/RegularUI.otf $MODPATH/system/fonts/NotoSansBengaliUI-Regular.otf
  # For Android 9 and below
  cp -f $MODPATH/system/fonts/Bold.otf $MODPATH/system/fonts/NotoSansBengali-Bold.ttf
  cp -f $MODPATH/system/fonts/BoldUI.otf $MODPATH/system/fonts/NotoSansBengaliUI-Bold.ttf
  cp -f $MODPATH/system/fonts/Regular.otf $MODPATH/system/fonts/NotoSansBengali-Regular.ttf
  cp -f $MODPATH/system/fonts/RegularUI.otf $MODPATH/system/fonts/NotoSansBengaliUI-Regular.ttf
  # For Noto Serif Bengali
  cp -f $MODPATH/system/fonts/Bold.otf $MODPATH/system/fonts/NotoSerifBengali-Bold.ttf
  cp -f $MODPATH/system/fonts/Regular.otf $MODPATH/system/fonts/NotoSerifBengali-Regular.ttf
  # For Android 5
  cp -f $MODPATH/system/fonts/Regular.otf $MODPATH/system/fonts/DroidSansBengali.ttf
  # For Samsung
  cp -f $MODPATH/system/fonts/Bold.otf $MODPATH/system/fonts/SECBengali-Bold.ttf
  cp -f $MODPATH/system/fonts/BoldUI.otf $MODPATH/system/fonts/SECBengaliUI-Bold.ttf
  cp -f $MODPATH/system/fonts/Regular.otf $MODPATH/system/fonts/SECBengali-Regular.ttf
  cp -f $MODPATH/system/fonts/RegularUI.otf $MODPATH/system/fonts/SECBengaliUI-Regular.ttf
  ui_print " "
}

cancel() {
  ui_print " "
  ui_print "- Cancelling installation..."
  ui_print " "
  exit 1
}

CHOICE=1
ui_print " "
ui_print "  This module may overlap with other font modules."
ui_print "  Please ensure that no other Bengali font module is active."
ui_print " "
ui_print "  Would you like to continue?"
ui_print "  Vol Up   (+) = Yes, continue"
ui_print "  Vol Down (-) = No, cancel"

if $VKSEL; then
  CHOICE=1
else
  CHOICE=2
fi

mkdir -p $MODPATH/system/fonts $MODPATH/system/etc

case $CHOICE in
  1 ) proceed;;
  2 ) cancel;;
esac

# Deleting Temporary Files
ui_print "- A little housekeeping..."
rm -rf $MODPATH/system/fonts/Bold.otf
rm -rf $MODPATH/system/fonts/BoldUI.otf
rm -rf $MODPATH/system/fonts/Medium.otf
rm -rf $MODPATH/system/fonts/MediumUI.otf
rm -rf $MODPATH/system/fonts/Regular.otf
rm -rf $MODPATH/system/fonts/RegularUI.otf
ui_print " "
