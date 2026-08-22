class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.1/specnaut-macos-arm64"
      sha256 "531751688cd79f9f8bbd7c956e71cb09cdeecfc39f3418b12df5e54675569da3"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.1/specnaut-macos-x64"
      sha256 "7c2ceddf0de1d2b8941d59ded3723ce32fa24b9464cdf7e9cec4e0788bead39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.1/specnaut-linux-arm64"
      sha256 "d9e22c5b3f9910aef2380dbe2c205ba1630bf896b7d35cba5b17da5389a36d77"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v3.1.1/specnaut-linux-x64"
      sha256 "0218a196fa116172ad65e9b078bbf7b8e4466dd2194a4857139cb033a6c53640"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
