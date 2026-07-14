class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1521"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/cybara-v1.0.1521-darwin-arm64-cli"; sha256 "964677f03c6eaef47d6b35b382af5f31a251aa72f3367cb6de8ea93f46f2d375" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/cybara-v1.0.1521-darwin-x64-cli"; sha256 "9912cdcf5d5973e1be9c4bc0cf4acae7e11680b30079371ad0a9fd52b17d25d0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/cybara-v1.0.1521-linux-arm64-cli"; sha256 "470e8d5efa94e8b0c1a8d9d90ebc8c84e3a0bd1e3224256dc435cda9437ec150" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/cybara-v1.0.1521-linux-x64-cli"; sha256 "a40fbf8248a6047844f8d6e8d71ba2c445271e0e029394dc3122269f8c02bdc0" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
