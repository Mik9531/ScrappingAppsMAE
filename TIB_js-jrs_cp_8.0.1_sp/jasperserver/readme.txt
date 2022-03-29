================================================================================
Introduction

This is the readme for JasperReports Server web application.

This Service Pack should be applied to JasperReports Server version 8.0.0.

Build version [20220125_1258].
================================================================================
Installation

To apply the Service Pack:
* Stop the application server.
* Find the root web application folder (e.g. c:\apache-tomcat\webapps\jasperserver\).
* Make a backup copy of that folder to a new, separate location.
* Delete the files listed in the section "Deleted files" from the web application files structure.
* Extract files (with full paths) from the Service Pack to the root web application folder.
* Remove the application server's JSP cache.
  For a Tomcat deployment on Windows, for instance, the JSP cache might be in: C:\apache-tomcat\work\Catalina\localhost\jasperserver.
  For a JBoss deployment, it might be in C:\jboss\standalone\tmp\work\jboss.web\default-host\jasperserver.
* Start the application server.
* Clear browser cache.
================================================================================
Uninstallation

To uninstall the Service Pack:
* Stop the application server.
* Find the root web application folder (e.g. c:\apache-tomcat\webapps\jasperserver).
* Delete everything from that folder (e.g. c:\apache-tomcat\webapps\jasperserver\*.*)
* Find the backup of "jasperserver", that you created before installing this Service Pack, and copy all files from that folder into your web application directory (e.g. c:\apache-tomcat\webapps\jasperserver)
* Remove the application server's JSP cache.
* For a Tomcat deployment on Windows, for instance, the JSP cache might be in: C:\apache-tomcat\work\Catalina\localhost\jasperserver.
* For a JBoss deployment, it might be in C:\jboss\standalone\tmp\work\jboss.web\default-host\jasperserver.
* Start the application server.
* Clear browser cache.
================================================================================
Closed Issues

This Service Pack addresses the following issue(s):
* JS-62936 [case 02035710] Buildomatic takes a very long time to export large number of users
* JS-64551 [case #02066165] - JSON validation error when refreshing a report
* JS-63364 Selecting cascading input controls values after scrolling resets position back to the top of list
* JS-64756 Upgrade Log4j to 2.17.1 version to fix CVE-2021-44228, CVE-2021-45046 and CVE-2021-45105


================================================================================
Added files:

WEB-INF/lib/log4j-1.2-api-2.17.1.jar
WEB-INF/lib/log4j-api-2.17.1.jar
WEB-INF/lib/log4j-core-2.17.1.jar
WEB-INF/lib/log4j-jcl-2.17.1.jar
WEB-INF/lib/log4j-jul-2.17.1.jar
WEB-INF/lib/log4j-slf4j-impl-2.17.1.jar
WEB-INF/lib/log4j-web-2.17.1.jar
================================================================================
Modified files:

WEB-INF/internal/jasperserver.properties
================================================================================
Deleted files:

WEB-INF/lib/log4j-1.2-api-2.13.3.jar
WEB-INF/lib/log4j-api-2.13.3.jar
WEB-INF/lib/log4j-core-2.13.3.jar
WEB-INF/lib/log4j-jcl-2.13.3.jar
WEB-INF/lib/log4j-jul-2.13.3.jar
WEB-INF/lib/log4j-slf4j-impl-2.13.3.jar
WEB-INF/lib/log4j-web-2.13.3.jar
================================================================================
Additional Notes:

Details for JS-64756 fix: For JBoss and Wildfly application servers, it is also required to change the reference of Log4j jar versions in jboss-deployment-structure.xml
Example JBoss jboss-deployment-structure.xml location:
	C:\jboss\standalone\deployments\jasperserver.war\META-INF
Example Wildfly jboss-deployment-structure.xml location:
	C:\wildfly1910\standalone\deployments\jasperserver.war\META-INF
To update the references:
1. open jboss-deployment-structure.xml
2. find old references, should look like:
	<resource-root path="WEB-INF/lib/log4j-web-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-slf4j-impl-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-jul-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-jcl-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-core-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-api-2.13.3.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-1.2-api-2.13.3.jar"  use-physical-code-source="true"/>
3. update references to newer versions, for example:
	<resource-root path="WEB-INF/lib/log4j-web-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-slf4j-impl-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-jul-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-jcl-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-core-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-api-2.17.1.jar"  use-physical-code-source="true"/>
	<resource-root path="WEB-INF/lib/log4j-1.2-api-2.17.1.jar"  use-physical-code-source="true"/>
4. save the file and restart the application server