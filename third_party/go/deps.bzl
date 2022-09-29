"""
This file is maintained by gazelle. DO NOT EDIT.

Once a new module is added through the standard go tool chain, run:

    bazel run //third_party/go:update_repos

NOTE: Transitive dependency target should not be explicitly depended in *.bzl.
See http://tapd.oa.com/ee_monorepo_migration/prong/stories/view/1020452268867525447 for more details.

NOTE: If you have go_repository rules that may have protos, you'll
also need to add build_file_proto_mode = "disable" to those as well.
See https://github.com/bazelbuild/rules_go/blob/master/proto/core.rst#option-2-use-pre-generated-pbgo-files
for more details.
"""

load("@bazel_gazelle//:deps.bzl", "go_repository")

def third_party_go_dependencies():
    """
    third_party_go_dependencies declares third party go modules.
    """
