class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1212"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/cybara-v1.0.1212-darwin-arm64-cli"; sha256 "229447a2ff7f8cc592d534093ba819d232de5b371e6f96343f1465f6280cf646" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/cybara-v1.0.1212-darwin-x64-cli"; sha256 "1ad7a226a1b38002e71b5bf79d12a9c6a6456742d54f9c3aaea770b66f192e1e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/cybara-v1.0.1212-linux-arm64-cli"; sha256 "e34c92e125d8c4669259c5ce76c56c6c219df702021113c4d3749ed60d73b879" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/cybara-v1.0.1212-linux-x64-cli"; sha256 "d2cd7bc240059270d927165e6ce54fb3b9f4110dc1b6ddd20cea4f932bc2e86d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
