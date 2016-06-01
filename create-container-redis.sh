docker run --name gitlab-redis -d \
    --volume /opt/gitlab/redis:/var/lib/redis \
    sameersbn/redis
