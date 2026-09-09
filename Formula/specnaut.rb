class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.6/specnaut-macos-arm64"
      sha256 "5935ffbe2c004bac8d40cc3bd2d84e3ca13f35ff3ef6b2ff92dbc5f9dfe2272b"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.6/specnaut-macos-x64"
      sha256 "d1029cda37e188e2bfc62a802beff6681596701f2ff979d6207ebe9034a677b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.6/specnaut-linux-arm64"
      sha256 "7b1c379ed2fbf84d42b12be2181576c506ef9bf307110583d96e4c72def49a3a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.6/specnaut-linux-x64"
      sha256 "1c752204d228974d2ab0e8a3031fd0f7001b242b54488e92b3697b92fbbb23ca"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
