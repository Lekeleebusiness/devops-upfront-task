import os

# Server settings
SERVER_HOST = "0.0.0.0"
SERVER_PORT = os.environ.get("SERVER_PORT", 80)

# Redis settings for docker-compose to test it locally with authentication enabled
# REDIS_HOST = os.environ.get("REDIS_HOST", "localhost")
# REDIS_PORT = 6379
# REDIS_PWD = os.environ.get("REDIS_PASSWORD", None)

#Redis settings to connect to redis cluster in aws and does not use authentication
REDIS_HOST = "jobleads-redis-cluster.pxhuoo.0001.use1.cache.amazonaws.com"
REDIS_PORT = 6379