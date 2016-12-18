# insert_line <file> <if search string> <before|after> <line match string> <inserted line>
insert_line() {
  if [ -z "$(grep "$2" $1)" ]; then
    case $3 in
      before) offset=0;;
      after) offset=1;;
    esac;
    line=$((`grep -n "$4" $1 | head -n1 | cut -d: -f1` + offset));
    sed -i "${line}s;^;${5}\n;" $1;
  fi;
}

# insert line into SystemUI.apk res/xml/tuner_prefs.xml
insert_line res/xml/tuner_prefs.xml "com.android.systemui.tuner.NavBarTuner" before "com.android.systemui.tuner.OtherPrefs" "<Preference android:title=\"@string/nav_bar\" android:key=\"nav_bar\" android:fragment=\"com.android.systemui.tuner.NavBarTuner\" />";