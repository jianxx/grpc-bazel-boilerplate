_TOOLCHAIN = "@rules_buf//tools/buf:toolchain_type"

def _buf_format_impl(ctx):
    buf = ctx.toolchains[_TOOLCHAIN].cli

    ctx.actions.write(
        output = ctx.outputs.executable,
        content = "{} format -w".format(buf.short_path),
        is_executable = True,
    )

    files = [buf]
    runfiles = ctx.runfiles(
        files = files,
    )

    return [
        DefaultInfo(
            runfiles = runfiles,
        ),
    ]

format = rule(
    implementation = _buf_format_impl,
    toolchains = [_TOOLCHAIN],
    executable = True,
)