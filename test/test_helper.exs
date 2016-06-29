Bureaucrat.start(default_path: "API.md")
ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])

Ecto.Adapters.SQL.Sandbox.mode(KaifaLi.Repo, :manual)
