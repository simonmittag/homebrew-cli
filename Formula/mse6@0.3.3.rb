class Mse6AT033 < Formula
  desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
  homepage "https://github.com/simonmittag/mse6"
  url "https://github.com/simonmittag/mse6/archive/v0.3.3.tar.gz"
  sha256 "825e54f123093076d5a8498e8ef0e902153e235a924cae7b2e23217168281a53"

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
