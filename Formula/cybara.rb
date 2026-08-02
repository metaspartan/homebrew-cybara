class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2043"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/cybara-v1.0.2043-darwin-arm64-cli"; sha256 "896c796ac4c53a75715cbac74e15d6671619f5980ba707fccfbba540e2b62d6a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/cybara-v1.0.2043-darwin-x64-cli"; sha256 "927adc44a38e9879d79cef3b9ad810059335e9646fdb64fa8021f75807360381" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/cybara-v1.0.2043-linux-arm64-cli"; sha256 "5e2c5f1e4f7369842a829a881e2944ac609d4c48c04014ad8e9cf6dfce981d45" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/cybara-v1.0.2043-linux-x64-cli"; sha256 "fe369b8129929fdf05a88ea19ac3d437f86927b23fbb4199ce9199dfc85a0b13" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
