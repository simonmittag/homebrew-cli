class Mse6AT013 < Formula
    desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
    homepage "https://github.com/simonmittag/mse6"
    url "https://github.com/simonmittag/mse6/archive/v0.1.2.tar.gz"
    sha256 "3edb3e8fc8c045d90855e61e4715f26827c348e4a3f2debfbd363a133c0ad1a1"
  
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
      assert_match "pass", shell_output("mse6 -test 2>&1")
    end
  end
  