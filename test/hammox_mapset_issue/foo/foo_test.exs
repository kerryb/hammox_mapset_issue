defmodule HammoxMapsetIssue.FooTest do
  alias HammoxMapsetIssue.Foo
  use ExUnit.Case, async: true

  describe "HammoxMapsetIssue.Foo.foo/1" do
    test "returns the set unchanged" do
      set = MapSet.new([1, 2])
      assert Foo.foo(set) == set
    end
  end
end
