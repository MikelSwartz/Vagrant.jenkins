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
Optional: Place the jenkins2 directory and the spring-boot-samples code in the /vagarant file for the manual run. Run the `mvn complile` and `mvn package` from that directory structure. Jenkins will use the `/var/lib/jenkins/workspace/atmosphere` workspace.   

Use port 8280  
`http://localhost:8280`  
or change the port number to use in the Vagrantfile.  

CLONE Command
========
Just to keep it simple, here is the git command to clone the spring-boot project into the Jenkins workspace.  
`cd /var/lib/jenkins/workspace/atmosphere`  
`git clone https://github.com/g0t4/jenkins2-course-spring-boot.git`  


