# NavBarEnabler-Magisk
##Magisk by topjohnwu @ xda-developers
##APK-Patcher by osm0sis @ xda-developers

Use APK-Patcher as a Magisk module to patch SystemUI.apk or SystemUIGoogle.apk directly in recovery.
In this case, we are adding back the Navigation Bar Tuner to systemUI Tuner settings in Android 7.0+

##How it works
Magisk module is created.
APK-Patcher patches the apk, then copies the result to the Magisk module. Untouched apk is backed up to /data/media/0/APK-backup.
Magisk module, in this case, will replace the target directory of the apk with its own using REPLACE list in config.sh.
