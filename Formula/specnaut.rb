class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.1/specnaut-macos-arm64"
      sha256 "b83194541ab453e094416107a025de133c3bbd16db1ad4bbd3a36d5e4119c040"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.1/specnaut-macos-x64"
      sha256 "9025580180a23ab9b05e4bc8610db08807a5e12b6f81d3e162a8574ab1f3a391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.1/specnaut-linux-arm64"
      sha256 "2dc1c4c3edaf9a0364b0395f5510cb203a34164d1b84af8f215abd37b9667029"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.2.1/specnaut-linux-x64"
      sha256 "6a8b0e3929049b344f037afa84985f7602cd7bfd889741eff5fbb91a82c3e1b7"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
