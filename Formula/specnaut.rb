class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.4/specnaut-macos-arm64"
      sha256 "29489b7e113eb7df14bcab6d39747ff32ef53eeb51416d08c490e02f7f9e3c78"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.4/specnaut-macos-x64"
      sha256 "78bb543b7efd6e99e6dd5e96c3133bf15cf62eece34adf0a207ab6fe90789f17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.4/specnaut-linux-arm64"
      sha256 "df3280dc7e7a520903e95462fb3c53f3683a52a71be490557083d22bac2d774f"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.4/specnaut-linux-x64"
      sha256 "3e4587924e81ed0429d99c715dcba401c677509f29a3029cb5b2154b01170bfd"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
