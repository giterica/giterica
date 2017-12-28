PROTO_PATH=$(GOPATH)/src/github.com/giterica/protobuf-api/proto

protobuf-api:
	# go get -u github.com/golang/protobuf/protoc-gen-go
	@echo $(PROTO_PATH)
	protoc --proto_path=$(PROTO_PATH) $(PROTO_PATH)/auth-client-server.proto --go_out=plugins=grpc:api
	protoc --proto_path=$(PROTO_PATH) $(PROTO_PATH)/auth-server-plugin.proto --go_out=plugins=grpc:api
