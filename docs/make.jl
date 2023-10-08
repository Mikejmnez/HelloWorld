using HelloWorld
using Documenter

DocMeta.setdocmeta!(HelloWorld, :DocTestSetup, :(using HelloWorld); recursive=true)

makedocs(;
    modules=[HelloWorld],
    authors="Miguel A. Jimenez-Urias",
    repo="https://github.com/Mikejmnez/HelloWorld.jl/blob/{commit}{path}#{line}",
    sitename="HelloWorld.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Mikejmnez.github.io/HelloWorld.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Mikejmnez/HelloWorld.jl",
    devbranch="main",
)
