"""This file initializes bazel rules.

As of now, load statements are not lazily evaluated (therefore not allowed in functions).
As a workaround, we created this file to call the macros defined in repositories loaded
in deps.bzl.
"""

# Skylib.
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

# Golang
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@io_bazel_rules_go//extras:embed_data_deps.bzl", "go_embed_data_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

# Buf
load("@rules_buf//buf:repositories.bzl", "rules_buf_dependencies", "rules_buf_toolchains")

# Protobuf
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@rules_proto_grpc//:repositories.bzl", "rules_proto_grpc_repos", "rules_proto_grpc_toolchains")

def install():
    """Install all the rules"""

    # Skylib
    bazel_skylib_workspace()

    # Golang
    go_rules_dependencies()
    go_register_toolchains(version = "1.18.6")
    go_embed_data_dependencies()
    gazelle_dependencies()

    # Protobuf
    rules_proto_grpc_toolchains()
    rules_proto_grpc_repos()
    rules_proto_dependencies()
    rules_proto_toolchains()
    protobuf_deps()

    # Buf
    rules_buf_dependencies()
    rules_buf_toolchains(version = "v1.8.0")
