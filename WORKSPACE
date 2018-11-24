load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_protobuf",
    sha256 = "cef7f1b5a7c5fba672bec2a319246e8feba471f04dcebfe362d55930ee7c1c30",
    strip_prefix = "protobuf-3.5.0",
    urls = ["https://github.com/google/protobuf/archive/v3.5.0.zip"],
)

http_archive(
    name = "com_github_twitchtv_twirp",
    sha256 = "d08b9415baf292b016ed9c55c37e66154c46c221",
    strip_prefix = "v5.5.0",
    urls = ["https://github.com/twitchtv/twirp/archive/v5.5.0.zip"],
)

http_archive(
    name = "com_github_grpc_ecosystem_grpc_gateway",
    sha256 = "aeab1d96e0f1368d243e2e5f526aa29d495517bb",
    strip_prefix = "v1.5.1",
    urls = ["https://github.com/grpc-ecosystem/grpc-gateway/archive/v1.5.1.zip"],
)

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
