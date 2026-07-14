class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1513"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/cybara-v1.0.1513-darwin-arm64-cli"; sha256 "3df4ec2fbe76f5e566f0ca1742f4ec8d07a76de5f644000447885ef30d570c1f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/cybara-v1.0.1513-darwin-x64-cli"; sha256 "5890681ebc7c7e1f541b4d45973691757bcd5369cc0a790bdf0278c20632e37c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/cybara-v1.0.1513-linux-arm64-cli"; sha256 "a039c67fdd4959161d6756fe7e07a3f43fa033286869374ad8ca3cf7b66ff9e4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/cybara-v1.0.1513-linux-x64-cli"; sha256 "ae82857a2afd1f2273edcea836fc0433a55d16b32175e05d882617b1b1287408" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
