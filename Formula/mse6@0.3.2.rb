class Mse6AT032 < Formula
  desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
  homepage "https://github.com/simonmittag/mse6"
  url "https://github.com/simonmittag/mse6/archive/v0.3.2.tar.gz"
  sha256 "b07e02281aff57aab0a9c9ed233281f6a7cbbd7e4220aeda6bd9175dc1237eb2"

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
