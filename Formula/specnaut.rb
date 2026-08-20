class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.0/specnaut-macos-arm64"
      sha256 "c580202c7af080acaf29e521e442d39a5f58dded179a14428face9050b139158"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.0/specnaut-macos-x64"
      sha256 "4d15212025f8c605b056270a30de8987e38b3839472768b4b81f109e448d1332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.0/specnaut-linux-arm64"
      sha256 "288e0d05df5b1e769d073bee9610274c3d180fc14ebb172e0bd1efb03a9d9d81"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v2.0.0/specnaut-linux-x64"
      sha256 "8650bcc0ed96fb109f7291b2bb945b6cee88c870c007b78fe30b820ab99a6e16"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
