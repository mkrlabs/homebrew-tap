class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.2.0/specnaut-macos-arm64"
      sha256 "b39b3488644e1f76e33bbefd180860f0af6bb3642339ecc69729621da106fd1e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.2.0/specnaut-macos-x64"
      sha256 "e5b800fe3205f50e1b0aaed67d46b4b148d8b4d2b76c0d1e86d7c1a660627e03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.2.0/specnaut-linux-arm64"
      sha256 "9ae557d0298742a6e584f512a7827d0ae7a7877064a7a53248b5948d9538e26f"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.2.0/specnaut-linux-x64"
      sha256 "1cd587e0a91005120cf3bf5dba6187115dfeddfba3ee75541b4a9dbfd1c114a5"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
