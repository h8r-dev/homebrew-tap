# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heighliner < Formula
  desc "Heighliner is an application development platform with the state-of-the-art cloud native stacks"
  homepage "https://github.com/h8r-dev/heighliner"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_darwin_amd64.tar.gz"
      sha256 "975a15f188e412f40dc89b84d8b247740c76243149ae6a664b6fd1120f7728fb"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3ba26b39041cfb734c819a0d5e07a227b5a58024e06622283a6f8e55f229b903"

      def install
        bin.install "hln"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_linux_amd64.tar.gz"
      sha256 "d73923026bbfa331f5276234c547c1374b3bfd14b12d98cfc4dd6370cacaa51a"

      def install
        bin.install "hln"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.h8r.io/hln/releases/0.1.0/heighliner_v0.1.0_linux_arm64.tar.gz"
      sha256 "7734b1c15d44caffd31f8d09da203f3716c0f46e30624ec62ff842d3cef8e4e9"

      def install
        bin.install "hln"
      end
    end
  end

  test do
    system "#{bin}/hln version"
  end
end
