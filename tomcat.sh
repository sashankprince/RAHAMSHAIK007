amazon-linux-extras install java-openjdk11 -y
wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.9/bin/apache-tomcat-10.1.9.tar.gz
tar -zxvf apache-tomcat-9.0.90.tar.gz
sed -i '56 a\<role rolename="manager-gui"/>' apache-tomcat-v10.1.9/conf/tomcat-users.xml
sed -i '57 a\<role rolename="manager-script"/>' apache-tomcat-v10.1.9/conf/tomcat-users.xml
sed -i '58 a\<user username="tomcat" password="sashank123" roles="manager-gui, manager-script"/>' apache-tomcat-v10.1.9/conf/tomcat-users.xml
sed -i '59 a\</tomcat-users>' apache-tomcat-v10.1.9/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-v10.1.9/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-v10.1.9/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-v10.1.9/webapps/manager/META-INF/context.xml
sh apache-tomcat-v10.1.9/bin/startup.sh
