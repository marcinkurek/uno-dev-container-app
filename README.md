# uno-devcontainer-app

This repository contains:
- an Uno Platform Application created with `dotnet new unoapp`
- a Dev Container configuration for WebAssembly development

## Renaming the project

Run the `GitHub Template Rename` action. This creates a pull request that changes the application name in folder names, file names and file contents.

## Dev Container setup

Copy `solution-config.props.sample` to `solution-config.props` and uncomment line:
```xml
<!-- <OverrideTargetFrameworks Condition="''!='hint: WASM, Skia'">$(OverrideTargetFrameworks);net7.0</OverrideTargetFrameworks> -->
```

## Useful commands
- build: `dotnet build UnoDevContainerApp.DevContainer.slnf`
- run:   `dotnet run --project UnoDevContainerApp.Wasm`
