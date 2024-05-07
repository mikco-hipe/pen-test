zap-scan:
	docker build -t pen-test .
	docker stop pen-test-container || true
	docker rm pen-test-container || true
	docker run -d -p 3030:3030 --name pen-test-container pen-test 
	docker run -t --network="host" ghcr.io/zaproxy/zaproxy:stable zap-baseline.py -t http://localhost:3030 || true
