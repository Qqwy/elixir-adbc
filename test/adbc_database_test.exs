defmodule Adbc.Database.Test do
  use ExUnit.Case
  doctest Adbc.Database
  alias Adbc.Database

  test "allocate a database, init it and then release it" do
    {:ok, %Database{} = database} = Database.new()
    assert is_reference(database.reference)
    :ok = Database.set_option(database, "driver", "adbc_driver_sqlite")

    assert :ok == Database.init(database)
    assert :ok == Database.release(database)
  end

  test "release a database twice should return invalid state" do
    {:ok, %Database{} = database} = Database.new()
    assert is_reference(database.reference)
    :ok = Database.set_option(database, "driver", "adbc_driver_sqlite")

    assert :ok == Database.init(database)
    assert :ok == Database.release(database)
    assert {:error, "invalid state"} == Database.release(database)
  end
end
