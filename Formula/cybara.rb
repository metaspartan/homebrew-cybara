class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2175"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/cybara-v1.0.2175-darwin-arm64-cli"; sha256 "919b2bdb70a6bf8e4d8fbfd970045c9d5d9c30c580001d636d746fc472fb4fea" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/cybara-v1.0.2175-darwin-x64-cli"; sha256 "bb5aae6fff28fd0819ec8264a5546c4bc0e53ec08923b7595209c9ac4a0e651d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/cybara-v1.0.2175-linux-arm64-cli"; sha256 "949021cfc831262c647ad960af740eaf8ba7d863b5f85c33fbadbac4431e9325" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/cybara-v1.0.2175-linux-x64-cli"; sha256 "d291e35c97f2fd0b5807d32b396fdf889234e6e10be6bd55f0279d5c248aebf3" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
