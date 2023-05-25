# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Punycoder < Formula
  desc ""
  homepage "https://github.com/simonmittag/punycoder"
  version "0.2.1"

  on_macos do
    url "https://github.com/simonmittag/punycoder/releases/download/v0.2.1/punycoder_0.2.1_darwin_all.tar.gz"
    sha256 "5009f7d933243a7007f82e90b884156c73aa75dfc6c2688b78c8cda2c9eefdc0"

    def install
      bin.install "punycoder"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/simonmittag/punycoder/releases/download/v0.2.1/punycoder_0.2.1_linux_arm64.tar.gz"
      sha256 "e5e9499bb7a2e9649d3b32804bec0654750ed3b7a335c4861bbe7d0300adf069"

      def install
        bin.install "pwt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/simonmittag/punycoder/releases/download/v0.2.1/punycoder_0.2.1_linux_amd64.tar.gz"
      sha256 "49002bfde1c16f195c18dcbd6b7cf12cfc203c660f824b9d1bfd25eb5281b460"

      def install
        bin.install "pwt"
      end
    end
  end
end
