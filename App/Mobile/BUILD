load(
    "@rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "Mobile",
    srcs = glob(["Sources/*.swift"]),
    data = ["Resources/Localizable.strings"],
    visibility = ["//visibility:public"],
    deps = [
        "//CartModule",
        # "//CheckoutModule"
    ],
)

exports_files([
    "Info.plist",
    # "Resources/LaunchScreen.storyboard"
])
