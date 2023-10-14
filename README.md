# uno-dev-container-app

This repository contains:
- an Uno Platform Application created with `dotnet new unoapp`
- a Dev Container configuration for WebAssembly development

## Renaming the project

- Make sure _Allow GitHub Actions to create and approve pull requests_ is checked in the repository settings
- Run the _GitHub Template Rename_ action
- Merge the pull request

## Dev Container setup

Copy `solution-config.props.sample` to `solution-config.props` and uncomment line:
```xml
<!-- <OverrideTargetFrameworks Condition="''!='hint: WASM, Skia'">$(OverrideTargetFrameworks);net7.0</OverrideTargetFrameworks> -->
```

## Useful commands
- build: `dotnet build UnoDevContainerApp.DevContainer.slnf`
- run:   `dotnet run --project UnoDevContainerApp.Wasm`

## Troubleshooting

### _Failed to fetch_ error on the splash screen

When running from a GitHub Codespace, you need to mark the port 5000 as _Public_. Be advised that this enables outside anonymous access.

### OmniSharp errors

Run _Restart OmniSharp_ from the command palette after the project has been built.
