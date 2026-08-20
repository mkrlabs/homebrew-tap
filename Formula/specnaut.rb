class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.1/specnaut-macos-arm64"
      sha256 "3ad608988af5da06e0698c5b12f83f025c842b382c89376a8a8e0d5c9a6eb22a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.1/specnaut-macos-x64"
      sha256 "b834ac279f21a9fe5a0e16fa8b02a000b3d6b3e450ce789386bf2e44c540d039"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.1/specnaut-linux-arm64"
      sha256 "348d5712e0f893a066a0578dd42d12269953513d37fc28201a7b962072fea401"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.1/specnaut-linux-x64"
      sha256 "b0a03b9373453e26c94f35025755575d7643d63e0bf7dfa407f9b9ea9e4bf004"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
