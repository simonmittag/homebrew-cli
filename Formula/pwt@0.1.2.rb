class Mse6AT012 < Formula
  desc "pwt waits for you until a tcp socket, aka port becomes available and exits cleanly once it does"
  homepage "https://github.com/simonmittag/pwt"
  url "https://github.com/simonmittag/pwt/archive/v0.1.2.tar.gz"
  sha256 "277b59ee28b27bd4e5e825b04d947e5f9c79589e75da2db8720fd4adb6396df2"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE / "go_cache"
    (buildpath / "src/github.com/simonmittag/pwt").install buildpath.children

    cd "src/github.com/simonmittag/pwt" do
      system "go", "install", "github.com/simonmittag/pwt"
      system "go", "install", "github.com/simonmittag/pwt/cmd/pwt"
      bin.install HOMEBREW_CACHE / "go_cache/bin/pwt"
    end
  end

  test do
    assert_match "v0.1.2", shell_output("pwt -v 2>&1")
  end
end
