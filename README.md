# infra_dev

this repository is a default configuration to run and dev horfimbor.dev on your computer with a basic configuration.

### before :

you need [docker CE](https://www.docker.com/) installed and running

you have to download and run `make build` for each services and global_frontend.

### run :

Launch `make run`.

open a decent browser on [http://localhost](http://localhost)

that's all.

### test a change on a service :

in the service folder : run `make build` to generate a new image with :dev tag

in this repository folder, run `make run`

### infra backend

mysql admin : [http://localhost:8080](http://localhost:8080)

- Server : db
- user : root
- password : rootpwd
- database : 

event source admin : [http://localhost:2113](http://localhost:2113)

- url : http://localhost:2113
- user : admin
- password : changeit
