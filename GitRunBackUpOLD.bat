y:
cd \
cd MySQLFiles 
git add *.sql
git status 
git branch -M main
git pull
git push -u origin main
msg awk "-- 1 --"

cd \
cd MyJavaProjects
git init
git add *.java
git status 
git commit -m "My SQL commit"
git pull
git push -u origin main

msg awk " -- 2 --"

cd \
cd MyGitFiles
git init
git add *.bat
git status 
git commit -m "My SQL commit"
git pull
git push -u origin main
msg awk "Git SQL Scripts BkUp may be done"

msg awk "-- 3 --"
cd \
cd MyGitFiles

