class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1228"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/cybara-v1.0.1228-darwin-arm64-cli"; sha256 "c5bc771c8eb621abd03758a1d543ec41df6c960e15c1262ef63a9e08228204a6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/cybara-v1.0.1228-darwin-x64-cli"; sha256 "3aa66034b05cbf2b8c64ad4fd3eb52705b56dded9b48e3077e30ed232b8ea44e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/cybara-v1.0.1228-linux-arm64-cli"; sha256 "ad6371c2c242767233128412e555fcc0b3c345dd22d18c020386dc905285419f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/cybara-v1.0.1228-linux-x64-cli"; sha256 "85f79e1133b96cac54341a2a4e73c5d036485cb8427c594cd22e14743741ac52" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
