class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.0/specnaut-macos-arm64"
      sha256 "a6e36ece41e1f363064b33ca6da1fbe4fb0d3ed437c7e3adb16746249029a128"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.0/specnaut-macos-x64"
      sha256 "f5608396719eb04e444a3577772de595ce4e2ea497253bd9a5d78ad8926e47be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.0/specnaut-linux-arm64"
      sha256 "d71c0247b0327363bf35186a2c20c20a54bd0a04a3fa079b10645ce6c96c4e6e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.0/specnaut-linux-x64"
      sha256 "58eb005e92976e4e71c40f35905d5d2ef5d6be623bdafea25b4e9c6c33bd6009"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
