Vagrant Jenkins with Maven
========

Provides a clean jenkins host for learning against Pluralsight's "Getting started with Jenkins2" course.

Version Contents
========
apache-maven-3.3.9 maven  
jre-1.8.0-openjdk.x86_64  
Java 8  

Comments
========
*The manual workspace is located in the `/vagrant/jenkins2` directory. Run the `mvn complile`, `mvn package`, etc. from that directory structure.  
Jenkins will use the `/var/lib/jenkins/workspace/atmosphere` workspace.*   

Use port 8280  
`http://localhost:8280`  
or change the port number to use in the Vagrantfile.  

Maven installed from the .gz file did not work. I think the path was correct. However, instead of hours of worthless troubleshooting, I installed it from the repo. 

CLONE Command
========
Just to keep it simple, here are the paths and commands to cut-and-paste in various locations for the spring-boot project into the Jenkins workspace.  
`spring-boot-samples/spring-boot-sample-atmosphere/pom.xml`  
`/var/lib/jenkins/workspace/atmosphere`  
`git clone https://github.com/g0t4/jenkins2-course-spring-boot.git`  


