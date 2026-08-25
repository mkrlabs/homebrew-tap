class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.1/specnaut-macos-arm64"
      sha256 "e9dd758c8af87f60e3ddcedca9866feb9d99f4717279ae33f52fb4a644f3c3bb"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.1/specnaut-macos-x64"
      sha256 "7abf85df114d38aa3896490216d270cf08d0210b390979b4e88ce645fdfcca0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.1/specnaut-linux-arm64"
      sha256 "258b39c5974fd406278b73151952b0d7a96f877d7dc287fb86c6f0515cd91949"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.0.1/specnaut-linux-x64"
      sha256 "18ebf5155a0130f2fa6ea00330b15106a693c2be9909f57fe46d8e479fa68978"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
