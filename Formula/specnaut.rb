class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.5/specnaut-macos-arm64"
      sha256 "9e3b2f126f148ad44a042f4f62311b49a067c536ea1dc80cf13b4b1c094fad53"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.5/specnaut-macos-x64"
      sha256 "85513fac02cbc7bbe3954239b95291bfc65f35505aa97ee94ffad22519077e8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.5/specnaut-linux-arm64"
      sha256 "3211228dc2adf7166ee7e8acb0240b107ed1f652dae849c0da153e929e47c7bc"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.5/specnaut-linux-x64"
      sha256 "e7ae8263aba2214b10ab9079d2844150d7069211a8e09f22057942fc08951230"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
