# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heighliner < Formula
  desc "Heighliner is an application development platform with the state-of-the-art cloud native stacks"
  homepage "https://github.com/h8r-dev/heighliner"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.3.6/heighliner_v0.3.6_darwin_amd64.tar.gz"
      sha256 "0efcbfc2145c4eec9a7f9d8f2f9b887a030e7a3d9aed40b25e73c3f475131979"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.h8r.io/hln/releases/0.3.6/heighliner_v0.3.6_darwin_arm64.tar.gz"
      sha256 "301687735d4d8f7e0ceb431e049366b021932a75fe908b21dd9aff0b75d187a5"

      def install
        bin.install "hln"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.h8r.io/hln/releases/0.3.6/heighliner_v0.3.6_linux_arm64.tar.gz"
      sha256 "c31d239f3321a26cff718a91337b5c9e5177759841dc66985eb7658914b0ff54"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.3.6/heighliner_v0.3.6_linux_amd64.tar.gz"
      sha256 "b7a70a5af985ffdc11b4ee7213f9925ee3b80e382e46412ba29552613461f1ac"

      def install
        bin.install "hln"
      end
    end
  end

  test do
    system "#{bin}/hln version"
  end
end
