# CommonLibSSE-NG Plugin Template

This is a basic plugin template using CommonLibSSE-NG.

### Requirements
* [XMake](https://xmake.io) [3.0.0+]
* C++23 Compiler (MSVC, Clang-CL)

## Getting Started
```bat
git clone --recurse-submodules https://github.com/libxse/commonlibsse-ng-template
cd commonlibsse-ng-template
```

### Build
To build the project, run the following command:
```bat
xmake build
```

> ***Note:*** *This will generate a `build/windows/` directory in the **project's root directory** with the build output.*


### Build Output (Optional)
If you want to redirect the build output, set one of the following environment variables:

- Path to a Mod Manager mods folder: `XSE_TES5_MODS_PATH`

  or

- Path to a Skyrim install folder: `XSE_TES5_GAME_PATH`

**Alternatively**, use the [set_installdir](https://xmake.io/api/description/project-target.html#set-installdir) api to set a specific install path instead, either globally or per target. By default, your plugin `.dll` and `.pdb` are included, but you can *add* more files to be installed by using the [add_installfiles](https://xmake.io/api/description/project-target.html#add-installfiles) api.

### Project Generation (Optional)
If you use Visual Studio, run the following command:
```bat
xmake project -k vsxmake
```

> ***Note:*** *This will generate a `vsxmakeXXXX/` directory in the **project's root directory** using the latest version of Visual Studio installed on the system.*

**Alternatively**, if you do not use Visual Studio, you can generate a `compile_commands.json` file for use with a laguage server like clangd in any code editor that supports it, like vscode:
```bat
xmake project -k compile_commands
```

> ***Note:*** *You must have a language server extension installed to make use of this file. I recommend `clangd`. Do not have more than one installed at a time as they will conflict with each other. I also recommend installing the `xmake` extension if available to make building the project easier.*

## Documentation
Please refer to the [Wiki](../../wiki/Home) for more advanced topics.
