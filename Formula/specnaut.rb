class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.2/specnaut-macos-arm64"
      sha256 "850a3aca4947db687d40f7d0aa7bca90df635f63aedcf4ad5198051a35f165b4"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.2/specnaut-macos-x64"
      sha256 "99a2d1813e3bd530f34e1258f5167e1a404d7126a502e28d7c169b7e067f2f6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.2/specnaut-linux-arm64"
      sha256 "61508928ff15f8542340e563689044c8828c56a157c796ee7c0baf28005ebe74"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.2/specnaut-linux-x64"
      sha256 "f68488f34b46a4cc441c792cd58ac96f385973528ddad6156604a8484e74eac0"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
