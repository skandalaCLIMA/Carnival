using Documenter, Carnival

makedocs(
  sitename="Carnival",
  doctest = false,
  strict = false,
  format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true",),
  modules = [Documenter, Carnival],
  clean = false,
  pages = Any[
    "Home" => "index.md",
  ]
)

deploydocs(
           repo = "github.com/charleskawczynski/Carnival.git",
           target = "build",
          )
