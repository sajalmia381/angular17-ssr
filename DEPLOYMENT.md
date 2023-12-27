## Deployment with Dockerfile

### 01 Build Container
```sh
docker build -t <tag> .
```

### 02 Run Container
```sh
docker run --name <containerName> -d -p 8000:4000 <tag>
```





## Deployment with Dockerfile2

### 01 Build Angular app
```sh
npm run build
```

### 02 Build Container
```sh
docker build -t <tag> -f Dockerfile2 .
```

### 02 Run Container
```sh
docker run --name <containerName> -d -p 8000:4000 <tag>
```