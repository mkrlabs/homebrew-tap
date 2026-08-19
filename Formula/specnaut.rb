class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.21.0/specnaut-macos-arm64"
      sha256 "da1219672b7375cf00b75fce5ddc4432d75a33e5338ce52c6acda7251dc35401"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.21.0/specnaut-macos-x64"
      sha256 "055392d61dfc41c84f08ee9e6d5e561a6546ea5e16eb9842a2e1e5884fe2362d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.21.0/specnaut-linux-arm64"
      sha256 "ba7fd70d98b93e69131ed0ee9f24c74200b4c625f3f366e67edbe80bd9968b77"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.21.0/specnaut-linux-x64"
      sha256 "4a0b0caf095ca86a1b36a61c1a938acc03faaa630c7794d64f71bfb73e6b8fc9"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
