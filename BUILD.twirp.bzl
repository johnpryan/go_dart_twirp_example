load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")
load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:prefix github.com/johnpryan/twirp
gazelle(name = "gazelle")

go_library(
    name = "go_default_library",
    srcs = [
        "context.go",
        "errors.go",
        "hooks.go",
    ],
    importpath = "github.com/johnpryan/twirp",
    visibility = ["//visibility:public"],
    deps = ["@com_github_twitchtv_twirp//internal/contextkeys:go_default_library"],
)

go_test(
    name = "go_default_test",
    srcs = [
        "errors_test.go",
        "hooks_test.go",
        "license_test.go",
        "vendor_test.go",
    ],
    embed = [":go_default_library"],
    deps = ["//vendor/github.com/pkg/errors:go_default_library"],
)
