This would be a central server for deploying all centralized services like:

1. ELK stack
2. Beats (filebeats, metric beats)
3. Metabase or the data platform
4. Redis
5. RabbitMQ
6. HaProxy
7. Jenkins (when it comes)

and whatever will be needed frequently so that all the knowledge about the deployment is centralized, consolidated and documented.

1. docker elk:

It is downloaded from https://github.com/deviantony/docker-elk.git but not maintained as a submodule.
If sometimes it starts breaking, check the newer version there

2. Beats

it is a collection of all beats we are using
presently, it would be filebeat, metricbeat. will add heartbeat later
