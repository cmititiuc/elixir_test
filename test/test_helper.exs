ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElixirTest.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElixirTest.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElixirTest.Repo)

