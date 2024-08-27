defmodule HammoxMapsetIssue.Foo do
  @behaviour HammoxMapsetIssue.Foo.API

  @impl HammoxMapsetIssue.Foo.API
  def foo(set), do: set
end
