class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.3/specnaut-macos-arm64"
      sha256 "d5ba17781c551b3d21d93764fea8113d8e4f8e14f6fad7529453fd9f5ecdf197"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.3/specnaut-macos-x64"
      sha256 "2d1126321e0bda22694639cf21e88f3184ed02387b4ab426ae00d4d88248cd5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.3/specnaut-linux-arm64"
      sha256 "97457455d3cea29a361c6abeeb47910eaa31305bf462b0dde212b4ae51abb354"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.3/specnaut-linux-x64"
      sha256 "7e861f7862f3f55db9c7635a1b45f953a3ce703c059cb666afb69f30627fc972"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
