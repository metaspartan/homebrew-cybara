class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1662"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/cybara-v1.0.1662-darwin-arm64-cli"; sha256 "5c9a73d251eb25f2cbed4ca62f9f3302ec8a26fafda4bcf09148ddb7f0c1039e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/cybara-v1.0.1662-darwin-x64-cli"; sha256 "5bdfc862fd2f60ace94c3a1215af51c1e23ffb2c4860bbcf38cb2bc771d841fc" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/cybara-v1.0.1662-linux-arm64-cli"; sha256 "a9baf9d66f8930d338d1c757e3ebe6417748a33a4c3141b6dc7e2dfec43d25c6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/cybara-v1.0.1662-linux-x64-cli"; sha256 "c658c02bbb680607d4018e834d43d22243334bb2daa840a6ecd3d027fff66d37" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
