class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2051"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/cybara-v1.0.2051-darwin-arm64-cli"; sha256 "a65efdd25e4eae50eb5eac0554baf3f8df0d06e9c65ded3709f69d547474fea8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/cybara-v1.0.2051-darwin-x64-cli"; sha256 "5368bcf55ee1df14b119ef9508964e5f70738d9058e9012604e682a0dcc670df" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/cybara-v1.0.2051-linux-arm64-cli"; sha256 "951bd44aff30fb149b9dcfc1dc47c277b9e572bd99a221157e9377ab7f8e0f89" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/cybara-v1.0.2051-linux-x64-cli"; sha256 "acf43592bb379cb15847fee32b8e8b9eec69b899de1357eac9d5fa1bec04a211" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
