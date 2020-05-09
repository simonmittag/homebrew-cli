class Mse6AT011 < Formula
    desc "HTTP/1.1 server implementing mock responses for testing of edge cases"
    homepage "https://github.com/simonmittag/mse6"
    url "https://github.com/simonmittag/mse6/archive/v0.1.1.tar.gz"
    sha256 "f11c82334ea74a4efc22dd59f48d5566deba0f4510e0ec9f684ca6796ee01694"
  
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
  