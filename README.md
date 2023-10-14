# uno-devcontainer-app

This repository contains:
- an Uno Platform Application created with `dotnet new unoapp`
- a Dev Container configuration for WebAssembly development

## Renaming the project
- Make sure `Allow GitHub Actions to create and approve pull requests` is checked in the repository settings
- Run the `GitHub Template Rename` action
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

### `Failed to fetch` error on the splash screen

When running from a GitHub Codespace, you need to mark the port 5000 as `Public`. Be advised that this enables outside anonymous access.

### OmniSharp errors

Run `Restart OmniSharp` from the command palette after the project has been built.
