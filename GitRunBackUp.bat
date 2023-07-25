y:
cd \
cd MySQLFiles 

REM git init
git add *.sql
git commit -m "SQL%Date:~6,4%%Date:~3,2%%Date:~0,2%%Time:~0,2%%Time:~3,2%%Time:~6,2%"
git branch -M main
REM git pull
git push -u origin main


cd \
cd MyHTMLProjects
git init
git add *.java
git commit -m "My SQL commit"
git branch -M HTMLSand
git pull
git push -u origin HTMLSand

cd \
cd MyGitFiles
git init
git add *.bat
git status 
git commit -m "My SQL commit"
git branch -M Bat
git pull
git push -u origin Bat
msg awk "Git SQL Scripts BkUp may be done"


cd \
cd MyGitFiles

