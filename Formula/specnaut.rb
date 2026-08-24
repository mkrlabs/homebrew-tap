class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.0/specnaut-macos-arm64"
      sha256 "78f5892d5fc0120e78960153f9b326bdaf65bb13260248bc510ea29619030ee1"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.0/specnaut-macos-x64"
      sha256 "95715b7ff9009bd361a71f8bfe487210313af02afdd6ecd81930be0c117f7184"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.0/specnaut-linux-arm64"
      sha256 "96dbb804ab720d14aead33a678a23591574c1ace36f096a6cf3897469f8657ff"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.0/specnaut-linux-x64"
      sha256 "9796abc4879eacdf1aa612bd6724f43e8149efd5fc8a02fa9b514c5acd9da4cc"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
