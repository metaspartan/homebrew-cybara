class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1941"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/cybara-v1.0.1941-darwin-arm64-cli"; sha256 "15b1ddfdccc55391dc6531bd30d5c348480aa6c2eb54250bdfb29bd73f08c0ea" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/cybara-v1.0.1941-darwin-x64-cli"; sha256 "77f30b563b365d418c73a36f16cf6bcfef4a797624c7b55cf6bb01e4ebd08e0e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/cybara-v1.0.1941-linux-arm64-cli"; sha256 "4da3d941d39b74fe69e4ffab81bc46d9f7b001f06466f9038564347fe96dc07f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/cybara-v1.0.1941-linux-x64-cli"; sha256 "e1e79d383a2ea02cb44d7e0a5326b733b92697d713a471fab5322dc74c2d443a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
