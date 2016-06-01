docker run --name gitlab -d \
--link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
-p 8080:80 -p 8022:22 \
-v /opt/gitlab/gitlab:/home/git/data \
-e 'GITLAB_PORT=8080' \
-e 'GITLAB_SSH_PORT=8022' \
-e 'GITLAB_SECRETS_DB_KEY_BASE=long-and-random-alpha-numeric-string' \
sameersbn/gitlab
