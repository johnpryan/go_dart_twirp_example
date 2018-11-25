.PHONY: build
build:
	bazel build //:go_default_library

.PHONY: run
run:
	export PORT=9000 && bazel run //:go_dart_twirp_example

.PHONY: clean
clean:
	bazel clean

.PHONY: test
test:
	bazel test //...

.PHONY: gazelle
gazelle:
	bazel run //:gazelle

.PHONY: build_src
build_src:
	bazel build //src:demo_go_proto

.PHONY: build_haberdasher_proto
build_haberdasher_proto:
	bazel build //rpc/haberdasher:go_default_library

.PHONY: integration_test
integration_test:
	bazel run //cmd/client

#.PHONY: haberdasher_go_twirp_library
#haberdasher_go_twirp_library:
#	bazel build //rpc/haberdasher:haberdasher_go_twirp_library
