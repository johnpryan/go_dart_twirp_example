load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_protobuf",
    sha256 = "cef7f1b5a7c5fba672bec2a319246e8feba471f04dcebfe362d55930ee7c1c30",
    strip_prefix = "protobuf-3.5.0",
    urls = ["https://github.com/google/protobuf/archive/v3.5.0.zip"],
)

#########

#http_archive(
#    name = "com_github_johnpryan_twirp",
#    sha256 = "109357b6e3a361fa3ede62d92e47c6feaa2a1454c864fbbcb3c6e6ae3175d44a",
#    urls = ["https://github.com/johnpryan/twirp/archive/2fd87253451217ae35f6193b5fc7dbb59fcc90c7.zip"],
#)

#new_local_repository(
#    name = "com_github_twitchtv_twirp",
#    path = "/Users/john/code/go/src/github.com/twitchtv/twirp/protoc-gen-twirp",
##    build_file = "BUILD.twirp.bzl",
#)

new_local_repository(
    name = "com_github_twitchtv_twirp",
    path = "/Users/john/code/go/src/github.com/twitchtv/twirp",
    build_file = "BUILD.twirp.bzl",
)

###########

http_archive(
    name = "io_bazel_rules_go",
    urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.13.0/rules_go-0.13.0.tar.gz"],
    sha256 = "ba79c532ac400cefd1859cbc8a9829346aa69e3b99482cd5a54432092cbc3933",
)

http_archive(
    name = "bazel_gazelle",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.15.0/bazel-gazelle-0.15.0.tar.gz"],
    sha256 = "6e875ab4b6bf64a38c352887760f21203ab054676d9c1b274963907e0768740d",
)

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
gazelle_dependencies()
