-- include subprojects
includes("lib/commonlibsse-ng")

-- set project constants
set_project("commonlibsse-ng-template")
set_version("0.0.0")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

-- add common rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- define targets
target("commonlibsse-ng-template")
    add_rules("commonlibsse-ng.plugin", {
        name = "commonlibsse-ng-template",
        author = "libxse",
        description = "SKSE64 plugin template using CommonLibSSE-NG"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")
