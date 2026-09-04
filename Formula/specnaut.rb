class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.2/specnaut-macos-arm64"
      sha256 "58ca2242149d376c68879dfaa32ba5b26d0d61b8d15ee78f190c4343b7935d33"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.2/specnaut-macos-x64"
      sha256 "6499793bd5fb5dfbb59b221156b229f731861c08f27d951166cd53deb162bfb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.2/specnaut-linux-arm64"
      sha256 "e728030ec1344224d91ecc200e6f3b6ed7a4e395413a30e117d9df5c097eb146"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.2/specnaut-linux-x64"
      sha256 "31d94b5b493934f5be630ff2849afcbe77f63775d1e997ad6d7139336028fed4"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
