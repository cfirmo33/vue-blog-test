#! /bin/bash
jsfilename="list.js"
vuefilename="list.vue"
filepath="../posts/*"
# clean
echo "" > $jsfilename
echo "" > $vuefilename
# import
echo import Vue from \'vue\' >> $jsfilename
for file in $filepath
do
    a=${file:9}
    a=${a/.vue/}
    echo import ${a} from \'../posts/${a}.vue\' >> $jsfilename
    echo "Vue.component('"${a}\'", ${a})" >> $jsfilename
done

# export
# result=""
# for file in $filepath
# do
#     a=${file:9}
#     a=${a/.vue/}
#     result=${result}${a}", "
# done
# all=${result}
# all=${all%?}
# all=${all%?}
# echo export default "["$all"]" >> $jsfilename

#list.vue
echo "<template>" >> $vuefilename
echo "<ul>" >> $vuefilename
for file in $filepath
do
    a=${file:9}
    a=${a/.vue/}
    echo "<li><"${a}"></"${a}"></li>" >> $vuefilename
done
echo "</ul>" >> $vuefilename
echo "</template>" >> $vuefilename
