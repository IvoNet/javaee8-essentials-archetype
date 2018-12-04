# Minimalistic Java EE 8 Quickstarter

A quickstart maven archetype for creating greenfield Java EE 8 projects


## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=javaee8-essentials-archetype \
   -Dversion=0.0.2
```

## Run from mvn cenral repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=javaee8-essentials-archetype \
    -DarchetypeVersion=0.0.2 -U
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId