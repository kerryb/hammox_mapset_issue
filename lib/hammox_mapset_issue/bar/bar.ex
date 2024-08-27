defmodule HammoxMapsetIssue.Bar do
  alias HammoxMapsetIssue.Foo

  def bar(set, foo \\ Foo), do: foo.foo(set)
end
