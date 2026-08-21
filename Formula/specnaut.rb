class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.0/specnaut-macos-arm64"
      sha256 "b3dfaac8e18eaaf0c52caa03ab09457faa4ac875c0d5360b4635bcaeb52cca2b"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.0/specnaut-macos-x64"
      sha256 "ff2e878b35b7ad32334d892c36b3955065aaa16e4c88d2f31a529a2b1bfce4d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.0/specnaut-linux-arm64"
      sha256 "089c6c7c893ff3e2c3208dc395ff8f7ba1700ce8263107bf15417bbfdcd540f5"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.0.0/specnaut-linux-x64"
      sha256 "6166f35163d0a03add965525a968b09cad5c9c95b532b20146a8fc890c65abaa"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
