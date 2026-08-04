class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.20.0/specnaut-macos-arm64"
      sha256 "d462b2fb0826c007c9fbd2a7c92acb2b1b9bf89097bb817756fd8bfb5a03768c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.20.0/specnaut-macos-x64"
      sha256 "82bde5cb1b693dd79d403c0bb6d0e1296e6ac35320843265036e5d3dac8b19e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.20.0/specnaut-linux-arm64"
      sha256 "b4f5aed65ce49fd976da750a67483d2e55033200b50f4edd9c3e5bbc00210155"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.20.0/specnaut-linux-x64"
      sha256 "a8e693b52718fd373eb3fc81187c352c63fc5b5190047bdd107c36ebce56f171"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
