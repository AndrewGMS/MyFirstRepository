



cd \
y:
cd y:\MyJavaProjects\ 

REM PUSH

git add *.java
git commit -m "javaSB%Date:~6,4%%Date:~3,2%%Date:~0,2%%Time:~0,2%%Time:~3,2%%Time:~6,2%"
REM git status
git branch -M mainJava
git remote add origin https://github.com/AndrewGMS/MyJavaSandBox.git
git push -u origin mainJava

REM PULL

REM git add *.*
REM git commit -m "front%Date:~6,4%%Date:~3,2%%Date:~0,2%%Time:~0,2%%Time:~3,2%%Time:~6,2%"
REM git status
REM git remote add origin https://github.com/AndrewGMS/myjwt.git
git branch -M mainJava
git pull https://github.com/AndrewGMS/MyJavaSandBox.git










cd y:\MyGitFiles\






msg awk "Git Front JWT JavaSB Scripts BkUp may be done"