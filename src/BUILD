load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

proto_library(
    name = "person_proto",
    srcs = ["person.proto"],
    deps = [
        ":address_proto",
        "@com_google_protobuf//:any_proto",
    ],
)

proto_library(
    name = "address_proto",
    srcs = ["address.proto"],
    deps = [":zip_code_proto"],
)

proto_library(
    name = "zip_code_proto",
    srcs = ["zip_code.proto"],
)

proto_library(
    name = "demo_proto",
    srcs = [
        "address.proto",
        "person.proto",
        "zip_code.proto",
    ],
    visibility = ["//visibility:public"],
    deps = ["@com_google_protobuf//:any_proto"],
)

go_proto_library(
    name = "demo_go_proto",
    importpath = "github.com/johnpryan/go_dart_twirp_example/src",
    proto = ":demo_proto",
    visibility = ["//visibility:public"],
)
