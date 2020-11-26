
# Build image
```shell script
docker build --tag {{username}}/{{imagename}}:{{version}} -f Dockerfile .
```
e.g.
```shell script
docker build --tag mikbac/example1:1.0 -f Dockerfile .
```

# Share image
```shell script
docker login

docker login -u "username" -p "password" docker.io

docker push mikbac/example1:1.0
```

# Run container
```shell script
docker container start <containerId>
```

This binds port 8080 of the container to TCP port 8888
8888 - local
8080 - docker
```shell script
docker container run --name mikbac/example1:1.0 -p 8888:8080
```
```shell script
docker container run -p 8888:8080 --ip 0.0.0.0 -e PORT:8080 --name mu-app mikbac/example1:1.0
```