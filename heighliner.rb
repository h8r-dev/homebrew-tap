# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heighliner < Formula
  desc "Heighliner is an application development platform with the state-of-the-art cloud native stacks"
  homepage "https://github.com/h8r-dev/heighliner"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_darwin_arm64.tar.gz"
      sha256 "a330664b786b92a7194c3dbc2fc6f3db7b9dd9c32b362082262ccfdf737fd89e"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_darwin_amd64.tar.gz"
      sha256 "2d62cec8c1d56e598041a8b5ce1b25dfd060e8e8321ee7ce892fb00801500ef5"

      def install
        bin.install "hln"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_linux_amd64.tar.gz"
      sha256 "942767dc86354a7d19f373a3bced3f03f4fd6ea232fb9fadc3535aef54da1e9a"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_linux_arm64.tar.gz"
      sha256 "4f5ed0b25b0438c9d095c34e6814a69cd4f1817da0ca0664e29a7393a74af4a1"

      def install
        bin.install "hln"
      end
    end
  end

  test do
    system "#{bin}/hln version"
  end
end
