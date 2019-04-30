params=$@
for site in $params
do
    wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains website.org --no-parent https://www.bnhlegal.com/$site
done
