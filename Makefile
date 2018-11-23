.PHONY: build
build:
	bazel build //:go_default_library

.PHONY: run
run:
	bazel run //:go_dart_twirp_example

.PHONY: test
test:
	bazel test //...

.PHONY: gazelle
gazelle:
	bazel run //:gazelle

.PHONY: build_proto
build_proto:
	bazel build //src:person_go_proto