defmodule HammoxMapsetIssue.BarTest do
  alias HammoxMapsetIssue.Bar
  alias HammoxMapsetIssue.Foo
  use ExUnit.Case, async: true
  import Hammox

  describe "HammoxMapsetIssue.Bar.bar/1" do
    test "delegates to Foo.foo/1" do
      defmock(FooMock, for: Foo.API)
      stub(FooMock, :foo, fn _ -> MapSet.new([3, 4]) end)
      assert Bar.bar(MapSet.new([1, 2]), FooMock) == MapSet.new([3, 4])
    end
  end
end
