```
fly -t cp set-pipeline -p install-opsman -c pipelines/install-upgrade-opsman/pipeline.yml -l ../paasify-pipelines-pas-configuration/dev/fly.yml
```

```
fly -t cp set-pipeline -p install-pas -c pipelines/install-product/pipeline.yml -v product_slug=elastic-runtime -l ../paasify-pipelines-pas-configuration/dev/fly.yml
```

```
fly -t cp set-pipeline -p delete-environment -c pipelines/delete-environment/pipeline.yml -l ../paasify-pipelines-pas-configuration/dev/fly.yml
```