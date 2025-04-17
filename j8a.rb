# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class J8a < Formula
  desc ""
  homepage "https://github.com/simonmittag/j8a"
  version "1.1.2"

  on_macos do
    url "https://github.com/simonmittag/j8a/releases/download/v1.1.2/j8a_1.1.2_darwin_all.tar.gz"
    sha256 "d126c08e63001e74fffc98226890a68a48532a9db2fdcdcdd69337b1d6b99eba"

    def install
      bin.install "j8a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/simonmittag/j8a/releases/download/v1.1.2/j8a_1.1.2_linux_amd64.tar.gz"
        sha256 "dafc97cdec82c3d17d54ad4c317b9c1223781eb6f7924100190d9665d7751530"

        def install
          bin.install "j8a"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/simonmittag/j8a/releases/download/v1.1.2/j8a_1.1.2_linux_arm64.tar.gz"
        sha256 "d8956b7d3f34ca34952b27aafaa15bc77c59d8ef9490eacb276ef2a465d97f26"

        def install
          bin.install "j8a"
        end
      end
    end
  end
end
