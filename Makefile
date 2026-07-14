generate-searcher:
	@rm -rf pkg/pb/searcher/*
	protoc -I api/proto/searcher \
   --go_out=./pkg/pb/searcher --go_opt=paths=source_relative \
   --go-grpc_out=./pkg/pb/searcher --go-grpc_opt=paths=source_relative \
   searcher.proto
generate-auth:
	@rm -rf pkg/pb/auth/*
	protoc -I api/proto/auth \
       --go_out=./pkg/pb/auth --go_opt=paths=source_relative \
       --go-grpc_out=./pkg/pb/auth --go-grpc_opt=paths=source_relative \
       auth.proto
generate-parser:
	@rm -rf pkg/pb/parser/*
	protoc -I api/proto/parser\
           --go_out=./pkg/pb/parser --go_opt=paths=source_relative \
           --go-grpc_out=./pkg/pb/parser --go-grpc_opt=paths=source_relative \
           parser.proto
generate: generate-auth generate-parser generate-searcher
