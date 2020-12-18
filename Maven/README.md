# Maven

Install Maven:
```
sudo apt update && sudo apt install maven && mvn -version
```

## Maven:
Install project:
```
mvn install
```

Version:
```
mvn -version
```

## Dependencies

https://github.com/google/gson
```
        <dependency>
            <groupId>com.google.code.gson</groupId>
            <artifactId>gson</artifactId>
            <version>2.8.2</version>
        </dependency>
```

http://fusesource.github.io/jansi/
```
        <dependency>
            <groupId>org.fusesource.jansi</groupId>
            <artifactId>jansi</artifactId>
            <version>1.18</version>
        </dependency>
```