#lil' reminder of how i did install maven
cd /path/to/
wget http://apache.webxcreen.org/maven/maven-3/3.2.1/binaries/apache-maven-3.2.1-bin.tar.gz
mv apache-maven-3.2.1-bin.tar.gz maven-3.2.1.tag.gz
tar zxvf apache-maven-3.2.1-bin.tar.gz
rm -rf maven-3.2.1.tag.gz

#edit .bashrc in order to set mvn as an alias
alias mvn='/path/to/maven-3.2.1/bin/mvn
#before leave .bashrc set the MAVEN_OPTS environment variable and M2_HOME.
#just in case recheck if JAVA_HOME already exist, if not, also put it also in .bashrc
export MAVEN_OPTS="-Xms512m -Xmx2g -XX:PermSize=256M -XX:MaxPermSize=256m";
export JAVA_HOME="/path/to/java/";
export M2_HOME="/path/to/maven-3.2.1/";

#to start a mvn project 
#X = the name of the company (ex. com.saicorp)
#Y = the name of the project (ex. TestProject)
#Z = a type of maven archetype "http://books.sonatype.com/mvnref-book/reference/archetype-sect-using.html"
mvn archetype:generate -DgroupId=X -DartifactId=Y -DarchetypeArtifactId=Z -DinteractiveMode=false

#to clean a project
mvn clean

#to build a project, it tries to run all the test, if one fails it won't build the project
mvn build

#to clean and build
mvn clean build

#to clean, build and run a project in tomcat. Must be declared the tomcat plugin in the pom.xml
<build>
        <plugins>
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>2.0</version>
            </plugin>
        </plugins>
    </build>
    
#the command in terminal
clean tomcat7:run

#to just compile
mvn compile  

#to compile offline (it won't download dependencies nor updates teh current ones)
mvn -o compile  

#to install the target directory to the respective repository
mvn install  

#to package the target directory as jar or war (specified by the pom file, ex <packaging>war</packaging>)
mvn package

#to generate a new Eclipse project
mvn eclipse:eclipse  

#to only run unit tests
mvn test

#to run unit tests and print the output to console rather than to file
mvn -Dsurefire.useFile=false test  

#to run individual test
mvn test –Dtest=road.to.my.Test  

#to package without running tests
mvn package -Dmaven.test.skip  

#to install without Running Tests
mvn install -Dmaven.test.skip  

#to download source code into your maven repo (only for eclipse's purposes)
mvn eclipse:clean eclipse:eclipse –DdownloadSources=true  

#to create a new project without archetype
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app  

#to create a Web Application
mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes  
            -DarchetypeArtifactId=maven-archetype-webapp -DgroupId=com.mycompany  
            -DartifactId=my-app  

#Start embedded web container
#X=jetty
#X=tomcat
mvn X:run  

#it deploys a WAR to embedded instance of a web container and starts it
mvn X:run-war  

#to specify Java Build version

<build>
<plugins>
  <plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <configuration>
      <source>1.5</source>
      <target>1.5</target>
    </configuration>
  </plugin>
 </plugins>
</build>

#to generate site for a single project (i never used but put it anyway)
mvn site  

#to generate Javadoc
mvn javadoc:javadoc  
