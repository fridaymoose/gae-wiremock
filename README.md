#  How to deploy Standalone wiremock server on Google App Engine

## Preconditions
1. Register an account on [Google Cloud Platform](https://cloud.google.com/free)
2. Activate `Free Tier`, you need a creadit card with $1

## Usefull documentation
1. [Wiremock stubbing](https://wiremock.org/docs/stubbing/)
2. [Wiremock Standalone setup](https://wiremock.org/docs/standalone/java-jar/)
3. [GAE deploy command](https://cloud.google.com/sdk/gcloud/reference/app/deploy#--appyaml)
4. [GAE config file](https://cloud.google.com/appengine/docs/standard/reference/app-yaml?tab=java)

## Wiremock deploy
1. Create `set-env-vars.sh` file
2. Provide google [project id](https://support.google.com/googleapi/answer/7014113)
3. Run `deployment.sh`

## Troubleshooting
There is a special stub `/health_check.json` which exposes URL
```
GET https://<host>/health
```
You can either access it directly or use `https://<host>/__admin`. Get your host from google console or deployment.sh output.