generate:
	@rm -rf pkg/pb/chat/searcher/*
	protoc -I api/proto/searcher \
   --go_out=./pkg/pb/searcher --go_opt=paths=source_relative \
   --go-grpc_out=./pkg/pb/searcher --go-grpc_opt=paths=source_relative \
   searcher.proto
