class Mse6AT014 < Formula
  desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
  homepage "https://github.com/simonmittag/mse6"
  url "https://github.com/simonmittag/mse6/archive/v0.1.4.tar.gz"
  sha256 "c09be13e715d608c2b3f88908843f69a6ecd428e80c8f262f96a996ce3d59e79"

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
