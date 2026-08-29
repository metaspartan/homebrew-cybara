class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2220"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/cybara-v1.0.2220-darwin-arm64-cli"; sha256 "ecb477508c914cd2a057e4dde0cfc27fdd924ba120cc08314235d4cd817af90b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/cybara-v1.0.2220-darwin-x64-cli"; sha256 "cb6eca7c1d200b709292497c2d17df8e630d2fa19d1e5f8a1ead89ccfdcfe9ae" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/cybara-v1.0.2220-linux-arm64-cli"; sha256 "4e2032e600d370375d4f81e5f58f45ac1acd84ae173e25768043e9c9b58a8574" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/cybara-v1.0.2220-linux-x64-cli"; sha256 "68d08cc7d288c95fbb29c7e14385108550150837f13d44e9756403cace72d640" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
