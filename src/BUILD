load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "person_go_proto",
    deps = [":person_proto"],
    proto = ":person_proto",
)

# Conventions:
# 1. One proto_library rule per .proto file.
# 2. A file named foo.proto will be in a rule named foo_proto.
proto_library(
    name = "person_proto",
    srcs = ["person.proto"],
    deps = [
        ":address_proto",
        # Well known protos should be included as deps in the
        # proto_library rules of the source files importing them.
        # A list of all @com_google_protobuf well known protos can
        # seen with:
        # `bazel query 'kind(proto_library, @com_google_protobuf//:all)'`
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
