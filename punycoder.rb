# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Punycoder < Formula
  desc ""
  homepage "https://github.com/simonmittag/punycoder"
  version "0.0.10"

  on_macos do
    url "https://github.com/simonmittag/punycoder/releases/download/v0.0.10/punycoder_0.0.10_darwin_all.tar.gz"
    sha256 "f3ae707f6d8b0be5d86a3a0786b9a5d94db122e11579ba9746ca59c934d32555"

    def install
      bin.install "punycoder"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/simonmittag/punycoder/releases/download/v0.0.10/punycoder_0.0.10_linux_amd64.tar.gz"
      sha256 "6af5a9e43c396ebab91c7099417d3f153edf157a144fc50c248ca432461844c9"

      def install
        bin.install "pwt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/simonmittag/punycoder/releases/download/v0.0.10/punycoder_0.0.10_linux_arm64.tar.gz"
      sha256 "000740766726933e9ff21937cbe64ea2eeaea1cf2000207cee29535ebb4a1d9b"

      def install
        bin.install "pwt"
      end
    end
  end
end
