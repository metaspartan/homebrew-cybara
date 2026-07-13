class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1452"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/cybara-v1.0.1452-darwin-arm64-cli"; sha256 "c7374cb16184187d62a647aa777064e0215006eb50bef863678912ed9663b140" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/cybara-v1.0.1452-darwin-x64-cli"; sha256 "726d03192cb5c45f6c757fe39b69b365f546e5ee08788d7eae7aad7f614ea3f5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/cybara-v1.0.1452-linux-arm64-cli"; sha256 "e5fd5c8e5bab83596de5735f74743a82c998f48d0491ff05cb54f49c726187a3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/cybara-v1.0.1452-linux-x64-cli"; sha256 "d8689473459ce2f919fa82ec858a9c7a7e55acec34b1f50b029ae51da20acee6" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
