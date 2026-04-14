build:
	git pull
	docker build -t local/runner .

run:
	git pull
	docker run --restart always -d -e ORG=https://github.com/raghudevopsb88 -e NAME=runner-1 -e TOKEN=$(runner_token) local/runner
	docker run --restart always -d -e ORG=https://github.com/raghudevopsb88 -e NAME=runner-2 -e TOKEN=$(runner_token) local/runner
	docker run --restart always -d -e ORG=https://github.com/raghudevopsb88 -e NAME=runner-3 -e TOKEN=$(runner_token) local/runner



