defmodule Adbc.ArrowArrayStream do
  @moduledoc """
  Documentation for `Adbc.ArrowArrayStream`.
  """

  @typedoc """
  - **reference**: `reference`.

    The underlying erlang resource variable.

  """
  @type t :: %__MODULE__{
          reference: reference(),
          pointer: non_neg_integer()
        }
  defstruct [:reference, :pointer]
  alias __MODULE__, as: T

  @spec get_pointer(Adbc.ArrowArrayStream.t()) :: non_neg_integer()
  def get_pointer(self = %T{}) do
    Adbc.Nif.adbc_arrow_array_stream_get_pointer(self.reference)
  end
end
