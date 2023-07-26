cd \
y:
cd y:\OpenServer\domains\Main\ 
git add *.*
git commit -m "front%Date:~6,4%%Date:~3,2%%Date:~0,2%%Time:~0,2%%Time:~3,2%%Time:~6,2%"
REM git status
REM git remote add origin https://github.com/AndrewGMS/account.git
git branch -M front
git push -u origin front

