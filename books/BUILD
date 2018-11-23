load("@io_bazel_rules_go//go:def.bzl", "go_library")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

proto_library(
    name = "books_service_proto",
    srcs = ["books_service.proto"],
    visibility = ["//visibility:public"],
)

go_proto_library(
    name = "books_service_go_proto",
    compilers = ["@io_bazel_rules_go//proto:go_grpc"],
    importpath = "github.com/johnpryan/go_dart_twirp_example/books",
    proto = ":books_service_proto",
    visibility = ["//visibility:public"],
)

go_library(
    name = "go_default_library",
    embed = [":books_service_go_proto"],
    importpath = "github.com/johnpryan/go_dart_twirp_example/books",
    visibility = ["//visibility:public"],
)
