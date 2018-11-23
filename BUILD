load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:prefix github.com/johnpryan/go_dart_twirp_example
gazelle(name = "gazelle")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/johnpryan/go_dart_twirp_example",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/github.com/caarlos0/env:go_default_library",
        "//vendor/github.com/labstack/echo:go_default_library",
    ],
)

go_binary(
    name = "go_dart_twirp_example",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
