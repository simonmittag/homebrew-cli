class Mse6AT0216 < Formula
  desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
  homepage "https://github.com/simonmittag/mse6"
  url "https://github.com/simonmittag/mse6/archive/v0.2.16.tar.gz"
  sha256 "0a11deb5419f1cdbddde51ce412f165594c59a6e556746bbd190228c56c1f9cb"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE / "go_cache"
    (buildpath / "src/github.com/simonmittag/mse6").install buildpath.children

    cd "src/github.com/simonmittag/mse6" do
      system "go", "install", "github.com/simonmittag/mse6"
      system "go", "install", "github.com/simonmittag/mse6/cmd/mse6"
      bin.install HOMEBREW_CACHE / "go_cache/bin/mse6"
    end
  end

  test do
    assert_match "pass", shell_output("mse6 -t 2>&1")
  end
end
