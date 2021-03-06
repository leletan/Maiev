ifndef ENV
ENV=dev
endif

publish:
	bash ./_ops/publish_artifact.sh $(ENV)

deploy:
	bash ./_ops/deploy.sh $(JOB)

submit:
	bash ./_ops/submit.sh $(ENV) $(JOB)

sidecars:
	bash ./_ops/$(ENV)/sidecars/restart.sh $(ENV)