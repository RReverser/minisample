rm bin,obj,.packages -Recurse -Force
dotnet restore
cp Microsoft.DotNet.ILCompiler.LLVM.props .packages\microsoft.dotnet.ilcompiler.llvm\8.0.0-alpha.1.23170.1\build\
cp Microsoft.DotNet.ILCompiler.SingleEntry.targets .packages\microsoft.dotnet.ilcompiler.llvm\8.0.0-alpha.1.23170.1\build\
# That's important to changes to packages picked up. I did not realize that this is need.
rm bin,obj -Recurse -Force
& $env:EMSDK\emsdk_env.ps1
dotnet publish
