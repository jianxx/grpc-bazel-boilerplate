""" This file declares all the bazel rule dependencies
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def dependencies():
    """Declares all the rule dependencies here"""

    # Skylib
    http_archive(
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        ],
        sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
    )

    # Golang
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "099a9fb96a376ccbbb7d291ed4ecbdfd42f6bc822ab77ae6f1b5cb9e914e94fa",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
        ],
    )

    # Gazelle
    http_archive(
        name = "bazel_gazelle",
        sha256 = "efbbba6ac1a4fd342d5122cbdfdb82aeb2cf2862e35022c752eaddffada7c3f3",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.27.0/bazel-gazelle-v0.27.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.27.0/bazel-gazelle-v0.27.0.tar.gz",
        ],
    )

    # Protobuf
    http_archive(
        name = "rules_proto",
        sha256 = "80d3a4ec17354cccc898bfe32118edd934f851b03029d63ef3fc7c8663a7415c",
        strip_prefix = "rules_proto-5.3.0-21.5",
        urls = [
            "https://github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.5.tar.gz",
        ],
    )

    http_archive(
        name = "com_google_protobuf",
        sha256 = "3bd7828aa5af4b13b99c191e8b1e884ebfa9ad371b0ce264605d347f135d2568",
        strip_prefix = "protobuf-3.19.4",
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/v3.19.4.tar.gz",
        ],
    )

    # CC
    http_archive(
        name = "rules_cc",
        urls = ["https://github.com/bazelbuild/rules_cc/releases/download/0.0.4/rules_cc-0.0.4.tar.gz"],
        sha256 = "af6cc82d87db94585bceeda2561cb8a9d55ad435318ccb4ddfee18a43580fb5d",
        strip_prefix = "rules_cc-0.0.4",
    )

    # Bazel buildtools
    http_archive(
        name = "com_github_bazelbuild_buildtools",
        sha256 = "e3bb0dc8b0274ea1aca75f1f8c0c835adbe589708ea89bf698069d0790701ea3",
        strip_prefix = "buildtools-5.1.0",
        urls = [
            "https://github.com/bazelbuild/buildtools/archive/refs/tags/5.1.0.tar.gz",
        ],
    )

    # Buf
    http_archive(
        name = "rules_buf",
        sha256 = "523a4e06f0746661e092d083757263a249fedca535bd6dd819a8c50de074731a",
        strip_prefix = "rules_buf-0.1.1",
        urls = [
            "https://github.com/bufbuild/rules_buf/archive/refs/tags/v0.1.1.zip",
        ],
    )
