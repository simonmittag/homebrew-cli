# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Puri < Formula
  desc ""
  homepage "https://github.com/simonmittag/puri"
  version "0.1.8"

  on_macos do
    url "https://github.com/simonmittag/puri/releases/download/v0.1.8/puri_0.1.8_darwin_all.tar.gz"
    sha256 "0924881da2b0ad874cb10e8f3280c0166bcad65a09f8e86f7ec37c83d9ed9e08"

    def install
      bin.install "puri"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/simonmittag/puri/releases/download/v0.1.8/puri_0.1.8_linux_amd64.tar.gz"
      sha256 "8ff662471e5ae59dd9ab3219df0c08716eb2392ef99d06f70a501119d0aabd1a"

      def install
        bin.install "puri"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/simonmittag/puri/releases/download/v0.1.8/puri_0.1.8_linux_arm64.tar.gz"
      sha256 "2793766b9294dc36cabddb5d4800a6813576a8b115c0a3a2068f0ce31a0a04da"

      def install
        bin.install "puri"
      end
    end
  end
end