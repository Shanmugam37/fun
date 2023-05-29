#!/bin/bash
jar=mvn-archetype-quickstart
war=mvn-archetype-webapp
mode0=fales
mode1=true 

echo ENTER THE Darchytype  type j or w
read afid 
j=j
w=w

echo ENTER THE GROUPID 
read gid 
echo 
sleep 3
echo ENTER THE ARTIFACTID 
read aid 

if [$afid == $j ]
then

mvn archetype:generate -DarchetypeartifactId=$jar -DgroupId=$gid -DartifactId=$aid -DinteractiveMode=$mode0

echo WE ARE GOING TO RUN THE JAVA APPLICATION FILE 
echo 
sleep 2

else 
mvn archetype:generate -DarchetypeartifactId=$war -DgroupId=$gid -DartifactId=$aid -DinteractiveMode=$mode0

echo WE ARE GOING TO RUN THE WEB-APPLICATION FILE 
echo 
sleep 2
fi 

echo 
echo PREAPARING FOR CODE BUILD 

cd whatsapp
mvn validate
mvn  clean
mvn compile
mvn test
mvn package
mvn verify
mvn install
sleep 5
echo
echo "MOST OF THE THINGS ALMOST COMPLETED"
echo
sleep 5
echo "TAKE THE SITE REPORT"
echo
sleep 5
echo "FIANLLY COMPLETED"
mvn site
echo
sleep 5
echo  ***********************   BUILD COMPLETED    **************************
cd ..
ls -lt 
