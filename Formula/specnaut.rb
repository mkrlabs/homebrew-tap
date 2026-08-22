class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.0/specnaut-macos-arm64"
      sha256 "b0c532f93196ebb21e5b0972b5851638c1fc00244e4c4460265e97d65cbd4336"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.0/specnaut-macos-x64"
      sha256 "9a843b3ed3d51da29bb5ec3a5942e37a59530118c3ee4a713666b97f6ed24a6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.0/specnaut-linux-arm64"
      sha256 "b5f3639a0a3dbbabf7d96fc5f7c76d14105617c160fb09fcb694402eb2be39f1"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.0/specnaut-linux-x64"
      sha256 "64906a7cbc62003174b40c093aadf26f95bde0d5b3d2241275f8693cfe43d51d"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
