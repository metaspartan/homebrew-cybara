class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2092"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/cybara-v1.0.2092-darwin-arm64-cli"; sha256 "7180e94394d783fb053f42a8993a577c0e042d5418033ae72885650bd88187da" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/cybara-v1.0.2092-darwin-x64-cli"; sha256 "4fc6dd5c23cbeedfd706b5e281f9e510c622b52b2ec554bed3f4acdf1355885e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/cybara-v1.0.2092-linux-arm64-cli"; sha256 "811f9e2db56ad3c6561463b4c162fecc1afbeaad6f709387d7b3cd16abc0afc9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/cybara-v1.0.2092-linux-x64-cli"; sha256 "c4a85c9b8ecd3b5472a90da175c399f408c47838e924438aead3bee723544111" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
