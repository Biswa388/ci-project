# Complete DevOps CI Pipeline Project (GitHub → Jenkins → Maven → Tomcat)

## Overview
This repository contains a simple Java web application and full CI pipeline documentation to demonstrate Jenkins Freestyle jobs integrating with GitHub and Maven to produce a WAR artifact and optionally deploy to Tomcat.

## What's included
- Source code (HelloController.java, index.jsp)
- pom.xml (Maven)
- Jenkins job sample config (jenkins_job_config.xml)
- deploy_to_tomcat.sh (script to copy WAR to Tomcat)
- docs/ with resume bullets and GitHub description
- assets/ with architecture diagram and mock screenshots

## How to build locally
1. Install Java 11 and Maven
2. Run: `mvn clean package`
3. WAR will be in `target/webapp.war` (finalName set in pom.xml)

## Jenkins setup (Freestyle job)
- SCM: Git (your repo URL)
- Build: Invoke Maven -> `clean package`
- Post-build: Archive artifacts -> `target/*.war`
- Optional: Add "Deploy to container" plugin to deploy to Tomcat

## Auto-deploy
Use `scripts/deploy_to_tomcat.sh` to copy WAR to Tomcat (ensure TOMCAT_DIR is set or default /opt/tomcat exists).

## License
MIT
