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

.PHONY: build_proto
build_proto:
	bazel build //src:demo_go_proto

.PHONY: build_haberdasher_proto
build_haberdasher_proto:
	bazel build //rpc/haberdasher:haberdasher_go_proto
