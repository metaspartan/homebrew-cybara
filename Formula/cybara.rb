class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1244"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/cybara-v1.0.1244-darwin-arm64-cli"; sha256 "8bc90bed7bc5e9730236b4fa9095fcd12542821963c31ad8c1b7cc1e77435051" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/cybara-v1.0.1244-darwin-x64-cli"; sha256 "ca8cba23d8eb54bb5d75f7983b16ed4fbe145b6f665cfe7ddd9ba106b5f4d9e8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/cybara-v1.0.1244-linux-arm64-cli"; sha256 "ba3ed81cadb4280245ad60391d06cd6f2c350163b04a6501d0c6f38eb2696f0d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/cybara-v1.0.1244-linux-x64-cli"; sha256 "5486e83bd42196d42f537230f130bb430d9f0d67cc8fce7bf33298b2e94fd2bf" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
