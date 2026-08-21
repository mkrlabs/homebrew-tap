class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.1.0/specnaut-macos-arm64"
      sha256 "731d3eadd88da53fe152433bc0d5e1d8790f91ee2d4962d8e1cb6a850fa883f4"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.1.0/specnaut-macos-x64"
      sha256 "0524341da5c32ce47fbd02f11f5f3ce46cead1e11288ddfb3d3cf145b11581ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.1.0/specnaut-linux-arm64"
      sha256 "f3529cd2b61fb19e64c83b31ded875fc23a0c2a01c1727ac0358b77186280316"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.1.0/specnaut-linux-x64"
      sha256 "d2d332167cf759f8f2f6b756ffb454da08bef1d6fc3bf14dc4b7eb1ab3ff41b0"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
