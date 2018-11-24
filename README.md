# go_dart_twirp_example

An attempt to build [twirp][twirp example] using [bazel go rules][bazel go rules]

## Next Steps

- [ ] fix `make build_haberdasher_proto` command such that it produces the same output as:

```bash
protoc --proto_path=$GOPATH/src:. --twirp_out=. --go_out=. ./rpc/haberdasher/service.proto
```

[twirp example]: https://twitchtv.github.io/twirp/docs/example.html
[bazel go rules]: https://github.com/bazelbuild/rules_go
