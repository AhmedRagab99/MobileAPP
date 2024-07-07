load(
    "@rules_apple//apple:ios.bzl",
    "ios_application",
)
load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "top_level_targets",
    "xcode_provisioning_profile",
    "xcodeproj",
)


ios_application(
    name = "MobileApp",
    bundle_id = "com.test.MobileApp",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["//App/Mobile:Info.plist"],
    minimum_os_version = "17.0",
    visibility = ["//visibility:public"],
    #  provisioning_profile = ":xcode_managed_profile",
    deps = [
        "//App/Mobile",
    ],
)

xcodeproj(
    name = "xcodeproj",
    project_name = "MobileApp",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(
            ":MobileApp",
            target_environments = ["simulator"],
        ),
    ],
)
