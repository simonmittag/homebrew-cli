# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class J8a < Formula
  desc ""
  homepage "https://github.com/simonmittag/j8a"
  version "0.9.2"

  on_macos do
    url "https://github.com/simonmittag/j8a/releases/download/v0.9.2/j8a_0.9.2_darwin_all.tar.gz"
    sha256 "fca2c7c59fced496462b1d295a648b5b4b128e82f8dddb0e32bde6436eca77e3"

    def install
      bin.install "j8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/simonmittag/j8a/releases/download/v0.9.2/j8a_0.9.2_linux_arm64.tar.gz"
      sha256 "b33a50d59e28f8270eda5ed77d404ac897e606a9107bffd6ed805b118bd91aad"

      def install
        bin.install "j8a"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/simonmittag/j8a/releases/download/v0.9.2/j8a_0.9.2_linux_amd64.tar.gz"
      sha256 "d7f2640bd6f1baeea97b2534b6708f321cd7901d238c0eac46a1a8e99fab35df"

      def install
        bin.install "j8a"
      end
    end
  end
end
