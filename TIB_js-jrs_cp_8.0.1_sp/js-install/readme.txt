================================================================================
Introduction

This is the readme for the JasperReports Server buildomatic installation and configuration tool.

This Service Pack should be applied to JasperReports Server version 8.0.0.

Build version [20220125_1258].
================================================================================
Installation

To apply the Service Pack:
* Find the JRS installer folder (e.g. c:\Users\jrs-user\jasperreports-server-x.x.x).
* Make a backup copy of that folder to a new, separate location.
* Delete the files listed in the section "Deleted files" from the installer files structure.
* Extract files (with full paths) from the Service Pack to the installer folder.
* At this point you may proceed with the install, upgrade or other operation which you have planned to execute
================================================================================
Uninstallation

To uninstall the Service Pack:
* Find the JRS installer folder (e.g. c:\Users\jrs-user\jasperreports-server-x.x.x).
* Delete everything from that folder (e.g. c:\Users\jrs-user\jasperreports-server-x.x.x\*.*)
* Find the backup of "jasperreports-server-x.x.x", that you created before installing this Service Pack, and copy all files from that folder into your web application directory (e.g. c:\Users\jrs-user\jasperreports-server-x.x.x)
================================================================================
Closed Issues

This Service Pack addresses the following issue(s):
* JS-62936 [case 02035710] Buildomatic takes a very long time to export large number of users
* JS-64551 [case #02066165] - JSON validation error when refreshing a report
* JS-63364 Selecting cascading input controls values after scrolling resets position back to the top of list
* JS-64756 Upgrade Log4j to 2.17.1 version to fix CVE-2021-44228, CVE-2021-45046 and CVE-2021-45105


================================================================================
Added files:

buildomatic/conf_source/ieCe/lib/log4j-1.2-api-2.17.1.jar
buildomatic/conf_source/ieCe/lib/log4j-api-2.17.1.jar
buildomatic/conf_source/ieCe/lib/log4j-core-2.17.1.jar
buildomatic/conf_source/ieCe/lib/log4j-jcl-2.17.1.jar
buildomatic/conf_source/ieCe/lib/log4j-jul-2.17.1.jar
buildomatic/conf_source/ieCe/lib/log4j-slf4j-impl-2.17.1.jar
buildomatic/lib/log4j-1.2-api-2.17.1.jar
buildomatic/lib/log4j-api-2.17.1.jar
buildomatic/lib/log4j-core-2.17.1.jar
buildomatic/lib/log4j-jcl-2.17.1.jar
================================================================================
Modified files:

buildomatic/install_resources/export/js-catalog-mysql-ce.zip
buildomatic/install_resources/export/js-catalog-mysql-minimal-ce.zip
buildomatic/install_resources/export/js-catalog-postgresql-ce.zip
buildomatic/install_resources/export/js-catalog-postgresql-minimal-ce.zip
buildomatic/install_resources/jboss7/jboss-deployment-structure.xml
buildomatic/install_resources/jboss7/jboss-eap-6/jboss-deployment-structure.xml
buildomatic/install_resources/jboss7/jboss-eap-7/jboss-deployment-structure.xml
buildomatic/install_resources/jboss7/wildfly/jboss-deployment-structure.xml
buildomatic/pom.xml
================================================================================
Deleted files:

TIB_js-jrs-ce_8.0.1_license.pdf
TIB_js-jrs-ce_8.0.1_license.txt
buildomatic/conf_source/ieCe/lib/log4j-1.2-api-2.13.3.jar
buildomatic/conf_source/ieCe/lib/log4j-api-2.13.3.jar
buildomatic/conf_source/ieCe/lib/log4j-core-2.13.3.jar
buildomatic/conf_source/ieCe/lib/log4j-jcl-2.13.3.jar
buildomatic/conf_source/ieCe/lib/log4j-jul-2.13.3.jar
buildomatic/conf_source/ieCe/lib/log4j-slf4j-impl-2.13.3.jar
buildomatic/lib/log4j-1.2-api-2.13.3.jar
buildomatic/lib/log4j-api-2.13.3.jar
buildomatic/lib/log4j-core-2.13.3.jar
buildomatic/lib/log4j-jcl-2.13.3.jar
================================================================================
Additional Notes: