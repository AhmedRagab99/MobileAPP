load(
    "@rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "CartModule",
    srcs = glob(["Sources/*.swift"]),
    module_name = "CartModule",
    visibility = ["//visibility:public"],
    deps = [
        "//UserModule",
    ],
)
