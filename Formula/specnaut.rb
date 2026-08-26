class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.1.0/specnaut-macos-arm64"
      sha256 "d38fa5f60cdf98c205000c1e305accc8aa2e5b3bcb0c69df12b2901be2453d4c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.1.0/specnaut-macos-x64"
      sha256 "bfe373bb91f89859f80a57231cb39f4e4dba8ae3bf57d91a72ed67a770328e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.1.0/specnaut-linux-arm64"
      sha256 "787ba311aabdc48ab452df1c8198d2f4a58b28bf7a14a685eb07748c11999a64"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.1.0/specnaut-linux-x64"
      sha256 "8972f50c89f3501ad09abdff3b9679777dcbe2c18467cbd7cee6ba5540fe98ae"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
