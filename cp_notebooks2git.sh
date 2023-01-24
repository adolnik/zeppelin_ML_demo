docker cp zeppelin:/opt/zeppelin/notebook notebook_tmp
chmod 777 -R ./notebook_tmp/.git/
rm -R ./notebook_tmp/.git/
rsync -vru --exclude='.git/' --exclude='./notebook/.git/' ./notebook_tmp/ ./notebook/
git add ./notebook/*
rm -R notebook_tmp
