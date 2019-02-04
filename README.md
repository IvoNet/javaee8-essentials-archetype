# Minimalistic Java EE 8 Quickstarter

A quickstart maven archetype for creating greenfield Java EE 8 projects 
with wildfly as the Application Server

## Run from mvn central repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=javaee8-essentials-archetype \
    -DarchetypeVersion=0.0.3 -U
```

## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=javaee8-essentials-archetype \
   -Dversion=0.0.3
   
mvn archetype:crawl
   
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId


# Contact

Twitter: @ivonet