build:
	CGO_ENABLED=0 go build -o bin/go-runtime-info cmd/root/main.go
test:
	go test -coverpkg=./... -covermode=atomic ./...
unit:
	mkdir -p $(CURDIR)/coverage/unit && go test -cover ./... -args -test.gocoverdir=$(CURDIR)/coverage/unit
combine-coverage:
	go tool covdata textfmt -i=./coverage/unit,./coverage/int/ubuntu,./coverage/int/fedora -o coverage.txt && sed -i 2,3d coverage.txt
coverage-report:
	go tool cover -func coverage.txt