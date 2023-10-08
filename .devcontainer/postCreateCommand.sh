#!/bin/bash

sudo touch /usr/share/dotnet/sdk/$(dotnet --version)/EnableWorkloadResolver.sentinel
sudo dotnet workload restore --project Dionysus.Wasm/Dionysus.Wasm.csproj
