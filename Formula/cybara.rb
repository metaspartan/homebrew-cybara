class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1716"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/cybara-v1.0.1716-darwin-arm64-cli"; sha256 "028fa2ee99af71330849eaefeb37834fb56c9e9d1920f2567c82955123bd8f4f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/cybara-v1.0.1716-darwin-x64-cli"; sha256 "71c9d4e3b4903c6e8975fc63fa111a5ef617b103fe77fe70f5890f32a013e73c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/cybara-v1.0.1716-linux-arm64-cli"; sha256 "2b85ba3a4c0b580dbe273126c72d439b347c9df13d9fcdd2ad6a1f8a20861c38" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/cybara-v1.0.1716-linux-x64-cli"; sha256 "5e2d084023b0af0c9f34e8927eb70a0df9f612136345afee53d8ff9d60aa059e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
