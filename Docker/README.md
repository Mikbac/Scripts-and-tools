
# Build image
```
docker build --tag {{username}}/{{imagename}}:{{version}} -f Dockerfile .
```
e.g.
```
docker build --tag mikbac/example1:1.0 -f Dockerfile .
```

# Share image
```
docker login

docker login -u "username" -p "password" docker.io

docker push mikbac/example1:1.0
```

# Run container
```
docker container start <containerId>
```

This binds port 8080 of the container to TCP port 8888
8888 - local
8080 - docker
```
docker container run --name mikbac/example1:1.0 -p 8888:8080
```
```
docker container run -p 8888:8080 --ip 0.0.0.0 -e PORT:8080 --name mu-app mikbac/example1:1.0
```