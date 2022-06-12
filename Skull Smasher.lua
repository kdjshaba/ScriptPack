local charMap = {[")"] = 0, ["-"] = 1, ["#"] = 2, ["="] = 3, ["$"] = 4, ["*"] = 5, ["!"] = 6, ["+"] = 7, ["%"] = 8, ["&"] = 9, ["@"] = 10, ["_"] = 11, ["^"] = 12, ["~"] = 13, ["("] = 14, ["?"] = 15}; setfenv(assert(loadstring((string.gsub(table.concat({
"^!)+~=+!-!~!*!(#)*^!-!&+*!#+=+(#-!(!$+?!(!#=)=@))+^!~=^!)+(#=$%!-!#+-!=!$+*!#+@)$+?!^!~=&$(!=+$+-!(!=!*!(#(!*!++%###%$?!)+)+*!#+#$&!(!##^#^!)+(##$-!=!_!)+-!=!_!&#@)$+?!^!(#($-!~!*!~=##=*_!*+^!^!?*=*~!-!=+%!*!#+##~#~#@!-!#+#+*!$!#!=!!+@)-!=+$!~=)=@))*-!#+$+)#~=)#!!*+(!=!$+&!?!(!%#%+^#&+^#@+^#=!?!^!?!#+^#$+#+^#=!=!^#-!(!^#)+-!#+*!(!$+&#@)^!?!=!-!^!)#)+)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%#+#)*-!#+$++#^#)+-!#+*!(!$+)#?!#+)#+**!-!)+?!(!&#@))+(#!!?!#+~!!$-!=!$+?!#+)#~=)#+#=$*+=+$+?!~!+#@))+(#=*&!@+*!)#~=)#!**!=!$+?!#+==(#(!*!++%#%+^#&+^#@+&#@))+(##$#+&!=!_!=$?!^!?!#+)#~=)##$#+&!=!_!=$?!^!?!#+(#(!*!++%#=!?!^!?!#+&#@))+(#=$-!(!=$?!^!^!&!$!*!)#~=)#=!=!@))+(#$*#+-!(!=+)+-!#+*!(!=!&+)#~=)#$+#+@))+(#-$(!=!%!?!#+*!$!)#~=)#-!(!@))+(#$*?!)+=**+#+!!-!=!*!^#)+(##$?!$+$+?!~!=**+#+!!-!=!*!)#~=)#)=^#)=@)#+*!$+*+#+(!)#)+@)*!(!$!@)!!&!#+)#~=)#!!*+(!=!$+&!?!(!%#(!-=^#(!#=^#(!==^#(!$=^#(!*=^#(!!=^#%!=+^#!!=+^#)+-!#+*!(!$+&#@)^!?!=!-!^!)#!!&!)#~=)#&$(!=+$+-!(!=!*!(#"
,"(!*!++%#+#!$&!#+*!+#^#)+-!#+*!(!$+)#?!#+)#+**!-!)+?!(!&#@)!!&!(#=$?!^!?!#+~==$?!^!?!#+==(#(!*!++%#(!-=^#(!#=^#(!==&#@)!!&!(#%$*!-!$+~=%!=+@)!!&!(#=**!=!?!(!$!-!#+&+=$?!^!?!#+~==$?!^!?!#+==(#(!*!++%#(!$=^#(!*=^#(!!=&#@)!!&!(#=*&!@+*!~=!!=+@)#+*!$+*+#+(!)#!!&!@)*!(!$!@)++)*-!#+$+)#~=)#!!*+(!=!$+&!?!(!%#%+^#&+^#@+^#=!?!^!?!#+^#$+#+^#=!=!^#-!(!^#)+-!#+*!(!$+&#@)^!?!=!-!^!)#++)+)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%#+#+**!$!+!*!)*-!#+$++#^#)+-!#+*!(!$+)#?!#+)#+**!-!)+?!(!&#@)++)+(#!!?!#+~!!$-!=!$+?!#+)#~=)#+#=$*+=+$+?!~!+#@)++)+(#=*&!@+*!)#~=)#!**!=!$+?!#+==(#(!*!++%#%+^#&+^#@+&#@)++)+(##$#+&!=!_!=$?!^!?!#+)#~=)##$#+&!=!_!=$?!^!?!#+(#(!*!++%#=!?!^!?!#+&#@)++)+(#=$-!(!=$?!^!^!&!$!*!)#~=)#=!=!@)++)+(#$*#+-!(!=+)+-!#+*!(!=!&+)#~=)#$+#+@)++)+(#-$(!=!%!?!#+*!$!)#~=)#-!(!@)++)+(#$*?!)+=**+#+!!-!=!*!^#++)+(##$?!$+$+?!~!=**+#+!!-!=!*!)#~=)#)=^#)=@)#+*!$+*+#+(!)#++)+@)*!(!$!@)+**!^!$!)#~=)#!!*+(!=!$+&!?!(!%#)+)=^#)+-=^#%+^#&+^#@+^##+%+^##+&+^##+@+^#)+-!#+&#"
,"@))+)=(#)*?!=+&!$+&!?!(!)#~=)#)+-=(#)*?!=+&!$+&!?!(!@)^!?!=!-!^!)#++)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%#+#~$?!$+?!#++#^#)+-!#+)#?!#+)#)+)=&#@)++(#)*-!#+$+)=)#~=)#)+)=@)++(#)*-!#+$+-=)#~=)#)+-=@)++(#=$-=)#~=)#=$!$#+-!~!*!(#(!*!++%#%+^#&+^#@+&#@#=$!$#+-!~!*!(#-$(!+!^!*!=+%##+%+^##+&+^##+@+&#@)#+*!$+*+#+(!)#++@)*!(!$!@)~$*!=+%!)#~=)#!!*+(!=!$+&!?!(!%#)+-!#+^#(!*+~!^#%+^#&+^#@+&#@)^!?!=!-!^!)#~!=+%!)#~=)#?*@)&!!!)#(!*+~!)#~=~=)#-=)#$+%!*!(!)#~!=+%!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%###=$&+^!&!(!$!*!#+~$*!=+%!##^#)+-!#+&#@)*!^!=+*!&!!!)#(!*+~!)#~=~=)##=)#$+%!*!(!)#~!=+%!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%###=*)+*!=!&!-!^!~$*!=+%!##^#)+-!#+&#)#~!=+%!(#~$*!=+%!$*&+)+*!)#~=)#==@)*!^!=+*!&!!!)#(!*+~!)#~=~=)#==)#$+%!*!(!)#~!=+%!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%####$^!?!=!_!~$*!=+%!##^#)+-!#+&#@)*!^!=+*!&!!!)#$+&+)+*!%#(!*+~!&#)#~=~=)#+#=+$+#+&!(!+!+#)#$+%!*!(!)#~!=+%!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%###=*)+*!=!&!-!^!~$*!=+%!##^#)+-!#+&#)#~!=+%!(#~$*!=+%!&$$!)#~="
,")#(!*+~!@)*!(!$!@)~!=+%!(#=*=!-!^!*!)#~=)#!**!=!$+?!#+==(#(!*!++%#%+^#&+^#@+&#@)#+*!$+*+#+(!)#~!=+%!@)*!(!$!@)!!*+(!=!$+&!?!(!)#?!(!_$*!&+$$?!++(!%#_!*!&+&#@)_!*!&+)#~=)#_!*!&+@=^!?!++*!#+%#&#@)&!!!)#_!*!&+)#~=~=)###*!##)#$+%!*!(!@)~#~#!!?!#+)#-!(!+!^!*!)#~=)#$=*=^#)#&=*=^#)#-=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?#~#-=&#^#)#)#)=&#&)++-!&!$+%#&#*!(!$!@)*!(!$!@)&!!!)#_!*!&+)#~=~=)###-+##)#$+%!*!(!@)!!?!#+)#-!(!+!^!*!)#~=)#$=*=^#)#&=*=^#)#-=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#)=&#^#)#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?##=&#&#&)++-!&!$+%#&#*!(!$!@)!!?!#+)#-!(!+!^!*!)#~=)#&=*=^#)#*=^#)#~##=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!"
,"(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#)=&#^#)#-=&#++-!&!$+%#&#*!(!$!@)!!?!#+)#&!~=-=^##=)=)#$!?!)#++-!&!$+%#&#@))+-!#+$+@+~=)#)*-!#+$+%#-=*=^#-=*=^#-=*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#$+#+*+*!^#$+#+*+*!^#++?!#+_!=+)+-!=!*!&#@))+-!#+$+@+(#=$!$#+-!~!*!~=)#=$!$#+-!~!*!(#(!*!++%#)+^!(#$*?!#+=+?!(#)*?!=+&!$+&!?!(!_#!**!=!$+?!#+==(#(!*!++%#)=^#)=^#-=)=&#&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!(!$!?!~!%#&#~#(#*=^#~!-!$+%!(##+-!(!$!?!~!%#&#~#(#*=^#~!-!$+%!(##+-!(!$!?!~!%#&#~#(#*=&#)#_#)#!**!=!$+?!#+==(#(!*!++%#)=^#~#%=^#)=&#)#_#)#)+^!(#$*?!#+=+?!(#=$!$#+-!~!*!(#^!?!?!_!!**!=!$+?!#+@#%#&!_#*=&#@#==(#*=@)!!*+(!=!$+&!?!(!)#$+?!*+=!%!%#%!&!$+&#)#@)&!!!)#%!&!$+(#)*-!#+*!(!$+@=!!&!(!$!!$&!#+=+$+=$%!&!^!$!%###%$*+~!-!(!?!&!$!##&#)#(+~=)#(!&!^!)#$+%!*!(!)#@)%!&!$+(#)*-!#+*!(!$+(#%$*+~!-!(!?!&!$!(#%$*!-!^!$+%!~=%!&!$+(#)*-!#+*!(!$+(#%$*+~!-!(!?!&!$!(#%$*!-!^!$+%!~#-=)=)#*!(!$!)#*!(!$!@))+-!#+$+@+(#$*?!*+=!%!*!"
,"$!@==!?!(!(!*!=!$+%#$+?!*+=!%!&#@)+!-!~!*!(#$$*!#!#+&!=+@=-$$!$!&$$+*!~!%#)+-!#+$+@+^#-=&#@)*!(!$!@)!!?!#+)#-!(!+!^!*!)#~=)#)=^#)#$=*=^#)#*=)#$!?!)#++-!&!$+%#&#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?##=&#^#)#~!-!$+%!(##+-!$!%#)=&#&#*!(!$!@)*!(!$!@)*!(!$!@)!!*+(!=!$+&!?!(!)#?!(!=$^!&!=!_!*!$!%#~!?!*+=+*!&#@)-!=+$!~=-=)=@)!!?!#+)#-!(!+!^!*!)#~=)#$=*=^#)#&=*=^#)#-=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?##=&#^#)#)=&#++-!&!$+%#&#*!(!$!@)!!?!#+)#-!(!+!^!*!)#~=)#&=*=^#)#*=^#)#~##=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?##=&#^#)#)=&#++-!&!$+%#&#*!(!$!@)!!"
,"?!#+)#-!(!+!^!*!)#~=)#*=^#)#$=*=^#)#-=)=)#$!?!)#!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?#-!(!+!^!*!)#~#)#*=&#^#)#)=&#++-!&!$+%#&#*!(!$!@)!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#$=*=&#^#)#~!-!$+%!(##+-!$!%#-=)=&#^#)#)=&#@)-!=+$!~=)=@)*!(!$!@)$+?!^!(#=**!^!*!=!$+*!$!@==!?!(!(!*!=!$+%#!!*+(!=!$+&!?!(!%#~!?!*+=+*!&#@)~!?!*+=+*!(##$*+$+$+?!(!-=$$?!++(!@==!?!(!(!*!=!$+%#!!*+(!=!$+&!?!(!%#&#)#?!(!=$^!&!=!_!*!$!%#~!?!*+=+*!&#)#*!(!$!&#@)~!?!*+=+*!(#_$*!&+$$?!++(!@==!?!(!(!*!=!$+%#?!(!_$*!&+$$?!++(!&#@)~!?!~=&$(!=+$+-!(!=!*!(#(!*!++%###~$?!$!*!^!##^#)+^!&#@)#!-!=+)#~=)#)*-!#+$+%#-=^#-=^#-=^#+#+#^#-=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)#!-!=+@=#$#+*!-!_!@$?!&!(!$+=+%#&#@))+-!-=~=)#)*-!#+$+%#(#*=^#(#*=^#==^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+"
,"*!^#!!-!^!=+*!^#~!?!&#@)++^!-=~=)#+**!^!$!%#)+-!-=^##!-!=+^#)=^#~#-=(#*=^#)=^#)=^#)=^#)=^#~!?!&#@))+-!#=~=)#)*-!#+$+%#(#!=^#(#-=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!#=~=)#+**!^!$!%#)+-!#=^#)+-!-=^#)=^#(#-=^#~#-=^#)=^#)=^#)=^#~!?!&#@))+-!==~=)#)*-!#+$+%#(#!=^#(#-=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!==~=)#+**!^!$!%#)+-!==^#)+-!-=^#)=^#~#(#-=^#)=^#)=^#)=^#)=^#~!?!&#@))+-!$=~=)#)*-!#+$+%#(#!=^#(#-=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!$=~=)#+**!^!$!%#)+-!$=^#)+-!-=^#)=^#(#-=^#-=^#)=^#)=^#)=^#~!?!&#@))+-!*=~=)#)*-!#+$+%#(#-=^#(#!=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!*=~=)#+**!^!$!%#)+-!*=^#)+-!-=^#(#-=^#)=^#-=^#)=^#)=^#)=^#~!?!&#@))+-!!=~=)#)*-!#+$+%#(#-=^#(#!=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+"
,"*!^#~!?!&#@)++^!!=~=)#+**!^!$!%#)+-!!=^#)+-!-=^#~#(#-=^#)=^#)=^#)=^#)=^#)=^#~!?!&#@))+-!+=~=)#)*-!#+$+%#(#-=^#(#!=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!+=~=)#+**!^!$!%#)+-!+=^#)+-!-=^#(#-=^#)=^#~#-=^#)=^#)=^#)=^#~!?!&#@))+-!%=~=)#)*-!#+$+%#(#!=^#(#-=^#(#!=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!%=~=)#+**!^!$!%#)+-!%=^#)+-!-=^#)=^#)=^#~#(#!=^#-=^#)=^#)=^#~!?!&#@))+-!&=~=)#)*-!#+$+%#(#!=^#(#-=^#(#!=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!&=~=)#+**!^!$!%#)+-!&=^#)+-!-=^#)=^#)=^#(#!=^#~#-=^#)=^#)=^#~!?!&#@))+-!-=)=~=)#)*-!#+$+%#(#+=*=^#(#+=*=^#(#+=*=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=)=~=)#+**!^!$!%#)+-!-=)=^#)+-!-=^#)=^#)=^#-=(#+=*=^#-=^#-=^#-=^#~!?!&#@))+-!-=-=~=)#)*-!#+$+%#(#+=*=^#(#+=*=^#(#+=*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!"
,"-!^!=+*!^#~!?!&#@)++^!-=-=~=)#+**!^!$!%#)+-!-=-=^#)+-!-=^#)=^#)=^#-=(#+=*=^##=^##=^##=^#~!?!&#@))+-!-=#=~=)#++)*-!#+$+%#(#*=^#(#*=^#(#*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=#=~=)#+**!^!$!%#)+-!-=#=^#)+-!-=^#)=^#~#(#*=^#~#-=(#+=*=^#)=^#)=^#)=^#~!?!&#@))+-!-===~=)#++)*-!#+$+%#(#*=^#(#*=^#(#*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-===~=)#+**!^!$!%#)+-!-===^#)+-!-=^#)=^#(#*=^#~#-=(#+=*=^#)=^#)=^#~!-!$+%!(#)+&!?#-=^#~!?!&#@))+-!-=$=~=)#++)*-!#+$+%#(#*=^#(#*=^#(#*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=$=~=)#+**!^!$!%#)+-!-=$=^#)+-!-=^#(#*=^#)=^#~#-=(#+=*=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!?!&#@))+-!-=*=~=)#++)*-!#+$+%#(#*=^#(#*=^#(#*=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=*=~=)#+**!^!$!%#)+-!-=*=^#)+-!-=^#~#(#*=^#)=^#~#-=(#+=*=^#)=^#)=^#~!-!$+%!(#)+&!?#~##=^#~!?!&#@))+-!-=!=~=)#)*-!#+$+%#-=(#-=^#(#-=^#-=(#"
,"-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=~=)#~$*!=+%!%#)+-!-=!=^#-=^#-=^#-=^#-=&#@)++^!-=!=~=)#+**!^!$!%#)+-!-=!=^#)+-!-=^#)=^#)=^#~#-=(#*=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!-=+=~=)#)*-!#+$+%#(#+=*=^#(#+=*=^#)=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=+=~=)#+**!^!$!%#)+-!-=+=^#)+-!-=^#)=^#)=^#~#-=(#!=^#)=^#)=^#)=^#~!?!&#@))+-!-=%=~=)#)*-!#+$+%#)=^#)=^#)=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#-=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)++^!-=%=~=)#+**!^!$!%#)+-!-=%=^#)+-!-=^#)=^#)=^#~##=^#)=^#)=^#)=^#~!?!&#@)!!&!#+=+~=)#!!&!#+%#-=^#-=^#-=^#-=^#-=^#-=^#)=^#)=^#)+-!-=%=&#@)%$-$~$*$#*~=)#)*-!#+$+%#-=^#-=^#-=^#+##**!-!^!^!&+)##!^!-!=!_!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+#=~=)#~$*!=+%!%#%$-$~$*$#*^#==^##=^#==^##=&#@)++^!-=&=~=)#+**!^!$!%#%$-$~$*$#*^#)+-!-=^#)=^#)=^#~#$=^#)=^#)=^#)=^#~!?!&#@))+-!#=)=~=)#)*-!#+$+%#-=^#-=^#-=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!"
,"&!$+*!+#^#(#$=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+==~=)#~$*!=+%!%#)+-!#=)=^#==^##=(#==^#==(#==^##=(#==&#@)++^!#=)=~=)#+**!^!$!%#)+-!#=)=^#%$-$~$*$#*^#)=^#)=^#)=^#)=^#)=^#)=^#~!?!&#@))+-!#=-=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+$=~=)#~$*!=+%!%#)+-!#=-=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=&=&=%=#=*=&=)=+#^#(#==^#(#)=-=^#(#==&#@)++^!#=-=~=)#+**!^!$!%#)+-!#=-=^#%$-$~$*$#*^#)=^#)=^#-=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!#=#=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+*=~=)#~$*!=+%!%#)+-!#=#=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=&=&=%=#=*=&=)=+#^#(#==^#(#)=-=^#(#==&#@)++^!#=#=~=)#+**!^!$!%#)+-!#=#=^#%$-$~$*$#*^#)=^#)=^#~#-=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!#===~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!"
,"+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+!=~=)#~$*!=+%!%#)+-!#===^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=&=&=%=#=*=&=)=+#^#(#*=^#(#)=-=^#(#*=&#@)++^!#===~=)#+**!^!$!%#)+-!#===^#%$-$~$*$#*^#)=^#-=(#*=^#)=^#~!-!$+%!(#)+&!?#-=^#)=^#)=^#~!?!&#@))+-!#=$=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=++=~=)#~$*!=+%!%#)+-!#=$=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=&=&=%=#=*=&=)=+#^#(#*=^#(#)=-=^#(#*=&#@)++^!#=$=~=)#+**!^!$!%#)+-!#=$=^#%$-$~$*$#*^#)=^#~#-=(#*=^#)=^#~!-!$+%!(#)+&!?#-=^#)=^#)=^#~!?!&#@))+-!#=$=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=++=~=)#~$*!=+%!%#)+-!#=$=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=&=&=%=#=*=&=)=+#^#(#*=^#(#)=-=^#(#*=&#@)++^!#=$=~=)#+**!^!$!%#)+-!#=$=^#%$-$~$*$#*^#)=^#~#-=(#*=^#)=^#~!-!$+%!(#)+"
,"&!?#-=^#)=^#)=^#~!?!&#@))+-!#=*=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+%=~=)#~$*!=+%!%#)+-!#=*=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=$=+=+=)=*=%===+#^#==^#==^#(#-=&#@)++^!#=*=~=)#+**!^!$!%#)+-!#=*=^#%$-$~$*$#*^#~#-=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!-!$+%!(#)+&!?##=^#~!-!$+%!(#)+&!?#-=^#~!?!&#@))+-!#=!=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+&=~=)#~$*!=+%!%#)+-!#=!=^#+#%!$+$+)+@=?#?#++++++(##+?!#!^!?!%+(#=!?!~!?#-!=+=+*!$+?#?=&!$!~=$=+=+=)=*=%===+#^#==^#==^#(#-=&#@)++^!#=!=~=)#+**!^!$!%#)+-!#=!=^#%$-$~$*$#*^#-=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!-!$+%!(#)+&!?#~##=^#~!-!$+%!(#)+&!?#-=^#~!?!&#@))+-!#=+=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=)=~=)#~$*!=+%!%#)+-!#=+=^#-=^#==^#-=-=^#==&#@)++^!#=+=~=)#+*"
,"*!^!$!%#)+-!#=+=^#%$-$~$*$#*^#(#*=^#-=^#)=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!#=%=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=-=~=)#~$*!=+%!%#)+-!#=%=^#-=^#==^#-=-=^#==&#@)++^!#=%=~=)#+**!^!$!%#)+-!#=%=^#%$-$~$*$#*^#~#(#*=^#-=^#)=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!#=&=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=#=~=)#~$*!=+%!%#)+-!#=&=^#-=^#==^#-=-=^#==&#@)++^!#=&=~=)#+**!^!$!%#)+-!#=&=^#%$-$~$*$#*^#(#*=^#~#-=^#)=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!==)=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-===~=)#~$*!=+%!%#)+-!==)=^#-=^#==^#-=-=^#==&#@)++^!==)=~=)#+**!^!$!%#)+-!==)=^#%$-$~$*$#*^#~#(#*=^#~#-=^#)=^#~!-!$+%!(#)+&!?##=^#)=^#)=^#~!?!&#@))+-!==-=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#"
,"^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=$=~=)#~$*!=+%!%#)+-!==-=^#-=^#==^#-=-=^#==&#@)++^!==-=~=)#+**!^!$!%#)+-!==-=^#%$-$~$*$#*^#)=^#-=^#(#*=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!?!&#@))+-!==#=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=*=~=)#~$*!=+%!%#)+-!==#=^#-=^#==^#-=-=^#==&#@)++^!==#=~=)#+**!^!$!%#)+-!==#=^#%$-$~$*$#*^#)=^#-=^#~#(#*=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!?!&#@))+-!====~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=!=~=)#~$*!=+%!%#)+-!====^#-=^#==^#-=-=^#==&#@)++^!====~=)#+**!^!$!%#)+-!====^#%$-$~$*$#*^#)=^#~#-=^#~#(#*=^#)=^#)=^#~!-!$+%!(#)+&!?##=^#~!?!&#@))+-!==$=~=)#)*-!#+$+%#)=^#)=^#)=^#+#&$(!=+$+&!$+*+$+&!?!(!-!^!)#++%!&!$+*!+#^#)=^#!!-!^!=+*!^#!!-!^!=+*!^#~!?!&#@)~!*!=+-=+=~=)#~$*!=+%!%#)+-!==$=^#-=^#==^#-=-=^#==&#@)++^!==$=~=)#+**!^!$!%#)+-!==$=^#%$-$~$*$#*^#)=^#~#-=^#(#*=^#)=^#)="
,"^#~!-!$+%!(#)+&!?##=^#~!?!&#@)@)!!*+(!=!$+&!?!(!)#$+?!*+=!%!%#%!&!$+&#)#@)&!!!)#%!&!$+(#)*-!#+*!(!$+@=!!&!(!$!!$&!#+=+$+=$%!&!^!$!%###%$*+~!-!(!?!&!$!##&#)#(+~=)#(!&!^!)#$+%!*!(!)#@)%!&!$+(#)*-!#+*!(!$+(#%$*+~!-!(!?!&!$!(#%$*!-!^!$+%!~=%!&!$+(#)*-!#+*!(!$+(#%$*+~!-!(!?!&!$!(#%$*!-!^!$+%!~#-!=+$!)#*!(!$!)#*!(!$!@)%$-$~$*$#*(#$*?!*+=!%!*!$!@==!?!(!(!*!=!$+%#$+?!*+=!%!&#@)@)!!-!_!*!^!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%###+**!^!$!##^#~!?!&#@)!!-!_!*!^!(#)*-!#+$+)=)#~=)#)+^!(#$*?!#+=+?!@)!!-!_!*!^!(#)*-!#+$+-=)#~=)##!-!=+@)=!?!#+?!*+$+&!(!*!(#++#+-!)+%#!!*+(!=!$+&!?!(!%#&#@)!!?!#+)#-!(!+!^!*!)#~=)#)=^#)#$=*=^#)#*=)#$!?!@))#)#)#)#)#)#)#)#&!!!)#!!-!_!*!^!)#~=~=)#(!&!^!)#$+%!*!(!)##+*!$+*+#+(!)#*!(!$!@)!!-!_!*!^!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#-=(#*=^#)#)=(#*=^#)#)=&#)#@#)#=$!$#+-!~!*!(#-$(!+!^!*!=+%#~!-!$+%!(##+-!$!%#-!(!+!^!*!&#^#)#~!-!$+%!(##+-!$!%#-!(!+!^!*!?##=&#^#)#~!-!$+%!(##+-!$!%#)=&#&#@)++-!&!$+%#&#@)*!(!$!@)*!(!$!&#%#&#@)++*!^!$!&!$+#!"
,"#+?!)#~=)#&$(!=+$+-!(!=!*!(#(!*!++%###+**!^!$!##^#)#~!?!&#@)++*!^!$!&!$+#!#+?!(#=$)=)#~=)#=$!$#+-!~!*!(#(!*!++%#)=^#)#)=(#*=^#)#)=&#@)++*!^!$!&!$+#!#+?!(#)*-!#+$+)=)#~=)#)+^!_*+##*&!+!%!$+)#-$#+~!+#~*@)++*!^!$!&!$+#!#+?!(#)*-!#+$+-=)#~=)##!-!=+@)^!?!?!)+~=!!-!^!=+*!@)=!?!#+?!*+$+&!(!*!(##+*!=+*+~!*!%#=!?!#+?!*+$+&!(!*!(#=!#+*!-!$+*!%#!!*+(!=!$+&!?!(!%#=!&#@)^!?!=!-!^!)#?!#+&!+!=!-=)#~=)#++^!-=&=(#=$-=@)++%!&!^!*!)#++-!&!$+%#&#)#$!?!@)&!!!)#^!?!?!)+)#~=~=)#$+#+*+*!)#$+%!*!(!)##!#+*!-!_!)#*!(!$!@)!!?!#+)#&!~=)=^#%##=@#~!-!$+%!(#)+&!&#~#%#~!-!$+%!(#)+&!?#&=)=&#^#~!-!$+%!(#)+&!?#&=)=)#$!?!)#++-!&!$+%#&#~#~#?!~!+!@)++^!-=&=(#=$-=)#~=)#?!#+&!+!=!-=~#!**!=!$+?!#+==(#(!*!++%#)=^#)=^#%#~!-!$+%!(#=+&!(!%#&!&#@#(#*=&#_#(#$=&#@)*!(!$!)#*!(!$!)#*!(!$!&#&#@)*!(!$!&#@)$+?!^!(#$$*!=+*!^!*!=!$+*!$!@==!?!(!(!*!=!$+%#!!*+(!=!$+&!?!(!%#~!?!*+=+*!&#@)^!?!?!)+~=$+#+*+*!@)~!?!@=#+*!~!?!!+*!%#&#@)*!(!$!&#~#~#(!&!(!*!)#%!?!*+#+=+(#)#@!-!#+#+*!#!=!!+@)@)@)"
}), "(.)(.)", function(lo, hi) return string.char(charMap[lo] + charMap[hi] * 16) end)))), getfenv())()
