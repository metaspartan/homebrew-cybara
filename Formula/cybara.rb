class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1412"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/cybara-v1.0.1412-darwin-arm64-cli"; sha256 "3ba0c8d5b5abc402de94bb2ceb750bd2731ec9d0d033258d2fc3b005887dc2b3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/cybara-v1.0.1412-darwin-x64-cli"; sha256 "a89519e940e03b162d029257fa3bf446868045ef5e8b0496219b017ff6f41d66" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/cybara-v1.0.1412-linux-arm64-cli"; sha256 "2c20f7300d149dda28d80c2877c8ea462ffec5a8021364bf75ae3ddc07ee5f29" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/cybara-v1.0.1412-linux-x64-cli"; sha256 "8c64fbd04d60943dc4195fcdc24036c5462a2702bd654b161549711f18cc2333" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
