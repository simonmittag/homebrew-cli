# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class P0d < Formula
  desc ""
  homepage "https://github.com/simonmittag/p0d"
  version "0.4.0"

  on_macos do
    url "https://github.com/simonmittag/p0d/releases/download/v0.4.0/p0d_0.4.0_darwin_all.tar.gz"
    sha256 "be07147923dcdc4ef860bd4306db403eee4cf26677e5b6b4fc0f16a1b0a7dec6"

    def install
      bin.install "p0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/simonmittag/p0d/releases/download/v0.4.0/p0d_0.4.0_linux_arm64.tar.gz"
      sha256 "4a57c75caa2653c2ef46c6e8403a114f6bc9e72deaaf02af62ff178a3a5a3aec"

      def install
        bin.install "p0d"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/simonmittag/p0d/releases/download/v0.4.0/p0d_0.4.0_linux_amd64.tar.gz"
      sha256 "c6c4b891608b1dae7a8fdc6272a0975ab3ff400347db161aeb7ff02c1d461002"

      def install
        bin.install "p0d"
      end
    end
  end
end
