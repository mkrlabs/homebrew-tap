class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.1/specnaut-macos-arm64"
      sha256 "db8d2c21d3cd5579753d809c4fc7ea07a7b875a02c13ba95a02535efd7d300c9"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.1/specnaut-macos-x64"
      sha256 "ad5a81c55b0d675730d58b39050d9c04237820ea6076f43d336f8e09b085b99f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.1/specnaut-linux-arm64"
      sha256 "fd39510cea7531a7d9ed5e73994c21f85c875fddfea93c5c9a4212cf2b572147"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.1/specnaut-linux-x64"
      sha256 "9fc38c7c675ffc313ad1005b719cd2681cf9a217bf96874b4cfe9ea91cb933b4"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
