1. install
sudo docker pull sameersbn/gitlab
sudo docker pull sameersbn/redis
sudo docker pull sameersbn/postgresql


2. start container
[root@M800 opt]# docker stop $(docker ps -a -q)
[root@M800 opt]# docker rm $(docker ps -a -q)
[root@M800 opt]# rm -rf /opt/gitlab
or
[root@M800 opt]# rm -rf /opt/gitlab/postgresql/9.4
[root@M800 opt]# mkdir -p /opt/gitlab/{gitlab,redis,postgresql}

[root@M800 docker]# chmod +x create*
[root@M800 docker]# sudo ./create-container-postgresql.sh
f2822f741267e4d12894e641ae08c216e4bd29b31d97a16c9ae8537ea4156d6f
[root@M800 docker]# sudo ./create-container-redis.sh
8cbdac66c52bba1b5ce754b34afb5ec02b499774f196fc69fa6e304ce6a75124
[root@M800 docker]# sudo ./create-container-gitlab.sh
a5d4f134c8e06fcf8fb32c9d17f81691217310adfa24246de229bbe9b2a99205



[root@M800 docker]# docker ps -a
CONTAINER ID        IMAGE                  COMMAND                CREATED              STATUS                          PORTS               NAMES
a5d4f134c8e0        sameersbn/gitlab       "/sbin/entrypoint.sh   About a minute ago   Exited (1) About a minute ago                       gitlab            
8cbdac66c52b        sameersbn/redis        "/sbin/entrypoint.sh   About a minute ago   Up About a minute               6379/tcp            redis             
f2822f741267        sameersbn/postgresql   "/sbin/entrypoint.sh   2 minutes ago        Up 2 minutes                    5432/tcp            postgresql        

[root@M800 docker]# docker logs a5d4f134c8e0
